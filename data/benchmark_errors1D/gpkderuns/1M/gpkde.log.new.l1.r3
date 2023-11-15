
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
File will be read until line:    1000000
Reconstruction output will be written to file: gpkde.out.new.l1.r3
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
Loading time :     0.11560E+01 seconds

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
   Max count         :  3.989000000E+004
   Max raw density   :  3.989000000E+005
   Min count         :  0.000000000E+000
   Min raw density   :  0.000000000E+000
   Mean raw density  :  1.052631579E+005
   Active bins       :       95
   NPoints           :  1000000
   NEffective        :  1.000000000E+006

 Data points info
   Mean coordinates                 :   1.349946238E-004   0.000000000E+000   0.000000000E+000
   Std. dev. coordinates            :   9.997440587E-001   0.000000000E+000   0.000000000E+000
   Std. sigma scale                 :   9.997440587E-001
   Global smoothing scale Silverman :   6.681540100E-002

 Kernels info
   initialSmoothing   :   6.681540100E-002   0.000000000E+000   0.000000000E+000

|-----------------------------------------------------------|
| Optimization                                              |
|-----------------------------------------------------------|
| Loop |  hHatOverDelta  |     ALMISE      |      RMSE      |
|-----------------------------------------------------------|
     0  6.681540100E-001  0.000000000E+000  6.719855088E-004
     1  7.310821215E-001  8.762728974E-007  2.064226941E-003
     2  6.647273940E-001  1.053658080E-006  6.750596811E-004
     3  7.111835776E-001  8.905958034E-007  7.218853497E-004
     4  7.124343026E-001  8.357484791E-007  6.435616247E-004
     5  7.168557823E-001  7.519569897E-007  6.637422608E-004
     6  7.173141107E-001  7.549318364E-007  6.707219850E-004
     7  7.189760125E-001  7.520263290E-007  6.720291732E-004
    - ALMISE convergence :   2.7798E-04
|-----------------------------------------------------------|
   Optimization time :     0.40000E-02 seconds
|-----------------------------------------------------------|
 Elapsed time :     0.22000E-01 seconds
