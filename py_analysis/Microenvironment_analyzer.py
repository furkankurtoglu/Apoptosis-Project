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
plt.figure()
plt.show()
counter = 0

for xml in xmlfiles:
    s_path_2d = str(pathlib.Path().parent.resolve()/'output')
    s_file_2d = xml
    s_pathfile_2d = f'{s_path_2d}\{s_file_2d}'
    mcds = pcdl.pyMCDS(xmlfile = xml, output_path=s_path_2d, custom_type={}, microenv=True, graph=False, settingxml='./PhysiCell_settings.xml', verbose=False)
    microdf = mcds.get_concentration_df()
    #mcds.get_contour('chemokine') #tehlikeli
    b = microdf['chemokine']
    
    x = microdf['voxel_i']
    x = np.unique(x)
    y = microdf['voxel_j']
    y = np.unique(y)
    
    c = b.values.reshape(50,50)
    
    X, Y=np.meshgrid(x, y)
    plt.contourf(X,Y,c)
    
    save_name = str(counter)
    plt.savefig(save_name + ".jpg")
    counter += 1

    
    
    


