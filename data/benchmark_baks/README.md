## Benchmark BAKS
Dataset for the runtimes benchmark test comparing [GPKDE](https://github.com/upc-ghs/gpkde.git) with [BAKS](https://doi.org/10.5281/zenodo.2762790). Problem considers a two-dimensional distribution of particles with uniform mass.

Concentration reconstruction was performed on a Intel® Core™ i7-9700 CPU @ 3.00GHz processor.

### Folders

- ```logfiles```: contains the logfiles generated with [GPKDE](https://github.com/upc-ghs/gpkde.git).
- ```particles```: contains the source particle sets used for performing reconstruction.
- ```gpkdesims```: [GPKDE](https://github.com/upc-ghs/gpkde.git) files to perform reconstruction.

### Files:

- ```get_data.py```: generates ```data.csv```, gathering the dataset from [GPKDE](https://github.com/upc-ghs/gpkde.git) models.
- ```figure_bars.py```: loads ```data.csv``` and generates the figure comparing runtimes.
- ```runbaks.m```: MATLAB routine running the BAKS program. **Note** that in order to run this file, the [BAKS source code](https://doi.org/10.5281/zenodo.2762790) is required and MATLAB should be installed in your system. 

