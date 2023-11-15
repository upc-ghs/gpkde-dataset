
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
Reconstruction output will be written to file: gpkde.out.fd.r3
Output column format will default to format 0 with bin ids and density data.
Output data format will default to text-plain data file.
Will read reconstruction grid parameters. 
Will allocate grid for reconstruction using domain size.
Selected automatic bin size selection with Freedman-Diaconis rule, will verify 1D domainSize.
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
Loading time :     0.10000E-01 seconds

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
   - binSize            :   1.236931115E-001   0.000000000E+000   0.000000000E+000
   - domainSize         :   1.200000000E+001   0.000000000E+000   0.000000000E+000
   - domainOrigin       :  -6.000000000E+000   0.000000000E+000   0.000000000E+000
   - domainGridSize     :        97         1         1
   ---------------
   Dimensionality for reconstruction is determined from domain grid size.
   Will perform reconstruction in  1 dimensions.
   Max count         :  5.240000000E+002
   Max raw density   :  4.236290879E+003
   Min count         :  0.000000000E+000
   Min raw density   :  0.000000000E+000
   Mean raw density  :  1.347420763E+003
   Active bins       :       60
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
     0  1.352272156E+000  0.000000000E+000  9.961019134E-003
     1  1.356009702E+000  3.736091850E-005  1.007263086E-002
     2  1.328114440E+000  3.705108616E-005  9.829032937E-003
     3  1.340748071E+000  3.381281576E-005  9.950902171E-003
     4  1.352922084E+000  3.343294537E-005  1.000211444E-002
     5  1.360805679E+000  3.317699422E-005  1.000933992E-002
    - ALMISE convergence :   8.7217E-04
|-----------------------------------------------------------|
   Optimization time :     0.20000E-02 seconds
|-----------------------------------------------------------|
 Elapsed time :     0.30000E-02 seconds
