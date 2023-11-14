import numpy as np 
import pandas as pd
import os 
import matplotlib.pyplot as plt
from scipy.stats import norm

# load the reference high res reconstruction
basedir = os.path.join( os.getcwd(), 'gpkdeout' )
bdf     = pd.read_csv(
        os.path.join( basedir, 'HIGHRES', 'gpkde.out.base' ),
        header=None,
        delim_whitespace=True,
        skiprows=0,
        index_col=None
    )

# sims
NREL = 4
wfs  = [0, 1, 2, 3]
sims = [
    {
        'outdir': 'NMR3',
        'NM'    : 3
    },
    {
        'outdir': 'NMR5',
        'NM'    : 5
    },
    {
        'outdir': 'NMR8',
        'NM'    : 8
    },
    {
        'outdir': 'NMR10',
        'NM'    : 10
    },
]

# Grid size
nx = 400
ny = 200

# load the reference HIGHRES data
colx   = 0
coly   = 1
colz   = 2
cold   = 3
colh   = 4
binx   = bdf[colx].to_numpy().astype(np.int32)
biny   = bdf[coly].to_numpy().astype(np.int32)
bdens  = np.full( (nx,ny), 0.0 )
bdens[binx-1,biny-1] = bdf[ cold ].to_numpy().astype(np.float32)

# Loop over sims
for si in sims:

    # get the particle id
    # INFO: NM**2 is the avg number of particles per cell
    NM = si['NM']
    for nr in range(NREL):

        # load the particles mass/weight statistics of the realization
        data     = np.load( os.path.join( basedir, si['outdir'], 'statsweights.real.'+str(nr)+'.nm.'+str(NM)+'.npz' ) )
        sigmas   = data['std']

        # for each method for handling non uniform weights
        for wf in wfs:

            # pass eveything in the stats file to the postprocessed file
            copydata = {}
            for dfi in data.files:
                copydata[dfi] = data[dfi]

            # create the error holder 
            errors = np.zeros(shape=(len(sigmas),))
            wdens  = np.full( (nx,ny), 0.0 )

            # compute the error for each degree of variability of weights
            for ids, sigma in enumerate(sigmas):
                try:
                    # load the reconstruction
                    odf = pd.read_csv(
                            os.path.join(
                                basedir,
                                si['outdir'],
                                'gpkde.out.nmr.'+str(NM)+'.i'+str(ids)+'.r'+str(nr)+'.r'+str(nr)+'.wf'+str(wf)
                            ),
                            header=None,
                            delim_whitespace=True,
                            skiprows=0,
                            index_col=None
                        )
                except Exception as e:
                    break

                # fill the density and compute RMSE error for this case
                binx                 = odf[colx].to_numpy().astype(np.int32)
                biny                 = odf[coly].to_numpy().astype(np.int32)
                wdens[:,:]           = 0.0
                wdens[binx-1,biny-1] = odf[ cold ].to_numpy().astype(np.float32)
                errors[ids]          = np.sqrt( np.sum( (bdens-wdens)**2 )/(nx*ny) )

            # save errors 
            copydata['errors']       = errors

            # save postprocessed data 
            np.savez(
                os.path.join(
                    basedir,
                    si['outdir'],
                    'postdataRMSE.nr.'+str(nr)+'.wf.'+str(wf)+'.npz' ),
                **copydata )
