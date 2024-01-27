# -*- coding: utf-8 -*-
"""
Created on Thu Jan 11 10:33:42 2024

@author: Furkan and Bertan
"""


import pcdl  # the physicell data loader library
import numpy as np
import matplotlib.pyplot as plt
import csv
import pandas as pd

import os
import scipy.io
import pathlib


s_file_2d = 'output00000004.xml'




#microenvir = mcds.get_conc_df()


a = 'output'
filenames = os.listdir(a)
xmlfiles = []
for name in filenames:
    if (name.__contains__('.xml') == True) and (name.__contains__('output') == True):
        xmlfiles.append(name)

dead_cell_counts=[]
times = []
avg_apop=[]
avg_casp=[]
avg_IR_gray=[]

for xml in xmlfiles:
    s_path_2d = str(pathlib.Path().parent.resolve()/'output')
    s_file_2d = xml
    s_pathfile_2d = f'{s_path_2d}\{s_file_2d}'
    mcds = pcdl.pyMCDS(xmlfile = xml, output_path=s_path_2d, custom_type={}, microenv=False, graph=False, settingxml='./PhysiCell_settings.xml', verbose=False)
    celldf = mcds.get_cell_df()
    
    currenttime = mcds.get_time()
    times.append(currenttime)
    
    
    d = celldf['IR_gray']
    IR_gray_value = sum(d)/len(d)
    avg_IR_gray.append(IR_gray_value)
    
    
    
    c = celldf['Caspase']
    casp_value = sum(c)/len(c)
    avg_casp.append(casp_value)
    
    
    
    
    b = celldf['Apop']
    apop_value = sum(b)/len(b)
    avg_apop.append(apop_value)
        
    
    
    a = celldf['dead']
    dead_cell_count = 0
    print(a)
    for cell in a: 
        if (cell == True):
            dead_cell_count += 1
    dead_cell_counts.append(dead_cell_count)
    
    

#%%

plt.figure(figsize=(20,10))

plt.subplot(2, 2, 1)
plt.plot(times,dead_cell_counts) #Dead and Time value

plt.title("Dead")
plt.xlabel("time (s)")
plt.ylabel("Number of Dead Cells")

plt.show()

    
plt.subplot(2, 2, 2)
plt.plot(times,avg_apop) #Apop and Time value

plt.title("Apop")
plt.xlabel("time (s)")
plt.ylabel("Average Apoptosome")#bul

plt.show()

plt.subplot(2, 2, 3)
plt.plot(times,avg_casp) #casp and Time value

plt.title("casp")
plt.xlabel("time (s)")
plt.ylabel("Average Caspase")

plt.show()

plt.subplot(2, 2, 4)
plt.plot(times,avg_IR_gray) #IRgray and Time value

plt.title("IRgray")
plt.xlabel("time (s)")
plt.ylabel("Average IR (Gy)")



plt.show()

plt.savefig("all.jpg")
