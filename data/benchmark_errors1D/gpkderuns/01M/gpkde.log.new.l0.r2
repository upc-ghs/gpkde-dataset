
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
Reconstruction output will be written to file: gpkde.out.new.l0.r2
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
Loading time :     0.12100E+00 seconds

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
   - binSize            :   2.500000000E-001   0.000000000E+000   0.000000000E+000
   - domainSize         :   1.200000000E+001   0.000000000E+000   0.000000000E+000
   - domainOrigin       :  -6.000000000E+000   0.000000000E+000   0.000000000E+000
   - domainGridSize     :        48         1         1
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
   Max count         :  9.998000000E+003
   Max raw density   :  3.999200000E+004
   Min count         :  0.000000000E+000
   Min raw density   :  0.000000000E+000
   Mean raw density  :  1.111111111E+004
   Active bins       :       36
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
     0  4.221932536E-001  0.000000000E+000  1.302689258E-003
     1  4.685592928E-001  5.599665940E-006  2.373806748E-003
     2  4.465990103E-001  5.956628633E-006  1.215587779E-003
     3  4.415236193E-001  5.298706608E-006  1.222650637E-003
     4  4.475748415E-001  4.776405621E-006  1.300342938E-003
     5  4.441774775E-001  4.849137446E-006  1.316288788E-003
     6  4.483576515E-001  4.825086635E-006  1.317835441E-003
     7  4.456911706E-001  4.833856584E-006  1.317316707E-003
    - ALMISE convergence :   1.4984E-04
|-----------------------------------------------------------|
   Optimization time :     0.10000E-02 seconds
|-----------------------------------------------------------|
 Elapsed time :     0.30000E-02 seconds
