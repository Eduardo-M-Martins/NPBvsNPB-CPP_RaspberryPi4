import sys
import numpy as ny
lista = sys.argv[1:11]
lista = [float(item) for item in lista]
media = ny.mean(lista)
dv = ny.std(lista)
print(sys.argv[11],"{:.18f}".format(media),"{:.18f}".format(dv))