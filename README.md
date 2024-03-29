# NPBvsNPB-CPP_RaspberryPi4
By Eduardo Machado Martins, Eduardo Felber Eichner and Bernardo Pacheco Fiorini
## Description
This project and article provides a study dedicated to analyzing the behavior of efficiency tests with NAS Parallel Benchmarks in C++ and Fortran, using OpenMP on an embedded system called Raspberry Pi 4, with an ARM processor. In addition, the results obtained were analyzed based on previous studies carried out on multi-color platforms. The results of the project are inside the 'Graphics' folder. The article was written in Portuguese and is inside the folder 'Paper'.
## Dependencies
It was developed to run in a Linux environment. Uses C, C++, Fortran, Gnuplot, Shell, Python and Numpy. When downloaded, the NPB.zip file must be unzipped in the root directory, this file contains the NPB and NPB-CPP source codes.
Also some files may need to be given execute permission, this can be done with the following command:
```
chmod +x [fileName]
```
Originally, this code was used to run on a Raspberry Pi Model B, so it is configured to run applications ranging from 1 to 4 cores.
## Execution
To execute the applications, run the following command inside the 'IOT-SCRIPTS' folder:
```
./Main.sh
```
##
<div align="center">  
  <img src="https://cdn.discordapp.com/attachments/1076157666986049598/1076168916495241327/rp4.png" alt="Result preview" /> 
</div>
