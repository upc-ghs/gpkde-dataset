import os
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression

## Load data
df  = pd.read_csv( os.path.join( os.getcwd(), 'data.csv' ) )

## Figure
fig      = plt.figure(figsize=(10,10))
ax       = fig.add_subplot(111)
scsz     = 12
sclw     = 0.21
colorts1 = 3*[0.85]
colorts2 = 3*[0.5]
colorts3 = 3*[0.15]

## Fit the data
equis = np.concatenate(
    (
        np.expand_dims(np.log(df['nthreads'].to_numpy()),axis=1),
        np.expand_dims(np.log(df['nbins'].to_numpy()), axis=1)
    ), axis=1)
ydata   = np.log(df['time'].to_numpy())
reg     = LinearRegression().fit(equis, ydata)
coef    = reg.coef_
fac     = np.exp(reg.intercept_ )

## 1:1 curve
ax.plot( np.arange(0,1.1*np.max(df['time'].to_numpy()),1), np.arange(0,1.1*np.max(df['time'].to_numpy()),1), linewidth=1, color='k', alpha=0.5, zorder=-1 )


## NP 28000
##########################
nparticles = 28000
marker     = 's' 
pdf        = df[df['nparticles']==nparticles]
# TS1
TSID       = 1
fdf        = pdf[ pdf['tsid'] == TSID ]
thefunc    = fac*fdf['nthreads'].to_numpy()**coef[0]*fdf['nbins'].to_numpy()**coef[1]
np1 = ax.scatter( thefunc, fdf['time'].to_numpy(), facecolor=colorts1, marker=marker, edgecolor='k', linewidth=sclw, s=scsz )
# TS2
TSID       = 2
fdf        = pdf[ pdf['tsid'] == TSID ]
thefunc    = fac*fdf['nthreads'].to_numpy()**coef[0]*fdf['nbins'].to_numpy()**coef[1]
ax.scatter( thefunc, fdf['time'].to_numpy(), facecolor=colorts2, marker=marker, edgecolor='k', linewidth=sclw, s=scsz )
# TS3
TSID       = 3
fdf        = pdf[ pdf['tsid'] == TSID ]
thefunc    = fac*fdf['nthreads'].to_numpy()**coef[0]*fdf['nbins'].to_numpy()**coef[1]
ax.scatter( thefunc, fdf['time'].to_numpy(), facecolor=colorts3, marker=marker, edgecolor='k', linewidth=sclw, s=scsz)
##########################

## NP 224000
##########################
nparticles = 224000
marker     = '*' 
pdf        = df[df['nparticles']==nparticles]
# TS1
TSID       = 1
fdf        = pdf[ pdf['tsid'] == TSID ]
thefunc    = fac*fdf['nthreads'].to_numpy()**coef[0]*fdf['nbins'].to_numpy()**coef[1]
np2 = ax.scatter( thefunc, fdf['time'].to_numpy(), facecolor=colorts1, marker=marker, edgecolor='k', linewidth=sclw, s=scsz )
# TS2
TSID       = 2
fdf        = pdf[ pdf['tsid'] == TSID ]
thefunc    = fac*fdf['nthreads'].to_numpy()**coef[0]*fdf['nbins'].to_numpy()**coef[1]
ax.scatter( thefunc, fdf['time'].to_numpy(), facecolor=colorts2, marker=marker, edgecolor='k', linewidth=sclw, s=scsz )
# TS3
TSID       = 3
fdf        = pdf[ pdf['tsid'] == TSID ]
thefunc    = fac*fdf['nthreads'].to_numpy()**coef[0]*fdf['nbins'].to_numpy()**coef[1]
ax.scatter( thefunc, fdf['time'].to_numpy(), facecolor=colorts3, marker=marker, edgecolor='k', linewidth=sclw, s=scsz)

## NP 1792000
##########################
nparticles = 1792000
marker     = '^' 
pdf        = df[df['nparticles']==nparticles]
# TS1
TSID       = 1
fdf        = pdf[ pdf['tsid'] == TSID ]
thefunc    = fac*fdf['nthreads'].to_numpy()**coef[0]*fdf['nbins'].to_numpy()**coef[1]
np3 = ax.scatter( thefunc, fdf['time'].to_numpy(), facecolor=colorts1, marker=marker, edgecolor='k', linewidth=sclw, s=scsz )
# TS2
TSID       = 2
fdf        = pdf[ pdf['tsid'] == TSID ]
thefunc    = fac*fdf['nthreads'].to_numpy()**coef[0]*fdf['nbins'].to_numpy()**coef[1]
ax.scatter( thefunc, fdf['time'].to_numpy(), facecolor=colorts2, marker=marker, edgecolor='k', linewidth=sclw, s=scsz )
# TS3
TSID       = 3
fdf        = pdf[ pdf['tsid'] == TSID ]
thefunc    = fac*fdf['nthreads'].to_numpy()**coef[0]*fdf['nbins'].to_numpy()**coef[1]
ax.scatter( thefunc, fdf['time'].to_numpy(), facecolor=colorts3, marker=marker, edgecolor='k', linewidth=sclw, s=scsz)

## NP 14336000
##########################
nparticles = 14336000
marker     = 'D' 
pdf        = df[df['nparticles']==nparticles]
# TS1
TSID       = 1
fdf        = pdf[ pdf['tsid'] == TSID ]
thefunc    = fac*fdf['nthreads'].to_numpy()**coef[0]*fdf['nbins'].to_numpy()**coef[1]
np4 = ax.scatter( thefunc, fdf['time'].to_numpy(), facecolor=colorts1, marker=marker, edgecolor='k', linewidth=sclw, s=scsz )
# TS2
TSID       = 2
fdf        = pdf[ pdf['tsid'] == TSID ]
thefunc    = fac*fdf['nthreads'].to_numpy()**coef[0]*fdf['nbins'].to_numpy()**coef[1]
ax.scatter( thefunc, fdf['time'].to_numpy(), facecolor=colorts2, marker=marker, edgecolor='k', linewidth=sclw, s=scsz )
# TS3
TSID       = 3
fdf        = pdf[ pdf['tsid'] == TSID ]
thefunc    = fac*fdf['nthreads'].to_numpy()**coef[0]*fdf['nbins'].to_numpy()**coef[1]
ax.scatter( thefunc, fdf['time'].to_numpy(), facecolor=colorts3, marker=marker, edgecolor='k', linewidth=sclw, s=scsz)

## NP 24006500
##########################
nparticles = 24006500
marker     = 'o' 
pdf        = df[df['nparticles']==nparticles]
# TS1
TSID       = 1
fdf        = pdf[ pdf['tsid'] == TSID ]
thefunc    = fac*fdf['nthreads'].to_numpy()**coef[0]*fdf['nbins'].to_numpy()**coef[1]
np5 = ax.scatter( thefunc, fdf['time'].to_numpy(), facecolor=colorts1, marker=marker, edgecolor='k', linewidth=sclw, s=scsz )
# TS2
TSID       = 2
fdf        = pdf[ pdf['tsid'] == TSID ]
thefunc    = fac*fdf['nthreads'].to_numpy()**coef[0]*fdf['nbins'].to_numpy()**coef[1]
ax.scatter( thefunc, fdf['time'].to_numpy(), facecolor=colorts2, marker=marker, edgecolor='k', linewidth=sclw, s=scsz )
# TS3
TSID       = 3
fdf        = pdf[ pdf['tsid'] == TSID ]
thefunc    = fac*fdf['nthreads'].to_numpy()**coef[0]*fdf['nbins'].to_numpy()**coef[1]
ax.scatter( thefunc, fdf['time'].to_numpy(), facecolor=colorts3, marker=marker, edgecolor='k', linewidth=sclw, s=scsz)

## Fake bar
hdts1 = ax.bar( -500, 0, 10, color=colorts1, edgecolor='k', linewidth=0.2, zorder=5, )
hdts2 = ax.bar( -500, 0, 10, color=colorts2, edgecolor='k', linewidth=0.2, zorder=5, )
hdts3 = ax.bar( -500, 0, 10, color=colorts3, edgecolor='k', linewidth=0.2, zorder=5, )

ax.set_ylabel('$t[s]$', labelpad=5, rotation=0)
ax.set_xlabel('$\\epsilon N^{\\gamma}N_b^{\\delta}[s]$', labelpad=5, rotation=0)
ax.set_aspect('equal')
ax.set_ylim([0,500])
ax.set_xlim([0,500])

ax.legend(
        [
            np1,
            np2,
            np3,
            np4,
            np5,
        ],
        [
            '$N_{p1}$',   
            '$N_{p2}$',
            '$N_{p3}$',
            '$N_{p4}$',
            '$N_{p5}$',
        ],
        loc='lower right', 
        fontsize=7, 
        borderpad=0.5, 
        borderaxespad=0.3, 
        handletextpad=0.5
    )
fig.legend(
        [
            hdts1,
            hdts2,
            hdts3,
        ],
        [
            '$\\mathrm{TS}_{1}$',   
            '$\\mathrm{TS}_{2}$',
            '$\\mathrm{TS}_{3}$',
        ],
        loc='upper center', 
        fontsize=7, 
        borderpad=0.5, 
        borderaxespad=0.3, 
        handletextpad=0.5,
        ncol = 3, 
        bbox_to_anchor =  [0.55, 1]
    )

plt.savefig( 'figure_scaling.png' )
