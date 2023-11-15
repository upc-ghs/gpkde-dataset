
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
Reconstruction output will be written to file: gpkde.out.new.l2.r3
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
   - binSize            :   5.000000000E-002   0.000000000E+000   0.000000000E+000
   - domainSize         :   1.200000000E+001   0.000000000E+000   0.000000000E+000
   - domainOrigin       :  -6.000000000E+000   0.000000000E+000   0.000000000E+000
   - domainGridSize     :       240         1         1
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
   Max count         :  2.700000000E+001
   Max raw density   :  5.400000000E+002
   Min count         :  0.000000000E+000
   Min raw density   :  0.000000000E+000
   Mean raw density  :  1.754385965E+002
   Active bins       :      114
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
     0  5.579640329E+000  0.000000000E+000  5.581023316E-002
     1  5.697018416E+000  2.429423318E-004  5.547031510E-002
     2  5.453916582E+000  2.406926238E-004  5.530959581E-002
     3  5.426424681E+000  2.481401419E-004  5.526991075E-002
     4  5.410558524E+000  2.486781451E-004  5.524481254E-002
    - Density convergence :   8.9641E-04
|-----------------------------------------------------------|
   Optimization time :     0.40000E-02 seconds
|-----------------------------------------------------------|
 Elapsed time :     0.40000E-02 seconds
