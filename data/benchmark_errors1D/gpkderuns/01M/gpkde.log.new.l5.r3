
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
Input data file name: particles_gaussian_r3.csv
Input data expected to be specified as (x,y,z).
File will be read until line:     100000
Reconstruction output will be written to file: gpkde.out.new.l5.r3
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
Loading time :     0.10200E+00 seconds

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
   - binSize            :   1.000000000E-003   0.000000000E+000   0.000000000E+000
   - domainSize         :   1.200000000E+001   0.000000000E+000   0.000000000E+000
   - domainOrigin       :  -6.000000000E+000   0.000000000E+000   0.000000000E+000
   - domainGridSize     :     12000         1         1
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
   Max count         :  5.700000000E+001
   Max raw density   :  5.700000000E+004
   Min count         :  0.000000000E+000
   Min raw density   :  0.000000000E+000
   Mean raw density  :  1.723840717E+004
   Active bins       :     5801
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
     0  1.057452647E+002  0.000000000E+000  4.134375278E-002
     1  1.069772580E+002  7.024343861E-006  4.146085130E-002
     2  9.549966777E+001  7.840490552E-006  4.132546873E-002
     3  1.042136721E+002  6.688379366E-006  4.133747500E-002
     4  1.048315880E+002  6.048896872E-006  4.134049745E-002
     5  1.053824351E+002  6.107562600E-006  4.134187587E-002
     6  1.055711312E+002  6.072373151E-006  4.134223532E-002
     7  1.056773033E+002  6.080817173E-006  4.134231301E-002
    - ALMISE convergence :   3.4005E-05
|-----------------------------------------------------------|
   Optimization time :     0.77200E+01 seconds
|-----------------------------------------------------------|
 Elapsed time :     0.77450E+01 seconds
