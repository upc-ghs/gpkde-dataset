import pandas as pd
import matplotlib.pyplot as plt
import os
import numpy as np

fig      = plt.figure(figsize=(10,10))
ax       = fig.add_subplot(111)
df       = pd.read_csv( os.path.join( os.getcwd(), 'data.csv' ) )
nparticles = np.unique(df['nparticles'].to_numpy())
nbins      = np.unique(df['nbins'].to_numpy())
bdf        = pd.read_csv( os.path.join( os.getcwd(), 'baksdata.csv' ) )
baksdata   = bdf['time'].to_numpy()

time_lims  = [5e-2, 1e2]
width      = 0.35
xposlabels = ['25', '70', '180', '630']
nsetth     = len(xposlabels)
xpos       = np.arange(nsetth) # it has to adjust to the set of particles
thcols     = 'nthreads'
ticol      = 'time'

hdbaks = ax.bar( xpos - 1*width/nsetth, baksdata, width/nsetth, color=3*[0.85], edgecolor='k', linewidth=0.2, zorder=5, hatch='//' )
hdb1 = ax.bar( xpos + 1*width/nsetth, df[ticol][ df[thcols] == 1  ], width/nsetth, color=3*[0.1], edgecolor='k', linewidth=0.2, zorder=5 )
hdb2 = ax.bar( xpos + 2*width/nsetth, df[ticol][ df[thcols] == 2  ], width/nsetth, color=3*[0.3], edgecolor='k', linewidth=0.2, zorder=5 )
hdb3 = ax.bar( xpos + 3*width/nsetth, df[ticol][ df[thcols] == 4  ], width/nsetth, color=3*[0.5], edgecolor='k', linewidth=0.2, zorder=5 )
hdb4 = ax.bar( xpos + 4*width/nsetth, df[ticol][ df[thcols] == 8  ], width/nsetth, color=3*[0.7], edgecolor='k', linewidth=0.2, zorder=5 )

ax.set_xticks( xpos )
ax.set_xticklabels( xposlabels )
ax.set_yscale('log')
ax.set_ylim( time_lims )

# Grid
ax.grid( axis='y', which='major', linewidth=0.35, linestyle=':', color=3*[0.5], zorder=1, alpha=0.5 )
ax.grid( axis='y', which='minor', linewidth=0.35, linestyle=':', color=3*[0.5], zorder=1, alpha=0.5 )
ax.set_ylabel('$T[s]$', rotation=0, labelpad=-2.5)
ax.set_xlabel('$N_p \\times 10^3$', rotation=0, labelpad=3)

#########################
ax.legend([
        hdbaks,
        hdb1,
        hdb2,
        hdb3,
        hdb4,
    ], [
        'BAKS', 
        'GPKDE $N = 1$', 
        'GPKDE $N = 2$',
        'GPKDE $N = 4$',
        'GPKDE $N = 8$',
    ],
    loc='upper right',
    ncol=1,
    borderaxespad=0.1,
    borderpad=0.4,
    columnspacing=0.5,
    handletextpad=0.3,
    fontsize = 7
)

plt.savefig( 'figure_bars_.png' )
