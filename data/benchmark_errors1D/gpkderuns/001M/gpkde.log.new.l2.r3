
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
Loading time :     0.15000E-01 seconds

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
   Max count         :  2.210000000E+002
   Max raw density   :  4.420000000E+003
   Min count         :  0.000000000E+000
   Min raw density   :  0.000000000E+000
   Mean raw density  :  1.428571429E+003
   Active bins       :      140
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
     0  3.345335012E+000  0.000000000E+000  1.506213273E-002
     1  3.348560533E+000  3.871937820E-005  1.511075633E-002
     2  3.287833441E+000  3.840098282E-005  1.493515118E-002
     3  3.309942701E+000  3.515006248E-005  1.502240835E-002
     4  3.346936786E+000  3.475638616E-005  1.507628143E-002
     5  3.357988927E+000  3.446355957E-005  1.508336175E-002
    - ALMISE convergence :   5.7793E-04
|-----------------------------------------------------------|
   Optimization time :     0.60000E-02 seconds
|-----------------------------------------------------------|
 Elapsed time :     0.70000E-02 seconds
