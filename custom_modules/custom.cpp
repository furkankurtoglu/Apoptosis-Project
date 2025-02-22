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
	double initial_tissue_radius = 150;

	std::vector<std::vector<double>> positions = create_cell_circle_positions(cell_radius,initial_tissue_radius);
	
    std::cout << "NUMBER OF CANCER CELLS : " << positions.size() << " __________" << std::endl;
    for( int i=0; i < positions.size(); i++ )
    {
        pCell = create_cell(get_cell_definition("cancer cell")); // Create Cell
        pCell->assign_position( positions[i] ); // Assign position to created cell
        

        //pCell->phenotype.intracellular->start(); //Read SBML and add into cell
        
        double receptor_level = NormalRandom(200,20); // Randomly define receptor value (Normal Dist) 

		std::map<std::string, std::string> species_names = pCell->phenotype.intracellular->get_SBML_species_names();
		for (std::map<std::string, std::string>::const_iterator it = species_names.begin(); it != species_names.end(); ++it) 
		{
			std::string SBML_species_name = it->first;
			double SBML_value = pCell->phenotype.intracellular->get_parameter_value (SBML_species_name);
			//std::cout << "  Species: " << it->first << ", Value: " << SBML_value << std::endl;
			double stochastic_value = NormalRandom(SBML_value, SBML_value*0.1 );
			pCell->phenotype.intracellular->set_parameter_value(SBML_species_name,stochastic_value);
        }
		
		//pCell->phenotype.intracellular->set_parameter_value("R",receptor_level);
		
        pCell->phenotype.intracellular->set_parameter_value("L",get_single_signal( pCell, "ligand")); // Get Ligand from microenvironment then assign into SBML
        
        set_single_behavior( pCell , "custom:ligand" , get_single_signal( pCell, "ligand") );  // Define Custom Data for ligand based on ligand in microenvironment
        set_single_behavior( pCell , "custom:receptor" , receptor_level );  // Define Custom Data for receptor
    }
    
    
    // Proper Machrophage seeding --> Use user parameters......
    
	bool Machrophage_seeding =  parameters.bools( "macrophage_seeding" );
    
    if (Machrophage_seeding)
	{
		pCell = create_cell(get_cell_definition("Macrophage"));
		pCell-> assign_position({160,160,0});
		
		pCell = create_cell(get_cell_definition("Macrophage"));
		pCell-> assign_position({-160,160,0});
		
		
		pCell = create_cell(get_cell_definition("Macrophage"));
		pCell-> assign_position({0,-200,0});
		
		
		pCell = create_cell(get_cell_definition("Macrophage"));
		pCell-> assign_position({200,-150,0});
		pCell = create_cell(get_cell_definition("Macrophage"));
		pCell-> assign_position({200,-150,0});
    }

	return; 
}

void update_intracellular()
{
    Cell* pCell;
    
    #pragma omp parallel for 
    for( int i=0; i < (*all_cells).size(); i++ )
    {
		bool is_dead;
		is_dead = (*all_cells)[i]->phenotype.death.dead;
        if (((*all_cells)[i]->type == 0) && !is_dead)
        {
            if( (*all_cells)[i]->is_out_of_domain == false  )
            {
                (*all_cells)[i]->phenotype.intracellular->set_parameter_value("L",get_single_signal( (*all_cells)[i], "ligand"));
                (*all_cells)[i]->phenotype.intracellular->set_parameter_value("IR_Gray",get_single_signal( (*all_cells)[i], "radiation"));

                (*all_cells)[i]->phenotype.intracellular->update();
				
                
                double cPARP = (*all_cells)[i]->phenotype.intracellular->get_parameter_value("cPARP");
                double casp = (*all_cells)[i]->phenotype.intracellular->get_parameter_value("Caspase");

                // Furkan : Check apop and casp values
                double cPARP_star = 999340*0.1; // ligand (36708)
                double casp_star =  90000; // radiation (96190)

                
/*                 if ( PhysiCell_globals.current_time > 370)
				{
					if ( cPARP < cPARP_star )
					{
						std::cout << "Benim Adim : " <<(*all_cells)[i]->ID << " cPARP level = " << cPARP <<std::endl;
					}
				} */


                // Forming Apoptotic Bodies in the location of dying cells
				
				double counter = 0;
                if ( (*all_cells)[i]->phenotype.volume.total > 100)
				{
					if ( cPARP > cPARP_star)
                    { 
						int apoptosis_model_index = cell_defaults.phenotype.death.find_death_model_index( "Apoptosis" );
						double total_dying_cell_volume = (*all_cells)[i]->phenotype.volume.total;
						double dying_cell_radius = pow((total_dying_cell_volume * 3 / 4 / 3.14),1/3);
						(*all_cells)[i]->phenotype.death.rates[apoptosis_model_index] = 9e99;
						(*all_cells)[i]->phenotype.death.current_parameters().unlysed_fluid_change_rate = 9e99;
                        (*all_cells)[i]->phenotype.death.current_parameters().cytoplasmic_biomass_change_rate = 9e99;
                        (*all_cells)[i]->phenotype.death.current_parameters().nuclear_biomass_change_rate = 9e99;
                        (*all_cells)[i]->phenotype.death.current_parameters().lysed_fluid_change_rate = 9e99;
						 std::vector<int> Apop_Body_Volume_Vector;
						
						double Total_V_Apop_Bodies = 0;
						while ( Total_V_Apop_Bodies < total_dying_cell_volume)
						{
							double temp_apopt_body_radius = NormalRandom(5.3,0.6); //https://www.molbiolcell.org/cms/10.1091/mbc.E19-12-0691/asset/images/large/mbc-31-833-g001.jpeg
							double temp_apopt_body_volume = 4 / 3 * 3.14 * pow(temp_apopt_body_radius,3);
							if (Total_V_Apop_Bodies + temp_apopt_body_volume > total_dying_cell_volume)
							{
								temp_apopt_body_volume = total_dying_cell_volume - Total_V_Apop_Bodies;
								Apop_Body_Volume_Vector.push_back(temp_apopt_body_volume);
								Total_V_Apop_Bodies = Total_V_Apop_Bodies + temp_apopt_body_volume;
							}
							else
							{
								Apop_Body_Volume_Vector.push_back(temp_apopt_body_volume);
								Total_V_Apop_Bodies = Total_V_Apop_Bodies + temp_apopt_body_volume;
							}
						}
						//std::cout << "Total Volume Apoptotic Bodies" << Total_V_Apop_Bodies << std::endl;
						
						std::vector<double> apoptotic_cell_position;
						apoptotic_cell_position = (*all_cells)[i]->position;
						double apoptotic_body_count = Apop_Body_Volume_Vector.size();
						
						for (int i=0; i < Apop_Body_Volume_Vector.size(); i++)
						{
							double random_x_dir_shift = -1 * dying_cell_radius *1.5 + (dying_cell_radius * 1.5 + dying_cell_radius * 1.5) * UniformRandom();
							double random_y_dir_shift = -1 * dying_cell_radius * 1.5 + (dying_cell_radius * 1.5 + dying_cell_radius * 1.5) * UniformRandom();
							pCell = create_cell(get_cell_definition("Apoptotic Body"));
							pCell->assign_position( apoptotic_cell_position[0]+random_x_dir_shift, apoptotic_cell_position[1]+random_x_dir_shift + random_y_dir_shift, apoptotic_cell_position[2] );
							double reff_apoptotic_body_volume = pCell->phenotype.volume.total;
							pCell->set_target_volume(Apop_Body_Volume_Vector[i]);
							pCell->set_total_volume(Apop_Body_Volume_Vector[i]);
						}
						(*all_cells)[i]->set_target_volume(0);
						(*all_cells)[i]->set_total_volume(0);
						(*all_cells)[i]->start_death(apoptosis_model_index);
                       
                    }
					
					if ( casp > casp_star)
                    { 
						int apoptosis_model_index = cell_defaults.phenotype.death.find_death_model_index( "Apoptosis" );
						double total_dying_cell_volume = (*all_cells)[i]->phenotype.volume.total;
						double dying_cell_radius = pow((total_dying_cell_volume * 3 / 4 / 3.14),1/3);
						(*all_cells)[i]->phenotype.death.rates[apoptosis_model_index] = 9e99;
						(*all_cells)[i]->phenotype.death.current_parameters().unlysed_fluid_change_rate = 9e99;
                        (*all_cells)[i]->phenotype.death.current_parameters().cytoplasmic_biomass_change_rate = 9e99;
                        (*all_cells)[i]->phenotype.death.current_parameters().nuclear_biomass_change_rate = 9e99;
                        (*all_cells)[i]->phenotype.death.current_parameters().lysed_fluid_change_rate = 9e99;
						 std::vector<int> Apop_Body_Volume_Vector;
						
						double Total_V_Apop_Bodies = 0;
						while ( Total_V_Apop_Bodies < total_dying_cell_volume)
						{
							double temp_apopt_body_radius = NormalRandom(5.3,0.6); //https://www.molbiolcell.org/cms/10.1091/mbc.E19-12-0691/asset/images/large/mbc-31-833-g001.jpeg
							double temp_apopt_body_volume = 4 / 3 * 3.14 * pow(temp_apopt_body_radius,3);
							if (Total_V_Apop_Bodies + temp_apopt_body_volume > total_dying_cell_volume)
							{
								temp_apopt_body_volume = total_dying_cell_volume - Total_V_Apop_Bodies;
								Apop_Body_Volume_Vector.push_back(temp_apopt_body_volume);
								Total_V_Apop_Bodies = Total_V_Apop_Bodies + temp_apopt_body_volume;
							}
							else
							{
								Apop_Body_Volume_Vector.push_back(temp_apopt_body_volume);
								Total_V_Apop_Bodies = Total_V_Apop_Bodies + temp_apopt_body_volume;
							}
						}
						//std::cout << "Total Volume Apoptotic Bodies" << Total_V_Apop_Bodies << std::endl;
						
						std::vector<double> apoptotic_cell_position;
						apoptotic_cell_position = (*all_cells)[i]->position;
						double apoptotic_body_count = Apop_Body_Volume_Vector.size();
						
						for (int i=0; i < Apop_Body_Volume_Vector.size(); i++)
						{
							double random_x_dir_shift = -1 * dying_cell_radius *1.5 + (dying_cell_radius * 1.5 + dying_cell_radius * 1.5) * UniformRandom();
							double random_y_dir_shift = -1 * dying_cell_radius * 1.5 + (dying_cell_radius * 1.5 + dying_cell_radius * 1.5) * UniformRandom();
							pCell = create_cell(get_cell_definition("Apoptotic Body"));
							pCell->assign_position( apoptotic_cell_position[0]+random_x_dir_shift, apoptotic_cell_position[1]+random_x_dir_shift + random_y_dir_shift, apoptotic_cell_position[2] );
							double reff_apoptotic_body_volume = pCell->phenotype.volume.total;
							pCell->set_target_volume(Apop_Body_Volume_Vector[i]);
							pCell->set_total_volume(Apop_Body_Volume_Vector[i]);
						}
						
						(*all_cells)[i]->start_death(apoptosis_model_index);
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


void macrophage_cell_rule()
{   
    int apoptosis_model_index = cell_defaults.phenotype.death.find_death_model_index( "Apoptosis" );
    #pragma omp parallel for 
    for( int i=0; i < (*all_cells).size(); i++ )
    {
        if ((*all_cells)[i]->type == 1) // if it is macrophage
        {
            if( (*all_cells)[i]->is_out_of_domain == false  )
            {
                double memory_target_index = get_single_signal( (*all_cells)[i], "custom:Phagocytosis_Target_index");
                int mem_tar_index = memory_target_index;
                
                double memory_presence = get_single_signal( (*all_cells)[i], "custom:Phagocytosis_Target_Memory");
                
                double clear_duration = 0.2; // min
/*                 if ( memory_presence == 1)
                {
                    std::cout << "Target Cell : I am cell " << (*all_cells)[memory_target_index]->ID <<". This is my dead status :" << (*all_cells)[memory_target_index]->phenotype.death.dead  << std::endl;
                } */
                for( int k=0; k < (*all_cells)[i]->state.neighbors.size() ; k++ )
                {
                    Cell* pTemp = (*all_cells)[i]->state.neighbors[k];
                    // double EatMe = /////////////////// BERTAN to write code here

                    if (pTemp->type == 2) ///////////////////////// Change to EatMe @BERTAN
                    {
                        int apoptotic_body_index = pTemp->ID;
                        //std::cout << "Macrophage: My neighbors ID is:  " << apoptotic_body_index << std::endl;
                        
                        //double memory_target_index = get_single_signal( (*all_cells)[i], "custom:Phagocytosis_Target_index");
                        //int mem_tar_index = memory_target_index;
                        
                        

                        if( apoptotic_body_index == mem_tar_index && (*all_cells)[apoptotic_body_index]->phenotype.death.dead == true)
                        { // take reset
                            //std::cout << "Macrophage: I cleared apoptotic body number " << apoptotic_body_index << std::endl;
                            set_single_behavior( (*all_cells)[i], "custom:Phagocytosis_Target_Memory", 0);
                            set_single_behavior( (*all_cells)[i], "custom:Phagocytosis_Target_index", 100000000);
                            //std::cout << "Macrophage: I start get going" << std::endl;
                            (*all_cells)[i]->is_movable = true;
                            set_single_behavior( (*all_cells)[i] , "migration speed" , 15.0 );
                            set_single_behavior( (*all_cells)[i] , "migration bias" , 0.35 );
                        }
                            
                        if( apoptotic_body_index == mem_tar_index && (*all_cells)[apoptotic_body_index]->phenotype.death.dead == false) 
                        {// kill
                            //std::cout << "Macrophage: I am gonna kill "  << apoptotic_body_index << std::endl;
                            (*all_cells)[apoptotic_body_index]->phenotype.death.models[apoptosis_model_index]->phase_links[0][0].fixed_duration == true;
                            (*all_cells)[apoptotic_body_index]->phenotype.death.rates[apoptosis_model_index] = 1.0 / (clear_duration+1e-16);
							(*all_cells)[apoptotic_body_index]->set_target_volume(0);
							(*all_cells)[apoptotic_body_index]->set_total_volume(0);
							(*all_cells)[apoptotic_body_index]->start_death(apoptosis_model_index);
                            (*all_cells)[apoptotic_body_index]->is_movable = false;
                        }
                        if( apoptotic_body_index != mem_tar_index && (*all_cells)[apoptotic_body_index]->phenotype.death.dead == true )
                        {
                        }
                        if( apoptotic_body_index != mem_tar_index && (*all_cells)[apoptotic_body_index]->phenotype.death.dead == false )                        
                        {
                            if (memory_presence == 0.0)
                            { // define target
                                //std::cout << "Macrophage: I found my target in my mind. It is " << apoptotic_body_index << std::endl;
                                set_single_behavior( (*all_cells)[i], "custom:Phagocytosis_Target_Memory", 1.0);
                                set_single_behavior( (*all_cells)[i], "custom:Phagocytosis_Target_index", (double)apoptotic_body_index);
                                //std::cout << "Macrophage: I am stopping" << std::endl;
                                set_single_behavior( (*all_cells)[i] , "migration speed", 0.0 );
                                (*all_cells)[i]->is_movable = false;
                                
                            }
                            else
                            { // I have a different target in my mind so do nothing
                            }
                        }
                    }
                }
            }
        }
    } 

    return; 
}