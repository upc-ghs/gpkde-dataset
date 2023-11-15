
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
File will be read until line:       1000
Reconstruction output will be written to file: gpkde.out.new.l1.r2
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
   - binSize            :   1.000000000E-001   0.000000000E+000   0.000000000E+000
   - domainSize         :   1.200000000E+001   0.000000000E+000   0.000000000E+000
   - domainOrigin       :  -6.000000000E+000   0.000000000E+000   0.000000000E+000
   - domainGridSize     :       120         1         1
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
   Max count         :  4.800000000E+001
   Max raw density   :  4.800000000E+002
   Min count         :  0.000000000E+000
   Min raw density   :  0.000000000E+000
   Mean raw density  :  1.886792453E+002
   Active bins       :       53
   NPoints           :     1000
   NEffective        :  1.000000000E+003

 Data points info
   Mean coordinates                 :  -2.023339018E-002   0.000000000E+000   0.000000000E+000
   Std. dev. coordinates            :   9.801646924E-001   0.000000000E+000   0.000000000E+000
   Std. sigma scale                 :   9.801646924E-001
   Global smoothing scale Silverman :   2.607875183E-001

 Kernels info
   initialSmoothing   :   2.607875183E-001   0.000000000E+000   0.000000000E+000

|-----------------------------------------------------------|
| Optimization                                              |
|-----------------------------------------------------------|
| Loop |  hHatOverDelta  |     ALMISE      |      RMSE      |
|-----------------------------------------------------------|
     0  2.607875183E+000  0.000000000E+000  3.286117447E-002
     1  2.788986811E+000  2.652431244E-004  3.263890052E-002
     2  2.685782153E+000  2.559197613E-004  3.265829485E-002
     3  2.713659073E+000  2.598131202E-004  3.268765667E-002
     4  2.713253548E+000  2.577266145E-004  3.269848828E-002
    - ALMISE convergence :   7.5425E-04
|-----------------------------------------------------------|
   Optimization time :     0.20000E-02 seconds
|-----------------------------------------------------------|
 Elapsed time :     0.20000E-02 seconds
