/*
###############################################################################
# If you use PhysiCell in your project, please cite PhysiCell and the version #
# number, such as below:                                                      #
#                                                                             #
# We implemented and solved the model using PhysiCell (Version x.y.z) [1].    #
#                                                                             #
# [1] A Ghaffarizadeh, R Heiland, SH Friedman, SM Mumenthaler, and P Macklin, #
#     PhysiCell: an Open Source Physics-Based Cell Simulator for Multicellu-  #
#     lar Systems, PLoS Comput. Biol. 14(2): e1005991, 2018                   #
#     DOI: 10.1371/journal.pcbi.1005991                                       #
#                                                                             #
# See VERSION.txt or call get_PhysiCell_version() to get the current version  #
#     x.y.z. Call display_citations() to get detailed information on all cite-#
#     able software used in your PhysiCell application.                       #
#                                                                             #
# Because PhysiCell extensively uses BioFVM, we suggest you also cite BioFVM  #
#     as below:                                                               #
#                                                                             #
# We implemented and solved the model using PhysiCell (Version x.y.z) [1],    #
# with BioFVM [2] to solve the transport equations.                           #
#                                                                             #
# [1] A Ghaffarizadeh, R Heiland, SH Friedman, SM Mumenthaler, and P Macklin, #
#     PhysiCell: an Open Source Physics-Based Cell Simulator for Multicellu-  #
#     lar Systems, PLoS Comput. Biol. 14(2): e1005991, 2018                   #
#     DOI: 10.1371/journal.pcbi.1005991                                       #
#                                                                             #
# [2] A Ghaffarizadeh, SH Friedman, and P Macklin, BioFVM: an efficient para- #
#     llelized diffusive transport solver for 3-D biological simulations,     #
#     Bioinformatics 32(8): 1256-8, 2016. DOI: 10.1093/bioinformatics/btv730  #
#                                                                             #
###############################################################################
#                                                                             #
# BSD 3-Clause License (see https://opensource.org/licenses/BSD-3-Clause)     #
#                                                                             #
# Copyright (c) 2015-2018, Paul Macklin and the PhysiCell Project             #
# All rights reserved.                                                        #
#                                                                             #
# Redistribution and use in source and binary forms, with or without          #
# modification, are permitted provided that the following conditions are met: #
#                                                                             #
# 1. Redistributions of source code must retain the above copyright notice,   #
# this list of conditions and the following disclaimer.                       #
#                                                                             #
# 2. Redistributions in binary form must reproduce the above copyright        #
# notice, this list of conditions and the following disclaimer in the         #
# documentation and/or other materials provided with the distribution.        #
#                                                                             #
# 3. Neither the name of the copyright holder nor the names of its            #
# contributors may be used to endorse or promote products derived from this   #
# software without specific prior written permission.                         #
#                                                                             #
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" #
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE   #
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE  #
# ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE   #
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR         #
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF        #
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS    #
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN     #
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)     #
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE  #
# POSSIBILITY OF SUCH DAMAGE.                                                 #
#                                                                             #
###############################################################################
*/

#include "./custom.h"
#include "../BioFVM/BioFVM.h"  
using namespace BioFVM;


#include "rrc_api.h"
#include "rrc_types.h"
// #include "rrc_utilities.h"
extern "C" rrc::RRHandle createRRInstance();

void create_cell_types( void )
{
	// set the random seed 
	SeedRandom( parameters.ints("random_seed") );  
	
	/* 
	   Put any modifications to default cell definition here if you 
	   want to have "inherited" by other cell types. 
	   
	   This is a good place to set default functions. 
	*/ 
	
	initialize_default_cell_definition(); 
	cell_defaults.phenotype.secretion.sync_to_microenvironment( &microenvironment ); 
	
	cell_defaults.functions.volume_update_function = standard_volume_update_function;
	cell_defaults.functions.update_velocity = standard_update_cell_velocity;

	cell_defaults.functions.update_migration_bias = NULL; 
	cell_defaults.functions.update_phenotype = NULL; // update_cell_and_death_parameters_O2_based; 
	cell_defaults.functions.custom_cell_rule = NULL; 
	
	cell_defaults.functions.add_cell_basement_membrane_interactions = NULL; 
	cell_defaults.functions.calculate_distance_to_membrane = NULL; 
	
	/*
	   This parses the cell definitions in the XML config file. 
	*/
	
	initialize_cell_definitions_from_pugixml(); 

	build_cell_definitions_maps(); 
	display_cell_definitions( std::cout ); 
    setup_signal_behavior_dictionaries(); 
    
    
	return; 
}

void setup_microenvironment( void )
{
	// set domain parameters 
	
	// put any custom code to set non-homogeneous initial conditions or 
	// extra Dirichlet nodes here. 
	
	// initialize BioFVM 
	
	initialize_microenvironment(); 	
	
	return; 
}

void setup_tissue( void )
{

    static int oxygen_substrate_index = microenvironment.find_density_index( "oxygen" );
    static int glucose_substrate_index = microenvironment.find_density_index( "glucose" ); 
    static int lactate_substrate_index = microenvironment.find_density_index( "lactate");
    
    
	double Xmin = microenvironment.mesh.bounding_box[0]; 
	double Ymin = microenvironment.mesh.bounding_box[1]; 
	double Zmin = microenvironment.mesh.bounding_box[2]; 

	double Xmax = microenvironment.mesh.bounding_box[3]; 
	double Ymax = microenvironment.mesh.bounding_box[4]; 
	double Zmax = microenvironment.mesh.bounding_box[5]; 
	
	if( default_microenvironment_options.simulate_2D == true )
	{
		Zmin = 0.0; 
		Zmax = 0.0; 
	}
	
	double Xrange = Xmax - Xmin; 
	double Yrange = Ymax - Ymin; 
	double Zrange = Zmax - Zmin; 
	
	// create cells 
    
	Cell* pCell;
	
	double cell_radius = cell_defaults.phenotype.geometry.radius; 
	double cell_spacing = 0.8 * 2.0 * cell_radius; 
	double initial_tissue_radius = 10;
    double retval;

	std::vector<std::vector<double>> positions = create_cell_circle_positions(cell_radius,initial_tissue_radius);
    
    std::cout << "NUMBER OF TARGET CELLS : " << positions.size() << " __________" << std::endl;
    for( int i=0; i < positions.size(); i++ )
    {
        pCell = create_cell(get_cell_definition("target")); 
        pCell->assign_position( positions[i] );
       
        double cell_volume = pCell->phenotype.volume.total;
        
        pCell->phenotype.intracellular->start();
        
        double receptor_level = 160 + (240 - 160) * UniformRandom(); // Furkan to fix it. It should read custom data named "receptor"
        pCell->phenotype.intracellular->set_parameter_value("R",receptor_level);
        pCell->phenotype.intracellular->set_parameter_value("L",get_single_signal( pCell, "ligand"));
    }
    
    pCell = create_cell(get_cell_definition("NK"));
    pCell-> assign_position({50,50,0});
    

	return; 
}

void update_intracellular()
{
    // BioFVM Indices
    static int oxygen_substrate_index = microenvironment.find_density_index( "oxygen" );
    static int glucose_substrate_index = microenvironment.find_density_index( "glucose" ); 
    static int lactate_substrate_index = microenvironment.find_density_index( "lactate");

    #pragma omp parallel for 
    for( int i=0; i < (*all_cells).size(); i++ )
    {
        if ((*all_cells)[i]->type == 0)
        {
            if( (*all_cells)[i]->is_out_of_domain == false  )
            {
                
                //(*all_cells)[i]->phenotype.intracellular->set_parameter_value("L",get_single_signal( (*all_cells)[i], "ligand"));
                // SBML Simulation
                (*all_cells)[i]->phenotype.intracellular->update();
                
                // Phenotype Simulation
                (*all_cells)[i]->phenotype.intracellular->update_phenotype_parameters((*all_cells)[i]->phenotype);
                
                
                
                double ligand = (*all_cells)[i]->phenotype.intracellular->get_parameter_value("ligand");
                //double p_Apoptosis_A = (*all_cells)[i]->phenotype.intracellular->get_parameter_value("p_Apoptosis_A");
                
               
                std::cout << ligand << std::endl;
                /* if ( apop_flag > 0.0 )
                {
                    Cell* pCell;
                    double number_of_debris = 5;
                    double cell_x = (*all_cells)[i]->position[0];
                    double cell_y = (*all_cells)[i]->position[1];
                    double cell_z = (*all_cells)[i]->position[2];
                    
                    for( int k=0; k < number_of_debris; k++ )
                    {
                       // (*all_cells)[i].positions[0]
                       Cell* pCell;
                       pCell = create_cell(get_cell_definition("debris"));
                       pCell-> assign_position({cell_x,cell_y,cell_z});
                       
                    }
                    delete_cell((*all_cells)[i]);
                } */
                //std::cout << (*all_cells)[i]->phenotype.intracellular->get_parameter_value("R") << std::endl;
                //double apoptosome_level = (*all_cells)[i]->phenotype.intracellular->get_parameter_value("Apop");
                /* if (apoptosome_level > 35000)
                {
                    //std::cout << "Apoptosome level = " << apoptosome_level << std::endl;
                    //std::cout << "Simulation Wall time = " << PhysiCell_globals.current_time << std::endl;
                }    */     
                // Internalized Chemical Update After SBML Simulation
                
                //std::cout << "Flag : " <<(*all_cells)[i]->phenotype.intracellular->get_parameter_value("apoptosis_flag") << std::endl;
            }
        }
    }
    
}



std::vector<std::string> my_coloring_function( Cell* pCell )
{
	

    // start with flow cytometry coloring 
	std::vector<std::string> output = false_cell_coloring_cytometry(pCell); 
	
	// color

	if( pCell->phenotype.death.dead == false && pCell->type == 0)
	{
		output[0] = "rgb(255,255,0)";
		output[2] = "rgb(125,125,0)";
	}

	if( pCell->phenotype.death.dead == false && pCell->type == 1)
	{
		output[0] = "rgb(0,255,0)";
		output[2] = "rgb(0,125,0)";
	}     
    
    
    if( pCell->phenotype.death.dead == false && pCell->type == 2)
	{
		output[0] = "rgb(0,255,255)";
		output[2] = "rgb(0,125,125)";
	}     
    
    // dead cell
	if( pCell->phenotype.death.dead == true && pCell->type == 0)
	{
		output[0] = "rgb(20,20,20)";
		output[2] = "rgb(10,10,10)";
	}  
	
	return output; 
}



std::vector<std::vector<double>> create_cell_circle_positions(double cell_radius, double sphere_radius)
{
	std::vector<std::vector<double>> cells;
	int xc=0,yc=0,zc=0;
	double x_spacing= cell_radius*sqrt(3);
	double y_spacing= cell_radius*sqrt(3);

	std::vector<double> tempPoint(3,0.0);
	
	for(double x=-sphere_radius;x<sphere_radius;x+=x_spacing, xc++)
	{
		for(double y=-sphere_radius;y<sphere_radius;y+=y_spacing, yc++)
		{
			tempPoint[1]=y + (xc%2) * cell_radius;
			tempPoint[0]=x;
			tempPoint[2]=0;
			if(sqrt(norm_squared(tempPoint))< sphere_radius)
			{ cells.push_back(tempPoint); }
		}
	}
	return cells;
}
