
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
File will be read until line:      10000
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
Loading time :     0.11000E-01 seconds

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
   Max count         :  2.100000000E+002
   Max raw density   :  4.200000000E+003
   Min count         :  0.000000000E+000
   Min raw density   :  0.000000000E+000
   Mean raw density  :  1.449275362E+003
   Active bins       :      138
   NPoints           :    10000
   NEffective        :  1.000000000E+004

 Data points info
   Mean coordinates                 :  -4.879307205E-003   0.000000000E+000   0.000000000E+000
   Std. dev. coordinates            :   9.927553049E-001   0.000000000E+000   0.000000000E+000
   Std. sigma scale                 :   9.927553049E-001
   Global smoothing scale Silverman :   1.666594575E-001

 Kernels info
   initialSmoothing   :   1.666594575E-001   0.000000000E+000   0.000000000E+000

|-----------------------------------------------------------|
| Optimization                                              |
|-----------------------------------------------------------|
| Loop |  hHatOverDelta  |     ALMISE      |      RMSE      |
|-----------------------------------------------------------|
     0  3.333189150E+000  0.000000000E+000  1.425190613E-002
     1  3.295221546E+000  3.932411857E-005  1.429198256E-002
     2  3.261765696E+000  3.827775177E-005  1.421246756E-002
     3  3.268908162E+000  3.495633153E-005  1.426141584E-002
    - ALMISE convergence :   8.0212E-04
|-----------------------------------------------------------|
   Optimization time :     0.50000E-02 seconds
|-----------------------------------------------------------|
 Elapsed time :     0.60000E-02 seconds
