import sys
import numpy as np
listafor = sys.argv[1:5]
listacpp = sys.argv[5:9]
listafor = np.array([float(item) for item in listafor])
listacpp = np.array([float(item) for item in listacpp])
lista = np.subtract(listafor, listacpp)
for i in range(4) :
    lista[i]=lista[i]*100/listafor[i]
    print(i+1, lista[i])