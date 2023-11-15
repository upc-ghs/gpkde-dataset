
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
File will be read until line:    1000000
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
Loading time :     0.89400E+00 seconds

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
   - binSize            :   2.697968146E-002   0.000000000E+000   0.000000000E+000
   - domainSize         :   1.200000000E+001   0.000000000E+000   0.000000000E+000
   - domainOrigin       :  -6.000000000E+000   0.000000000E+000   0.000000000E+000
   - domainGridSize     :       445         1         1
   ---------------
   Dimensionality for reconstruction is determined from domain grid size.
   Will perform reconstruction in  1 dimensions.
   Max count         :  1.090000000E+004
   Max raw density   :  4.040077350E+005
   Min count         :  0.000000000E+000
   Min raw density   :  0.000000000E+000
   Mean raw density  :  1.126593612E+005
   Active bins       :      329
   NPoints           :  1000000
   NEffective        :  1.000000000E+006

 Data points info
   Mean coordinates                 :   1.349946238E-004   0.000000000E+000   0.000000000E+000
   Std. dev. coordinates            :   9.997440587E-001   0.000000000E+000   0.000000000E+000
   Std. sigma scale                 :   9.997440587E-001
   Global smoothing scale Silverman :   6.681540100E-002

 Kernels info
   initialSmoothing   :   6.681540100E-002   0.000000000E+000   0.000000000E+000

|-----------------------------------------------------------|
| Optimization                                              |
|-----------------------------------------------------------|
| Loop |  hHatOverDelta  |     ALMISE      |      RMSE      |
|-----------------------------------------------------------|
     0  2.476508149E+000  0.000000000E+000  1.964344229E-003
     1  2.583856469E+000  9.121615580E-007  2.905076753E-003
     2  2.287858609E+000  1.104615820E-006  1.936342878E-003
     3  2.505842057E+000  9.306063435E-007  1.975378870E-003
     4  2.533630306E+000  8.694575985E-007  1.952038083E-003
     5  2.543894466E+000  7.826145550E-007  1.960128812E-003
     6  2.550112653E+000  7.869673004E-007  1.962692875E-003
     7  2.553084916E+000  7.846323919E-007  1.962811604E-003
    - ALMISE convergence :   2.7649E-04
|-----------------------------------------------------------|
   Optimization time :     0.19000E-01 seconds
|-----------------------------------------------------------|
 Elapsed time :     0.20100E+00 seconds
