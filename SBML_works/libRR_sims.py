# -*- coding: utf-8 -*-
"""
Created on Wed Jun 26 19:10:05 2024

@author: fkurt
"""

import roadrunner
import matplotlib.pyplot as plt
import numpy as np
 
# PTEN Index = 18, Caspase = 33

sim_number = 100


Result_array = np.zeros([1000,sim_number])


#rr = roadrunner.RoadRunner(r"C:\Users\fkurt\OneDrive\Documents\GitHub\Apoptosis-Project\SBML_works\943_irradiation_at_zero_merge_all_done_with_EVENTS.xml")

IR_Gray = range(0,1100,10)


PTEN_list = []
for ir in IR_Gray:
    rr = roadrunner.RoadRunner(r"C:\Users\fkurt\OneDrive\Documents\GitHub\Apoptosis-Project\SBML_works\943_irradiation_at_zero_merge_all_done_with_EVENTS.xml")
    rr.model["init([IR_Gray])"] = 4
    result = rr.simulate (0, 259200, 1000)
    plt.plot(result[:,18])
