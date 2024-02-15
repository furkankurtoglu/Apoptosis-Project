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
	double initial_tissue_radius = 50;


	std::vector<std::vector<double>> positions = create_cell_circle_positions(cell_radius,initial_tissue_radius);
    
    std::cout << "NUMBER OF TARGET CELLS : " << positions.size() << " __________" << std::endl;
    for( int i=0; i < positions.size(); i++ )
    {
        pCell = create_cell(get_cell_definition("cancer cell")); // Create Cell
        pCell->assign_position( positions[i] ); // Assign position to created cell
        
        pCell->phenotype.intracellular->start(); //Read SBML and add into cell
        
        double receptor_level = NormalRandom(200,20); // Randomly define receptor value (Normal Dist)                          Furkan to fix it. It should be normal distribution
        pCell->phenotype.intracellular->set_parameter_value("R",receptor_level); // Set Receptor Value in SBML for cell
        pCell->phenotype.intracellular->set_parameter_value("L",get_single_signal( pCell, "ligand")); // Get Ligand from microenvironment then assign into SBML
        
        
        set_single_behavior( pCell , "custom:ligand" , get_single_signal( pCell, "ligand") );  // Define Custom Data for ligand based on ligand in microenvironment
        set_single_behavior( pCell , "custom:receptor" , receptor_level );  // Define Custom Data for receptor
    }
    
    //pCell = create_cell(get_cell_definition("NK"));
    //pCell-> assign_position({50,50,0});
    

	return; 
}

void update_intracellular()
{
    Cell* pCell;
    
    int apoptosis_model_index = cell_defaults.phenotype.death.find_death_model_index( "Apoptosis" );
    double cell_radius = cell_defaults.phenotype.geometry.radius; 
	double cell_spacing = 0.8 * 2.0 * cell_radius; 
	double initial_tissue_radius = 20; 
    std::vector<std::vector<double>> positions = create_cell_circle_positions(cell_radius,initial_tissue_radius);
    
    #pragma omp parallel for 
    for( int i=0; i < (*all_cells).size(); i++ )
    {
        if ((*all_cells)[i]->type == 0)
        {
            if( (*all_cells)[i]->is_out_of_domain == false  )
            {
                (*all_cells)[i]->phenotype.intracellular->set_parameter_value("L",get_single_signal( (*all_cells)[i], "ligand"));
                (*all_cells)[i]->phenotype.intracellular->set_parameter_value("IR_Gray",get_single_signal( (*all_cells)[i], "radiation"));
                // SBML Simulation
                (*all_cells)[i]->phenotype.intracellular->update();
                
                
                double apop = (*all_cells)[i]->phenotype.intracellular->get_parameter_value("Apop");
                double casp = (*all_cells)[i]->phenotype.intracellular->get_parameter_value("Caspase");

                // Furkan : Check apop and casp values
                double apop_star = 36708;
                double casp_star = 96190;

                double p_apop_a = apop/apop_star;
                double p_apop_c = casp/casp_star;
                
                // Furkan : Delete apoptotic cancer cells from simulation
                
                if ( (*all_cells)[i]->phenotype.volume.total > 100)
				{
                    if( UniformRandom() < p_apop_c )
                    { 
                        (*all_cells)[i]->phenotype.volume.multiply_by_ratio(0);
                        std::vector<double> apoptotic_cell_position;
                        apoptotic_cell_position = (*all_cells)[i]->position;
                        for( int i=0; i < positions.size(); i++ )
                        {
                            pCell = create_cell(get_cell_definition("Apoptotic Body"));
                            pCell->assign_position( apoptotic_cell_position[0] + positions[i][0],apoptotic_cell_position[1] + positions[i][1],apoptotic_cell_position[3] + positions[i][3] ); // Assign position to created cell
                        }
                    }
                    

                }
        
                if ( (*all_cells)[i]->phenotype.volume.total > 100)
				{
                    if( UniformRandom() < p_apop_a )
                    { 
                        std::vector<double> apoptotic_cell_position;
                        apoptotic_cell_position = (*all_cells)[i]->position;
                        (*all_cells)[i]->phenotype.volume.multiply_by_ratio(0);
                        pCell = create_cell(get_cell_definition("Apoptotic Body"));
                        pCell->assign_position(apoptotic_cell_position);
                    //std::cout << " I AM DYING !!" << std::endl;
                    }
				}
                set_single_behavior( (*all_cells)[i] , "custom:ligand" , (*all_cells)[i]->phenotype.intracellular->get_parameter_value("L"));
                set_single_behavior( (*all_cells)[i] , "custom:receptor" ,(*all_cells)[i]->phenotype.intracellular->get_parameter_value("R") );
                set_single_behavior( (*all_cells)[i] , "custom:IR_gray" , (*all_cells)[i]->phenotype.intracellular->get_parameter_value("IR_Gray") );
                set_single_behavior( (*all_cells)[i] , "custom:Apop" , (*all_cells)[i]->phenotype.intracellular->get_parameter_value("Apop") );
                set_single_behavior( (*all_cells)[i] , "custom:Caspase" , (*all_cells)[i]->phenotype.intracellular->get_parameter_value("Caspase") );
                set_single_behavior( (*all_cells)[i] , "custom:XIAP" , (*all_cells)[i]->phenotype.intracellular->get_parameter_value("XIAP") );
                set_single_behavior( (*all_cells)[i] , "custom:DNA_double_strand_break" , (*all_cells)[i]->phenotype.intracellular->get_parameter_value("DNA_double_strand_break") );
                set_single_behavior( (*all_cells)[i] , "custom:CytoC_released" , (*all_cells)[i]->phenotype.intracellular->get_parameter_value("CytoC released") );
                
                //std::cout << "Apop_A = " << p_apop_a << std::endl;
               // std::cout << "Apop_C = " << p_apop_c << std::endl;
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


void radiation_start()
{
    double x_min = parameters.doubles("radiation_xmin");
    double x_max = parameters.doubles("radiation_xmax");
    double y_min = parameters.doubles("radiation_ymin");
    double y_max = parameters.doubles("radiation_ymax");
    double ir_gy = parameters.doubles("radiation_grey");
    
	for( int i = 0; i < microenvironment.mesh.voxels.size() ; i++ )
	{
		std::vector<double> position = microenvironment.mesh.voxels[i].center;
        if ( position[0] > x_min )
        {
            if ( position[0] < x_max )
            {
                if ( position[1] > y_min )
                {
                    if ( position[1] < y_max )
                    {
                        microenvironment(i)[2] = ir_gy;
                    }
                }
            }
        }
		
		
	}
    
}


void radiation_stop()
{    
	for( int i = 0; i < microenvironment.mesh.voxels.size() ; i++ )
	{
        microenvironment(i)[2] = 0;	
	}
    
}


