## Benchmark non uniform mass
Postprocess the concentration maps reconstructed with the different methods for handling particle sets with non-uniform mass.

Simulations consider one snapshot of a two-dimensional heterogeneous flow system, with added variability of the individual particle weights.

Concentraion maps are organized by the average initial number of particles inside each cell (ids NM{number}, the average count inside each cell is {number}^2). For a given number of particles, different degrees of variability of the particle weights are considered (ids i{number}, the \sigma_n in the article). For a given degree of variability, four realizations ({nr}) of the particle simulation are considered, with statistics of the non-uniform mass distribution stored in statsweights.real.{nr}.nm.{nm}.npz.

### Folders
- ```gpkdeout``` : contains the reconstructed concentration maps for all the combination of parameters, grouped by the identifier of the average number of particles per cell. The ```HIGHRES``` folder contains the reconstructed concentration map from the high resolution reference simulation with 28M particles. 

### Files
- ```postprocess.py``` : computes the RMSE error between all the concentration maps, with respect to the reference high resolution reconstruction. It stores ```.npz``` files with the processed error in each particle folder.
- ```figure_errormass.py```: load the postprocessed files and plots the error versus the variability of particle weights. **Note** the labels of methods for handling the variability of weights shown in the figure follow the indexation in the article.
