
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
File will be read until line:       1000
Reconstruction output will be written to file: gpkde.out.scott.r3
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
Loading time :     0.10000E-02 seconds

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
   - binSize            :   3.659433755E-001   0.000000000E+000   0.000000000E+000
   - domainSize         :   1.200000000E+001   0.000000000E+000   0.000000000E+000
   - domainOrigin       :  -6.000000000E+000   0.000000000E+000   0.000000000E+000
   - domainGridSize     :        33         1         1
   ---------------
   Dimensionality for reconstruction is determined from domain grid size.
   Will perform reconstruction in  1 dimensions.
   Max count         :  1.600000000E+002
   Max raw density   :  4.372261139E+002
   Min count         :  0.000000000E+000
   Min raw density   :  0.000000000E+000
   Mean raw density  :  1.438243796E+002
   Active bins       :       19
   NPoints           :     1000
   NEffective        :  1.000000000E+003

 Data points info
   Mean coordinates                 :   6.008873214E-003   0.000000000E+000   0.000000000E+000
   Std. dev. coordinates            :   1.048548351E+000   0.000000000E+000   0.000000000E+000
   Std. sigma scale                 :   1.048548351E+000
   Global smoothing scale Silverman :   2.789820164E-001

 Kernels info
   initialSmoothing   :   2.789820164E-001   0.000000000E+000   0.000000000E+000

|-----------------------------------------------------------|
| Optimization                                              |
|-----------------------------------------------------------|
| Loop |  hHatOverDelta  |     ALMISE      |      RMSE      |
|-----------------------------------------------------------|
     0  7.623638931E-001  0.000000000E+000  1.368706994E-002
     1  7.862719981E-001  2.156637276E-004  1.294678522E-002
     2  7.636362672E-001  2.122665015E-004  1.261406208E-002
     3  7.612435065E-001  2.173724664E-004  1.259184180E-002
     4  7.606622370E-001  2.170564389E-004  1.255114808E-002
    - Density convergence :   5.7255E-04
|-----------------------------------------------------------|
   Optimization time :     0.20000E-02 seconds
|-----------------------------------------------------------|
 Elapsed time :     0.20000E-02 seconds
