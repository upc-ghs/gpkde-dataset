## 3D heterogeneous distribution
Reconstruction of an heterogeneous distribution of particles generated with a Random Walk Particle Tracking (RWPT) solver on a three dimensional heterogeneous aquifer.
 
Run reconstruction
```
gpkde gpkde.sim
```

The program writes density to `gpkde.out`. The `python` routine `exportovtk.py` generates files for visualization with `paraview`. The generated files are `gpkde.vts` with the smoothed density reconstruction, and `hist.vts` with the histogram density reconstruction. Each of these files contains a single variable (```rho```). The ```ex03_3dhet.pvsm``` file is a `paraview` state with some visualizations of the density distribution.

Be sure that the packages `numpy, pandas and pyevtk` are installed. If not, a `requirements.txt` file is included and can be installed with

```
pip install -r requirements.txt
```

Note: while modifying the grid input parameters in `gpkde.sim` like the bin or domain sizes, be sure to update these values also on `exportovtk.py` for consistency while export results.
