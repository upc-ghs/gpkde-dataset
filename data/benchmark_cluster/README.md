## Parallel scaling
Concentration reconstruction from three-dimensional sets of particles in order to evaluate the parallel scalalability of the [GPKDE](https://github.com/upc-ghs/gpkde.git) program. 

Simulations were performed on a node of the cluster [TITANI](https://caminstech.upc.edu/es/serveis/calculintensiu), with an Intel:registered: Xeon:registered: 6230@2.1 GHz

### Folders
- ```logfiles``` : the source log files generated from the program execution
- ```particles```: the source particle distributions (from Np1=28000 until Np3=1792000)

### Files
- ```get_data.py``` : read the log files and generates the consolidated file ```data.csv```
- ```figure_scaling.py```: reads ```data.csv``` and generates the figure for the determining the scaling
