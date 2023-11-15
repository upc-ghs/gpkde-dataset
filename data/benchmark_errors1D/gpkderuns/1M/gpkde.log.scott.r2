
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
Reconstruction output will be written to file: gpkde.out.scott.r2
Output column format will default to format 0 with bin ids and density data.
Output data format will default to text-plain data file.
Will read reconstruction grid parameters. 
Will allocate grid for reconstruction using domain size.
Selected automatic bin size selection with multidimensional Scott's rule.
Default to unitary bin factor. 
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
Loading time :     0.11570E+01 seconds

  Initialize GPKDE 
 ------------------

-----------------------
 GPKDE is initializing 
 GPKDE is initialized without a predefined grid, defined later. 
----------------------------------------------------------------

Opened output unit for writing densities.

  Density reconstruction 
 ------------------------
Will perform density reconstruction in parallel.
Number of threads:   4

 Histogram info 
  Initializing Histogram
   Histogram grid will follow domain grid size.
   Histogram determines dimensions to be analyzed based on bin sizes.
   Will compute Histogram considering 1 dimensions.
   Grid parameters
   ---------------
   - binSize            :   3.491700997E-002   0.000000000E+000   0.000000000E+000
   - domainSize         :   1.200000000E+001   0.000000000E+000   0.000000000E+000
   - domainOrigin       :  -6.000000000E+000   0.000000000E+000   0.000000000E+000
   - domainGridSize     :       344         1         1
   ---------------
   Dimensionality for reconstruction is determined from domain grid size.
   Will perform reconstruction in  1 dimensions.
   Max count         :  1.405300000E+004
   Max raw density   :  4.024685966E+005
   Min count         :  0.000000000E+000
   Min raw density   :  0.000000000E+000
   Mean raw density  :  1.114371072E+005
   Active bins       :      257
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
     0  1.914971519E+000  0.000000000E+000  1.628119066E-003
     1  1.999007547E+000  9.044969748E-007  2.930579594E-003
     2  1.759694376E+000  1.125097137E-006  1.595459518E-003
     3  1.957667108E+000  8.963440102E-007  1.645025208E-003
     4  1.978481904E+000  8.552157301E-007  1.618890479E-003
     5  1.985478715E+000  7.751760553E-007  1.625063824E-003
     6  1.986391551E+000  7.783148824E-007  1.627837087E-003
     7  1.990531596E+000  7.761514983E-007  1.627858683E-003
    - ALMISE convergence :   2.7893E-04
|-----------------------------------------------------------|
   Optimization time :     0.13000E-01 seconds
|-----------------------------------------------------------|
 Elapsed time :     0.42000E-01 seconds
