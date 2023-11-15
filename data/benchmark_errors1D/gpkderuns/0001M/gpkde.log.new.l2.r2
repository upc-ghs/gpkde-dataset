
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
File will be read until line:       1000
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
Loading time :     0.00000E+00 seconds

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
   Max count         :  3.100000000E+001
   Max raw density   :  6.200000000E+002
   Min count         :  0.000000000E+000
   Min raw density   :  0.000000000E+000
   Mean raw density  :  1.980198020E+002
   Active bins       :      101
   NPoints           :     1000
   NEffective        :  1.000000000E+003

 Data points info
   Mean coordinates                 :  -2.023339018E-002   0.000000000E+000   0.000000000E+000
   Std. dev. coordinates            :   9.801646924E-001   0.000000000E+000   0.000000000E+000
   Std. sigma scale                 :   9.801646924E-001
   Global smoothing scale Silverman :   2.607875183E-001

 Kernels info
   initialSmoothing   :   2.607875183E-001   0.000000000E+000   0.000000000E+000

|-----------------------------------------------------------|
| Optimization                                              |
|-----------------------------------------------------------|
| Loop |  hHatOverDelta  |     ALMISE      |      RMSE      |
|-----------------------------------------------------------|
     0  5.215750366E+000  0.000000000E+000  6.226267868E-002
     1  5.589631701E+000  2.710269016E-004  6.211182534E-002
     2  5.366863295E+000  2.611053557E-004  6.215999761E-002
     3  5.428659650E+000  2.649672747E-004  6.216345743E-002
     4  5.424306086E+000  2.627608148E-004  6.217088747E-002
    - ALMISE convergence :   6.8345E-04
|-----------------------------------------------------------|
   Optimization time :     0.30000E-02 seconds
|-----------------------------------------------------------|
 Elapsed time :     0.40000E-02 seconds
