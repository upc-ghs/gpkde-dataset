
GPKDE Version 1.0.0               
Program compiled Oct  1 2023 21:13:39 with GFORTRAN compiler (ver. 13.2.1 20230801)       

This program has been developed and published by the Hydrogeology
Group (GHS), Universitat Politècnica de Catalunya (UPC). It is free
to use and modify under the condition that neither the GHS nor UPC
shall be considered legally responsible for any wrongdoing or damages
derived from its use.

For bug reports and updates, follow:                                  
  https://github.com/upc-ghs/gpkde                                    
----------------------------------------------------------------------


  Read simulation file 
 ----------------------
Input data file name: particles_gaussian_r3.csv
Input data expected to be specified as (x,y,z).
File will be read until line:      10000
Reconstruction output will be written to file: gpkde.out.new.l3.r3
Output column format will default to format 0 with bin ids and density data.
Output data format will default to text-plain data file.
Will read reconstruction grid parameters. 
Will allocate grid for reconstruction using domain size.
Succesfully read reconstruction grid data.
Optimization will consider the maximum number of loops:   20
Will not export optimization variables.
GPKDE will break once convergence is satisfied.
Relative error convergence set to:   1.000000000E-003
Kernel sizes are bounded by domain constraints.
Defaults to anisotropic kernels.
GPKDE will compute raw kernels.
Initial smoothing is selected from the global estimate of Silverman (1986). 
Will not interpret advanced options.
GPKDE will load data into arrays.
Loaded data into arrays.
Loading time :     0.13000E-01 seconds

  Initialize GPKDE 
 ------------------

-----------------------
 GPKDE is initializing 
  Initializing Histogram
   Histogram grid will follow domain grid size.
   Histogram determines dimensions to be analyzed based on bin sizes.
   Will compute Histogram considering 1 dimensions.
   Grid parameters
   ---------------
   - binSize            :   1.000000000E-002   0.000000000E+000   0.000000000E+000
   - domainSize         :   1.200000000E+001   0.000000000E+000   0.000000000E+000
   - domainOrigin       :  -6.000000000E+000   0.000000000E+000   0.000000000E+000
   - domainGridSize     :      1200         1         1
   ---------------
   Dimensionality for reconstruction is determined from domain grid size.
   Will perform reconstruction in  1 dimensions.
 GPKDE is initialized  
-----------------------

Opened output unit for writing densities.

  Density reconstruction 
 ------------------------
Will perform density reconstruction in parallel.
Number of threads:   4

 Histogram info 
   Max count         :  5.300000000E+001
   Max raw density   :  5.300000000E+003
   Min count         :  0.000000000E+000
   Min raw density   :  0.000000000E+000
   Mean raw density  :  1.730103806E+003
   Active bins       :      578
   NPoints           :    10000
   NEffective        :  1.000000000E+004

 Data points info
   Mean coordinates                 :  -4.577829259E-003   0.000000000E+000   0.000000000E+000
   Std. dev. coordinates            :   9.963728222E-001   0.000000000E+000   0.000000000E+000
   Std. sigma scale                 :   9.963728222E-001
   Global smoothing scale Silverman :   1.672667506E-001

 Kernels info
   initialSmoothing   :   1.672667506E-001   0.000000000E+000   0.000000000E+000

|-----------------------------------------------------------|
| Optimization                                              |
|-----------------------------------------------------------|
| Loop |  hHatOverDelta  |     ALMISE      |      RMSE      |
|-----------------------------------------------------------|
     0  1.672667506E+001  0.000000000E+000  4.055781715E-002
     1  1.710114863E+001  4.265499886E-005  4.058360727E-002
     2  1.673011991E+001  4.230273692E-005  4.049706877E-002
     3  1.675781343E+001  3.871149058E-005  4.054227050E-002
     4  1.696305067E+001  3.827021135E-005  4.056000349E-002
     5  1.701674176E+001  3.794855452E-005  4.056262617E-002
    - ALMISE convergence :   4.2883E-04
|-----------------------------------------------------------|
   Optimization time :     0.82000E-01 seconds
|-----------------------------------------------------------|
 Elapsed time :     0.86000E-01 seconds
