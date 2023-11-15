
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
Reconstruction output will be written to file: gpkde.out.new.l2.r2
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
Loading time :     0.11650E+01 seconds

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
   - binSize            :   5.000000000E-002   0.000000000E+000   0.000000000E+000
   - domainSize         :   1.200000000E+001   0.000000000E+000   0.000000000E+000
   - domainOrigin       :  -6.000000000E+000   0.000000000E+000   0.000000000E+000
   - domainGridSize     :       240         1         1
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
   Max count         :  2.002400000E+004
   Max raw density   :  4.004800000E+005
   Min count         :  0.000000000E+000
   Min raw density   :  0.000000000E+000
   Mean raw density  :  1.098901099E+005
   Active bins       :      182
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
     0  1.337301592E+000  0.000000000E+000  1.248025901E-003
     1  1.410309415E+000  8.954856952E-007  2.701169437E-003
     2  1.246330082E+000  1.116653116E-006  1.187600102E-003
     3  1.384620652E+000  8.844713500E-007  1.271411704E-003
     4  1.397868770E+000  8.473722306E-007  1.232782642E-003
     5  1.403335703E+000  7.688061678E-007  1.241992916E-003
     6  1.405640675E+000  7.712159008E-007  1.248202255E-003
     7  1.406077551E+000  7.681665572E-007  1.248912104E-003
    - ALMISE convergence :   2.8162E-04
|-----------------------------------------------------------|
   Optimization time :     0.80000E-02 seconds
|-----------------------------------------------------------|
 Elapsed time :     0.27000E-01 seconds
