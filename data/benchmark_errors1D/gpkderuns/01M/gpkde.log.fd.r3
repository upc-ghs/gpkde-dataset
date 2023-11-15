
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
File will be read until line:     100000
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
Loading time :     0.11900E+00 seconds

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
   - binSize            :   5.802308852E-002   0.000000000E+000   0.000000000E+000
   - domainSize         :   1.200000000E+001   0.000000000E+000   0.000000000E+000
   - domainOrigin       :  -6.000000000E+000   0.000000000E+000   0.000000000E+000
   - domainGridSize     :       207         1         1
   ---------------
   Dimensionality for reconstruction is determined from domain grid size.
   Will perform reconstruction in  1 dimensions.
   Max count         :  2.343000000E+003
   Max raw density   :  4.038047715E+004
   Min count         :  0.000000000E+000
   Min raw density   :  0.000000000E+000
   Mean raw density  :  1.231037045E+004
   Active bins       :      140
   NPoints           :   100000
   NEffective        :  1.000000000E+005

 Data points info
   Mean coordinates                 :   4.686010205E-003   0.000000000E+000   0.000000000E+000
   Std. dev. coordinates            :   9.983278383E-001   0.000000000E+000   0.000000000E+000
   Std. sigma scale                 :   9.983278383E-001
   Global smoothing scale Silverman :   1.057452647E-001

 Kernels info
   initialSmoothing   :   1.057452647E-001   0.000000000E+000   0.000000000E+000

|-----------------------------------------------------------|
| Optimization                                              |
|-----------------------------------------------------------|
| Loop |  hHatOverDelta  |     ALMISE      |      RMSE      |
|-----------------------------------------------------------|
     0  1.822468735E+000  0.000000000E+000  3.753855099E-003
     1  1.834466734E+000  5.914139092E-006  4.591861225E-003
     2  1.685399725E+000  6.610774074E-006  3.591203337E-003
     3  1.802262823E+000  5.625103354E-006  3.718089688E-003
     4  1.808646897E+000  5.081593270E-006  3.745980847E-003
     5  1.814785996E+000  5.136621440E-006  3.757206483E-003
     6  1.817653631E+000  5.108909219E-006  3.758712265E-003
     7  1.819769960E+000  5.117855789E-006  3.759227252E-003
    - ALMISE convergence :   8.5709E-05
|-----------------------------------------------------------|
   Optimization time :     0.70000E-02 seconds
|-----------------------------------------------------------|
 Elapsed time :     0.33000E-01 seconds
