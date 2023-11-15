
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
Reconstruction output will be written to file: gpkde.out.new.l3.r3
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
Loading time :     0.10000E-02 seconds

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
   - binSize            :   1.000000000E-002   0.000000000E+000   0.000000000E+000
   - domainSize         :   1.200000000E+001   0.000000000E+000   0.000000000E+000
   - domainOrigin       :  -6.000000000E+000   0.000000000E+000   0.000000000E+000
   - domainGridSize     :      1200         1         1
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
   Max count         :  1.300000000E+001
   Max raw density   :  1.300000000E+003
   Min count         :  0.000000000E+000
   Min raw density   :  0.000000000E+000
   Mean raw density  :  2.531645570E+002
   Active bins       :      395
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
     0  2.789820164E+001  0.000000000E+000  1.428823433E-001
     1  2.824149627E+001  2.795524022E-004  1.429058698E-001
     2  2.685371788E+001  2.742814165E-004  1.427843228E-001
     3  2.681848893E+001  2.829122062E-004  1.427836690E-001
     4  2.670841864E+001  2.833342105E-004  1.427747413E-001
    - Density convergence :   5.7399E-04
|-----------------------------------------------------------|
   Optimization time :     0.50000E-01 seconds
|-----------------------------------------------------------|
 Elapsed time :     0.52000E-01 seconds
