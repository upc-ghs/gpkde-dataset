
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
Input data file name: particles_gaussian_r2.csv
Input data expected to be specified as (x,y,z).
File will be read until line:    1000000
Reconstruction output will be written to file: gpkde.out.new.l4.r2
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
Loading time :     0.11670E+01 seconds

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
   - binSize            :   5.000000000E-003   0.000000000E+000   0.000000000E+000
   - domainSize         :   1.200000000E+001   0.000000000E+000   0.000000000E+000
   - domainOrigin       :  -6.000000000E+000   0.000000000E+000   0.000000000E+000
   - domainGridSize     :      2400         1         1
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
   Max count         :  2.078000000E+003
   Max raw density   :  4.156000000E+005
   Min count         :  0.000000000E+000
   Min raw density   :  0.000000000E+000
   Mean raw density  :  1.246882793E+005
   Active bins       :     1604
   NPoints           :  1000000
   NEffective        :  1.000000000E+006

 Data points info
   Mean coordinates                 :   1.278518288E-004   0.000000000E+000   0.000000000E+000
   Std. dev. coordinates            :   1.000487389E+000   0.000000000E+000   0.000000000E+000
   Std. sigma scale                 :   1.000487389E+000
   Global smoothing scale Silverman :   6.686507962E-002

 Kernels info
   initialSmoothing   :   6.686507962E-002   0.000000000E+000   0.000000000E+000

|-----------------------------------------------------------|
| Optimization                                              |
|-----------------------------------------------------------|
| Loop |  hHatOverDelta  |     ALMISE      |      RMSE      |
|-----------------------------------------------------------|
     0  1.337301592E+001  0.000000000E+000  4.865455748E-003
     1  1.361919059E+001  9.651205214E-007  5.510030083E-003
     2  1.148638433E+001  1.195917392E-006  4.851204646E-003
     3  1.311033447E+001  9.547514184E-007  4.868869069E-003
     4  1.324814430E+001  9.105003377E-007  4.861209735E-003
     5  1.321685341E+001  8.258396012E-007  4.862847860E-003
     6  1.326345485E+001  8.327209818E-007  4.863184328E-003
     7  1.326814911E+001  8.299779768E-007  4.863370592E-003
    - ALMISE convergence :   2.7280E-04
|-----------------------------------------------------------|
   Optimization time :     0.35500E+00 seconds
|-----------------------------------------------------------|
 Elapsed time :     0.37900E+00 seconds
