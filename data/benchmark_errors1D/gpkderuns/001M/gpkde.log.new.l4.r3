
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
Reconstruction output will be written to file: gpkde.out.new.l4.r3
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
Loading time :     0.15000E-01 seconds

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
   Max count         :  3.300000000E+001
   Max raw density   :  6.600000000E+003
   Min count         :  0.000000000E+000
   Min raw density   :  0.000000000E+000
   Mean raw density  :  1.915708812E+003
   Active bins       :     1044
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
     0  3.345335012E+001  0.000000000E+000  6.129803450E-002
     1  3.459008156E+001  4.482678891E-005  6.129038028E-002
     2  3.363922564E+001  4.442442710E-005  6.124781137E-002
     3  3.365251811E+001  4.060344648E-005  6.128530557E-002
     4  3.408361730E+001  4.012631414E-005  6.129545194E-002
     5  3.418144147E+001  3.977622631E-005  6.129808457E-002
    - ALMISE convergence :   2.2526E-04
|-----------------------------------------------------------|
   Optimization time :     0.29600E+00 seconds
|-----------------------------------------------------------|
 Elapsed time :     0.30000E+00 seconds
