from subprocess import call
import numpy as np
import csv
import pandas as pd
import matplotlib.pylab as plt
import math
class XLSX_WRITE:
    def __init__(self, r_load):
        self.writer = pd.ExcelWriter("PowerB_core.xlsx", engine='xlsxwriter')
        self.r_load = r_load

    def xlsx_write(self, R_no_load, R_cc, X_no_load, X_cc):
    
        df = pd.DataFrame([R_no_load, R_cc, X_no_load, X_cc], index=["no load R", "cc R", "no load X", "cc X"])
        df.to_excel(self.writer, index=True)

    def xlsx_save(self):
        self.writer.save()

if __name__ == "__main__":
    r_load = [1e-6,1e6]
    R = dict()
    X = dict()

    for j in r_load:
        call(["gmsh", "-2", "transfo.geo",  "-v", "1"])
        call(["getdp", "transfo.pro", "-v", "1", "-solve", "Magnetodynamics2D_av", "-pos", "Power_test", 
                                                                "-setnumber", "r_load", "{}".format(j)])
        temp_res = np.empty([9,2])     
        i = 0               
        with open('UI3_B_core.txt', newline='') as csvfile:
            spamreader = csv.reader(csvfile, delimiter=' ')
            for row in spamreader:
                temp_res[i,:] = [row[2], row[3]]
                i +=1
        P = temp_res[0:3,0]
        Q = temp_res[0:3,1]
        U = np.zeros([3,1], dtype=complex)
        I = np.zeros([3,1], dtype=complex)
        Z = np.zeros([3,1], dtype=complex)
        if j == 1e6:
            for i in range(0,3):
                U[i] = np.complex(temp_res[i+3,0], temp_res[i+3,1])
            R[j] = np.abs(U).T**2/P
            X[j] = np.abs(U).T**2/Q
        else:
            for i in range(0,3):
                I[i] = np.complex(temp_res[i+6,0], temp_res[i+6,1])
            R[j] = P/np.abs(I).T
            X[j] = Q/np.abs(I).T

    R_no_load = np.concatenate((R[1e6][0].T, [np.mean(R[1e6][0])]))
    R_cc = np.concatenate((R[1e-6][0].T, [np.mean(R[1e-6][0])]))
    X_no_load = np.concatenate((X[1e6][0].T, [np.mean(X[1e6][0])]))
    X_cc = np.concatenate((X[1e-6][0].T, [np.mean(X[1e-6][0])]))
    
    
    Init_xlsx = XLSX_WRITE(r_load)
    Init_xlsx.xlsx_write(R_no_load, R_cc, X_no_load, X_cc)
    Init_xlsx.xlsx_save()
     
                    