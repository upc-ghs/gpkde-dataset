## Benchmark non uniform mass
Postprocess the reconstructed concentration maps, considering the different methods for handling particle sets with non uniform mass. 

Simulations consider a two-dimensional heterogeneous system, with added variability of the individual particle weights. 

### Folders
- ```gpkdeout``` : contains the reconstructed concentration maps for all the combination of parameters, grouped for the identifier of the average number of particles per cell. The ```HIGHRES``` folder contains the reconstructed concentration map from the high resolution reference simulation with 28M particles. 

### Files
- ```postprocess.py``` : load the computed statistics of the particle weights, and computes the RMSE error between all the concentration maps, with respect to the reference high resolution. It stores ```.npz``` files in each folder. 
- ```figure_errormass.py```: load the postprocessed files and plots the error versus the variability of particle weights. **Note** the labels of methods for handling the variability of weights shown in the figure follow the indexation in the article.
