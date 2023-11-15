
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
Loading time :     0.12700E+00 seconds

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
   Max count         :  2.250000000E+002
   Max raw density   :  4.500000000E+004
   Min count         :  0.000000000E+000
   Min raw density   :  0.000000000E+000
   Mean raw density  :  1.454545455E+004
   Active bins       :     1375
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
     0  2.114905295E+001  0.000000000E+000  1.650368392E-002
     1  2.112857765E+001  6.450306726E-006  1.674867090E-002
     2  1.905666563E+001  7.204138249E-006  1.646489840E-002
     3  2.064894361E+001  6.142124358E-006  1.649369179E-002
     4  2.075485285E+001  5.556019091E-006  1.649990923E-002
     5  2.085073033E+001  5.612189044E-006  1.650352514E-002
     6  2.088185754E+001  5.580357853E-006  1.650421210E-002
     7  2.090151022E+001  5.588536005E-006  1.650455951E-002
    - ALMISE convergence :   8.7969E-05
|-----------------------------------------------------------|
   Optimization time :     0.38600E+00 seconds
|-----------------------------------------------------------|
 Elapsed time :     0.39300E+00 seconds
