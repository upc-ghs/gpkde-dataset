## Benchmark Cluster
Concentration reconstruction from three-dimensional sets of particles in order to evaluate the parallel scalability of the [GPKDE](https://github.com/upc-ghs/gpkde.git) program. 

Simulations were performed on a node of the cluster [TITANI](https://caminstech.upc.edu/es/serveis/calculintensiu), with an Intel® Xeon® 6230@2.1 GHz processor, 20 cores.

### Folders
- ```logfiles``` : the source log files generated from the program execution.
- ```particles```: the source particle distributions (from Np1=28000 until Np3=1792000), considering three different snapshots of a Random Walk Particle Tracking simulation (```particles_1_*```, ```particles_2_*```, ```particles_3_*```).
- ```gpkdesims```: [GPKDE](https://github.com/upc-ghs/gpkde.git) files to perform reconstruction.

### Files
- ```get_data.py``` : read the log files from the [GPKDE](https://github.com/upc-ghs/gpkde.git) runs and generates the consolidated file ```data.csv```.
- ```figure_scaling.py```: reads ```data.csv``` and generates the figure for the determining the scaling.
