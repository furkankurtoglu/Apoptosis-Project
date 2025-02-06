import pcdl
import numpy as np
import matplotlib.pyplot as plt
import os


def list_folders(directory):
    return [folder for folder in os.listdir(directory) if os.path.isdir(os.path.join(directory, folder))]

directory_path = r"C:\Users\berta\OneDrive\Belgeler\GitHub\Apoptosis-Project\all_output"  # Buraya hedef klasör yolunu yaz
folders = list_folders(directory_path)


# 10x97 boş matris oluşturuyoruz
matrix = np.zeros((len(folders), 97))
matrix_2 = np.zeros ((len(folders),97))


for a in range(len(folders)):  # İlk 10 simülasyonu almak için
    spesfic_path = 'all_output/' + folders[a]
    x = pcdl.TimeSeries(spesfic_path)

    apoptotic_body_list = []
    cancer_list = []
    time_list = []

    # l dediğimiz bir çıktının indisi ve bu artacak for döngüsünde
    for idx, l in enumerate(x.l_mcds):
        if idx >= 97:  # Matrisi 97 sütun ile sınırlamak için
            break
        
        time = l.get_time()
        time_list.append(time/60)
        mcds_i = l.get_cell_df()  # her şey var 

        number_of_apop_body = len(mcds_i[(mcds_i['cell_type'] == 'Apoptotic_Body') & (mcds_i['dead'] == False)])
        number_of_cancer_cells = len(mcds_i[(mcds_i['cell_type'] == 'cancer_cell') & (mcds_i['dead'] == False)])
        
        # Apoptotic Body değerlerini matrise ekliyoruz
        matrix[a, idx] = number_of_apop_body
        matrix_2[a, idx] = number_of_cancer_cells

# Grafik 1: 10 farklı simülasyonun apoptotic body değişimini çizdir
plt.figure()
for a in range(len(folders)):
    plt.plot(np.asarray(time_list), matrix[a, :], label=f'Apoptotic Body in Simulation {a+1}', linewidth=0.8, alpha=0.7)
    plt.plot(np.asarray(time_list), matrix_2[a, :], label=f'Cancer Cell in Simulation {a+1}', linewidth=0.8, alpha=0.7)

plt.xlabel('Time (hours)')
plt.ylabel('Number of Agent Count')
plt.title('Apoptotic Body & Cancer Cell Count Over Replicates (n=10)')
plt.legend()
plt.show()

# Ortalamayı ve standart sapmayı hesapla
mean_apoptotic_body = np.mean(matrix, axis=0)
std_apoptotic_body = np.std(matrix, axis=0)

mean_cancer_cell = np.mean(matrix_2, axis=0)
std_cancer_cell = np.std(matrix_2, axis=0)

# Grafik 2: Yalnızca ortalama ve shaded region gösterimi
plt.figure()
plt.plot(np.asarray(time_list), mean_apoptotic_body, label='Mean Apoptotic Body Counts', color='blue', linewidth=2.5)
plt.fill_between(np.asarray(time_list), mean_apoptotic_body - std_apoptotic_body, mean_apoptotic_body + std_apoptotic_body, color='lightblue', alpha=0.6)

plt.plot(np.asarray(time_list), mean_cancer_cell, label='Mean Cancer Cell Counts', color='red', linewidth=2.5)
plt.fill_between(np.asarray(time_list), mean_cancer_cell - std_cancer_cell, mean_cancer_cell + std_cancer_cell, color='lightcoral', alpha=0.9)


plt.xlabel('Time (hours)')
plt.ylabel('Number of Agent Count')
plt.title('Apoptotic Body & Cancer Cell Count Over Time (n=10)')
plt.legend()
plt.show()
