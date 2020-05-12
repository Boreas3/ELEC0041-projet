from subprocess import call
import numpy as np
import csv
import pandas as pd
import matplotlib.pylab as plt


class XLSX_WRITE:
    def __init__(self, width_center, width, t):
        self.writer = pd.ExcelWriter("Magnetodynamics\\Three_Phases\\CoreB\\geotypeB.xlsx", engine='xlsxwriter')
        self.width_center, self.width, self.t = width_center, width, t

    def xlsx_write(self, k, Data):
        df = pd.DataFrame(dict(zip(self.width, Data.T)), index=self.width_center)
        df.to_excel(self.writer, sheet_name="{}".format(t[k]), index=True)

    def xlsx_save(self):
        self.writer.save()

if __name__ == "__main__":
    N = 18
    N_t = 10
    width_center = np.linspace(0.2, 1, N) # Largeur jambe centrale
    width = np.linspace(0.2, 1, N) # Largeur jambe externes 
    t = np.linspace(1, 2, N_t) # Epaisseur
    Result = np.zeros([N, N, N_t])
    for i in range(0,N):
        for j in range(0,N):
            for k in range(0,N_t):
                call(["gmsh", "-2", "Magnetodynamics/Three_Phases/CoreB/transfo_3p_core.geo",  "-v", "1", 
                                                                        "-setnumber", "central_width_Core_Leg", "{}".format(width_center[i]),
                                                                        "-setnumber", "width_Core_Leg", "{}".format(width[j]),
                                                                        "-setnumber", "thickness_Core", "{}".format(t[k])])
                call(["getdp", "Magnetodynamics/Three_Phases/CoreB/transfo_3p_core.pro", "-v", "1", "-solve", "Magnetodynamics2D_av", "-pos", "Map_a", 
                                                                        "-setnumber", "central_width_Core_Leg", "{}".format(width_center[i]),
                                                                        "-setnumber", "width_Core_Leg", "{}".format(width[j]),
                                                                        "-setnumber", "thickness_Core", "{}".format(t[k])])
                temp_res = np.zeros([2,1])
                with open('Magnetodynamics\\Three_Phases\\CoreB\\UI3_core.txt', newline='') as csvfile:
                    spamreader = csv.reader(csvfile, delimiter=' ')
                    for row in spamreader:
                        temp_res[spamreader.line_num-1] = row[2]
                I_diff = -abs(temp_res[0]-temp_res[1])/max(temp_res)+1
                I_mean = (temp_res[0]+temp_res[1])/2
                I_val = -abs(111.11 - I_mean)/(max([I_mean, 111.11]))+1
                Result[i,j,k] = I_diff + I_val # Plus la valeur est proche de 2, plus le transfo est conforme au spec
    Init_xlsx = XLSX_WRITE(width_center, width, t)
    for k in range(0,N_t):
        Init_xlsx.xlsx_write(k, Result[:,:,k])
    Init_xlsx.xlsx_save()

