import numpy as np 
import pandas as pd
import os 
import matplotlib.pyplot as plt
from scipy.stats import norm
import subprocess

basedir = os.path.join( os.getcwd(), 'gpkderuns' )



sims = [
    {
        'nparticles' : 1e3,
        'outdir'     : '0001M'
    },
    {
        'nparticles' : 1e4,
        'outdir'     : '001M'
    },
    {
        'nparticles' : 1e5,
        'outdir'     : '01M'
    },
    {
        'nparticles' : 1e6,
        'outdir'     : '1M'
    },
]


dirs      = ['0001M', '001M', '01M', '1M'            ]
npars     = [1e3    ,    1e4,   1e5,  1e6            ]
binmethod = ['scott', 'fd'                           ]

df = pd.DataFrame(
        columns=[
            'nparticles',
            'binmethod',
            'errordens',
            'nloops',
            'time',
        ]
    )
binsizeline  = '   - binSize            :'
gridsizeline = '   - domainGridSize     :'


# MORE 
colx   = 0
coly   = 1
colz   = 2
cold   = 3
colh   = 4

# grid
xo   = -6
xmax = 6

# number of realizations
NREL = 10
for idsim, sim in enumerate(sims):
    dire = sim['outdir']
    for nr in range(NREL):
        for bm in binmethod:
            outname = 'gpkde.out.'+bm+'.r'+str(nr)
            logname = 'gpkde.log.'+bm+'.r'+str(nr)
            f = open(os.path.join( basedir, dire, logname ), 'r' )
            while True:
                line = f.readline()
                if binsizeline in line:
                    lam = float(line.split(' ')[-7])
                if gridsizeline in line:
                    nbins = float(line.split(' ')[-19])
                    break
            line        = subprocess.check_output( [ 'tail', '-1', os.path.join( basedir, dire, logname ) ] )
            line        = line.decode('utf-8').strip()
            time        = float( line.split(' ')[-2] )
            line        = subprocess.check_output( [ 'tail', '-6', os.path.join( basedir, dire, logname ) ] )
            line        = line.decode('utf-8').strip()
            nloops      = float( line.split(' ')[0] )

            # load density df
            fname = os.path.join( basedir, dire, outname )
            sdf   = pd.read_csv( fname,
                    header=None,
                    delim_whitespace=True,
                    skiprows=0,
                    index_col=None
                )
            nx      = int(nbins)
            ny      = 1
            nz      = 1
            rowx    = sdf[colx].to_numpy().astype(np.int32)
            rowy    = sdf[coly].to_numpy().astype(np.int32)
            rowz    = sdf[colz].to_numpy().astype(np.int32)
            density = np.full( (nx,ny,nz), 0.0 )
            hist    = np.full( (nx,ny,nz), 0.0 )
            density[ rowx-1, rowy-1, rowz-1 ] = sdf[ cold ].to_numpy().astype(np.float32)
            hist[    rowx-1, rowy-1, rowz-1 ] = sdf[ colh ].to_numpy().astype(np.float32)

            # DOMAIN
            dx = lam
            xg = np.arange(xo+0.5*dx,xmax,dx)

            # ERROR
            tdf               = pd.DataFrame()
            tdf['nparticles'] = [ sim['nparticles'] ]
            tdf['binmethod']  = [ bm ]
            tdf['lambda']     = [ lam ]
            tdf['nloops']     = [ nloops ]
            tdf['time']       = [ time ]
            tdf['errordens']  = [ np.sqrt(sum((norm.pdf(xg,0,1)-density[:,0,0]/sim['nparticles'])**2)/len(xg) ) ]
            tdf['errorhist']  = [ np.sqrt(sum((norm.pdf(xg,0,1)-hist[:,0,0]   /sim['nparticles'])**2)/len(xg) ) ]
            df                = pd.concat( [df, tdf], axis=0 )

# sort
df.sort_values(['nparticles'])

# Write the output df
df.to_csv( 'dataautobin.csv' )
