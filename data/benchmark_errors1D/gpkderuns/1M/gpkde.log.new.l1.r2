
GPKDE Version 1.0.0               
Program compiled Nov 11 2023 10:44:31 with GFORTRAN compiler (ver. 13.2.1 20230801)       

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
Reconstruction output will be written to file: gpkde.out.new.l1.r2
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
Loading time :     0.98300E+00 seconds

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
   - binSize            :   1.000000000E-001   0.000000000E+000   0.000000000E+000
   - domainSize         :   1.200000000E+001   0.000000000E+000   0.000000000E+000
   - domainOrigin       :  -6.000000000E+000   0.000000000E+000   0.000000000E+000
   - domainGridSize     :       120         1         1
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
   Max count         :  3.996500000E+004
   Max raw density   :  3.996500000E+005
   Min count         :  0.000000000E+000
   Min raw density   :  0.000000000E+000
   Mean raw density  :  1.041666667E+005
   Active bins       :       96
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
     0  6.686507962E-001  0.000000000E+000  7.444350464E-004
     1  7.148338302E-001  8.687571969E-007  2.366334544E-003
     2  6.546125966E-001  1.067353005E-006  6.842995498E-004
     3  7.249093206E-001  8.558279854E-007  7.818344074E-004
     4  7.279576319E-001  8.218190912E-007  7.211041498E-004
     5  7.275600372E-001  7.449108244E-007  7.409375807E-004
     6  7.306108157E-001  7.464531378E-007  7.472861553E-004
     7  7.299407164E-001  7.444246986E-007  7.477175267E-004
    - ALMISE convergence :   2.7522E-04
|-----------------------------------------------------------|
   Optimization time :     0.30000E-02 seconds
|-----------------------------------------------------------|
 Elapsed time :     0.17000E-01 seconds
