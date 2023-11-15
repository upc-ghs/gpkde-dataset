
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
File will be read until line:     100000
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
Loading time :     0.99000E-01 seconds

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
   - binSize            :   7.492423409E-002   0.000000000E+000   0.000000000E+000
   - domainSize         :   1.200000000E+001   0.000000000E+000   0.000000000E+000
   - domainOrigin       :  -6.000000000E+000   0.000000000E+000   0.000000000E+000
   - domainGridSize     :       160         1         1
   ---------------
   Dimensionality for reconstruction is determined from domain grid size.
   Will perform reconstruction in  1 dimensions.
   Max count         :  3.042000000E+003
   Max raw density   :  4.060101564E+004
   Min count         :  0.000000000E+000
   Min raw density   :  0.000000000E+000
   Mean raw density  :  1.191680040E+004
   Active bins       :      112
   NPoints           :   100000
   NEffective        :  1.000000000E+005

 Data points info
   Mean coordinates                 :  -1.175592323E-003   0.000000000E+000   0.000000000E+000
   Std. dev. coordinates            :   9.964684452E-001   0.000000000E+000   0.000000000E+000
   Std. sigma scale                 :   9.964684452E-001
   Global smoothing scale Silverman :   1.055483134E-001

 Kernels info
   initialSmoothing   :   1.055483134E-001   0.000000000E+000   0.000000000E+000

|-----------------------------------------------------------|
| Optimization                                              |
|-----------------------------------------------------------|
| Loop |  hHatOverDelta  |     ALMISE      |      RMSE      |
|-----------------------------------------------------------|
     0  1.408733965E+000  0.000000000E+000  3.209012579E-003
     1  1.401141137E+000  5.827271326E-006  3.821444168E-003
     2  1.318983868E+000  6.308169107E-006  3.114196337E-003
     3  1.390963561E+000  5.493428746E-006  3.187209561E-003
     4  1.394685271E+000  4.982726253E-006  3.203632820E-003
     5  1.401890109E+000  5.056545233E-006  3.212779426E-003
     6  1.405266338E+000  5.025277916E-006  3.214001546E-003
     7  1.405841424E+000  5.035281710E-006  3.214530447E-003
    - ALMISE convergence :   1.1671E-04
|-----------------------------------------------------------|
   Optimization time :     0.50000E-02 seconds
|-----------------------------------------------------------|
 Elapsed time :     0.80000E-02 seconds
