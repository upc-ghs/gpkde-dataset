
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
File will be read until line:     100000
Reconstruction output will be written to file: gpkde.out.fd.r2
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
Loading time :     0.14500E+00 seconds

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
   - binSize            :   5.765041710E-002   0.000000000E+000   0.000000000E+000
   - domainSize         :   1.200000000E+001   0.000000000E+000   0.000000000E+000
   - domainOrigin       :  -6.000000000E+000   0.000000000E+000   0.000000000E+000
   - domainGridSize     :       208         1         1
   ---------------
   Dimensionality for reconstruction is determined from domain grid size.
   Will perform reconstruction in  1 dimensions.
   Max count         :  2.347000000E+003
   Max raw density   :  4.071089366E+004
   Min count         :  0.000000000E+000
   Min raw density   :  0.000000000E+000
   Mean raw density  :  1.230207679E+004
   Active bins       :      141
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
     0  1.830833474E+000  0.000000000E+000  4.031652898E-003
     1  1.814391127E+000  5.935906777E-006  4.508018563E-003
     2  1.699290157E+000  6.416695479E-006  3.938287060E-003
     3  1.789113563E+000  5.594378802E-006  4.014207924E-003
     4  1.793864145E+000  5.074750654E-006  4.027647236E-003
     5  1.800083728E+000  5.151403640E-006  4.035615886E-003
     6  1.805445538E+000  5.122872555E-006  4.036418207E-003
     7  1.804634427E+000  5.132904115E-006  4.036803123E-003
    - ALMISE convergence :   1.4474E-04
|-----------------------------------------------------------|
   Optimization time :     0.50000E-02 seconds
|-----------------------------------------------------------|
 Elapsed time :     0.20000E-01 seconds
