import os
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import matplotlib.colors as colors

# file
basedir = os.getcwd()
fname   = 'gpkde.out.base'

# grid size
nx     = 400
ny     = 200
nz     = 1

# load data
colx = 0
coly = 1
colz = 2
cold = 3
colh = 4
df   = pd.read_csv( os.path.join( basedir, fname ) ,
            header=None,
            delim_whitespace=True,
            skiprows=0,
            index_col=None
        )

# grid indexes in output file are one-based
binx = df[colx].to_numpy().astype(np.int32)
biny = df[coly].to_numpy().astype(np.int32)

# initialize and transfer to arrays
density = np.full( (nx,ny), 0.0 )
hist    = np.full( (nx,ny), 0.0 )
density[binx-1,biny-1] = df[ cold ].to_numpy().astype(np.float32)
hist[binx-1,biny-1]    = df[ colh ].to_numpy().astype(np.float32)

# figure
fig  = plt.figure(figsize=(10,10))
ax   = fig.add_subplot(211)
norm = colors.Normalize(vmin=0, vmax=1.2)
im   = ax.imshow(density[:,:].transpose()/np.max(hist),origin='lower')
ax.set_title('density')
im.set_norm(norm)
fig.colorbar(im,ax=ax)

ax  = fig.add_subplot(212)
im  = ax.imshow(hist[:,:].transpose()/np.max(hist),origin='lower')
ax.set_title('histogram')
im.set_norm(norm)
fig.colorbar(im,ax=ax)


fig.savefig('gpkde2dmap.png')
