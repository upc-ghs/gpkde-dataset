import os 
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt


# figure
fig     = plt.figure(figsize=(10,10))
ax0     = fig.add_subplot(311)
ax1     = fig.add_subplot(312)
ax2     = fig.add_subplot(313)
scsz    = 13
tx      = 0.13
ty      = 0.85
fs      = 6
xlims   = [1e5,1e7]
lw      = 0.2

# data
fname   = 'data.csv'
basedir = os.getcwd()
df      = pd.read_csv(os.path.join(basedir, fname ), index_col=None) 
NTS     = 100 # the number of timeseries snapshots


###################################
######## OMP 8
###################################
dfg     = df[(df['gpkde']==1)&(df['nthreads']==8)]
dfn     = df[(df['gpkde']==0)&(df['nthreads']==8)]
marker  = 'o'
color   = 3*[0.8]
label   = '$N=8$'


ax = ax0
ax.scatter(dfn['nparticles'], dfn['time'], s=scsz, marker=marker, edgecolor='k', linewidth=lw, facecolor=color, zorder=3, label=label )
ax.scatter(dfg['nparticles'], dfg['time'], s=scsz, marker=marker, edgecolor='k', linewidth=lw, facecolor=color, zorder=3,     )
ax.grid(axis='y', linewidth=0.3, color=3*[0.5], linestyle=':', zorder=0)
ax.plot(dfg['nparticles'], dfg['time'], color=color, linewidth=0.5,  zorder=2, linestyle='--')
ax.plot(dfn['nparticles'], dfn['time'], color=color, linewidth=0.5,  zorder=2, linestyle='-')
ax.set_ylabel('$T[s]$', rotation=0, labelpad=8)
ax.tick_params(axis='x', labelbottom=False )
ax.text( tx, ty, 'GPKDE    -- -- --', transform=ax.transAxes, fontsize=fs )
ax.text( tx, ty-0.075, 'NO GPKDE ------', transform=ax.transAxes, fontsize=fs )
ax.set_xscale('log')
ax.set_xlim(xlims)

ax    = ax1
asd   = dfg['time'].to_numpy()/dfn['time'].to_numpy()
nthr8 = ax.scatter(dfg['nparticles'], asd , s=scsz, marker=marker, edgecolor='k', linewidth=lw, facecolor=color, zorder=2 )
ax.plot(dfg['nparticles'], asd , color=color, linewidth=0.5,  zorder=1)
ax.set_ylabel('$\\frac{T_{G}}{T_{NG}}$', rotation=0, labelpad=10)
ax.grid(axis='y', linewidth=0.3, color=3*[0.5], linestyle=':', zorder=0)
ax.tick_params(axis='x',labelbottom=False)
ax.set_xscale('log')
ax.set_xlim(xlims)

ax    = ax2 
asd   = np.abs( dfg['time'].to_numpy() - dfn['time'].to_numpy() )/NTS
nthr2 = ax.scatter(dfg['nparticles'], asd , s=scsz, marker=marker, edgecolor='k', linewidth=lw, facecolor=color, zorder=2 )
ax.plot(dfg['nparticles'], asd , color=color, linewidth=0.5,  zorder=1)
ax.grid(axis='y', linewidth=0.3, color=3*[0.5], linestyle=':', zorder=0)
ax.set_xlim(xlims)
ax.set_xscale('log')
ax.set_xlabel('$N_p$', rotation=0, labelpad=8)
ax.set_ylabel('$\\bar{t}_{G}[s]$', rotation=0, labelpad=10)


###################################
######## OMP 4
###################################
dfg    = df[(df['gpkde']==1)&(df['nthreads']==4)]
dfn    = df[(df['gpkde']==0)&(df['nthreads']==4)]
marker = '^'
color  = 3*[0.5]
label  = '$N=4$'


ax = ax0
ax.scatter(dfn['nparticles'], dfn['time'], s=scsz, marker=marker, edgecolor='k', linewidth=lw, facecolor=color, zorder=3, label=label )
ax.scatter(dfg['nparticles'], dfg['time'], s=scsz, marker=marker, edgecolor='k', linewidth=lw, facecolor=color, zorder=3,     )
ax.set_ylabel('$T[s]$', rotation=0, labelpad=8)
ax.grid(axis='y', linewidth=0.3, color=3*[0.5], linestyle=':', zorder=0)
ax.plot(dfg['nparticles'], dfg['time'], color=color, linewidth=0.5,  zorder=2, linestyle='--')
ax.plot(dfn['nparticles'], dfn['time'], color=color, linewidth=0.5,  zorder=2, linestyle='-')
ax.tick_params(axis='x', labelbottom=False )

ax    = ax1
asd   = dfg['time'].to_numpy()/dfn['time'].to_numpy()
nthr4 = ax.scatter(dfg['nparticles'], asd , s=scsz, marker=marker, edgecolor='k', linewidth=lw, facecolor=color, zorder=2 )
ax.plot(dfg['nparticles'], asd , color=color, linewidth=0.5,  zorder=1)
ax.grid(axis='y', linewidth=0.3, color=3*[0.5], linestyle=':', zorder=0)

ax    = ax2
asd   = np.abs( dfg['time'].to_numpy() - dfn['time'].to_numpy() )/NTS
nthr2 = ax.scatter(dfg['nparticles'], asd , s=scsz, marker=marker, edgecolor='k', linewidth=lw, facecolor=color, zorder=2 )
ax.plot(dfg['nparticles'], asd , color=color, linewidth=0.5,  zorder=1)
ax.grid(axis='y', linewidth=0.3, color=3*[0.5], linestyle=':', zorder=0)
ax.set_xscale('log')


###################################
######## OMP 2
###################################
dfg    = df[(df['gpkde']==1)&(df['nthreads']==2)]
dfn    = df[(df['gpkde']==0)&(df['nthreads']==2)]
marker = 's'
color  = 3*[0.3]
label  = '$N=2$'


ax = ax0
ax.scatter(dfn['nparticles'], dfn['time'], s=scsz, marker=marker, edgecolor='k', linewidth=lw, facecolor=color, zorder=3, label=label )
ax.scatter(dfg['nparticles'], dfg['time'], s=scsz, marker=marker, edgecolor='k', linewidth=lw, facecolor=color, zorder=3,     )
ax.set_ylabel('$T[s]$', rotation=0, labelpad=8)
ax.grid(axis='y', linewidth=0.3, color=3*[0.5], linestyle=':', zorder=0)
ax.plot(dfg['nparticles'], dfg['time'], color=color, linewidth=0.5,  zorder=2, linestyle='--')
ax.plot(dfn['nparticles'], dfn['time'], color=color, linewidth=0.5,  zorder=2, linestyle='-')
ax.tick_params(axis='x', labelbottom=False )
ax.set_yscale('log')
ax.set_xscale('log')
ax.set_ylim([6e1,1e4])
ax.set_xlim([1e5,1e7])

ax    = ax1
asd   = dfg['time'].to_numpy()/dfn['time'].to_numpy()
nthr2 = ax.scatter(dfg['nparticles'], asd , s=scsz, marker=marker, edgecolor='k', linewidth=lw, facecolor=color, zorder=2 )
ax.plot(dfg['nparticles'], asd , color=color, linewidth=0.5,  zorder=1)
ax.grid(axis='y', linewidth=0.3, color=3*[0.5], linestyle=':', zorder=0)
ax.set_xscale('log')
ax.set_ylim([0.9,2])
ax.set_xlim([1e5,1e7])

ax    = ax2
asd   = np.abs( dfg['time'].to_numpy() - dfn['time'].to_numpy() )/NTS
nthr2 = ax.scatter(dfg['nparticles'], asd , s=scsz, marker=marker, edgecolor='k', linewidth=lw, facecolor=color, zorder=2 )
ax.plot(dfg['nparticles'], asd , color=color, linewidth=0.5,  zorder=1)
ax.grid(axis='y', linewidth=0.3, color=3*[0.5], linestyle=':', zorder=0)
ax.set_xscale('log')


fig.legend(
    [
        nthr2,
        nthr4,
        nthr8
    ],
    ['$N=2$','$N=4$','$N=8$'],
    loc='upper center',
    bbox_to_anchor=[0.55,0.99],
    ncol=3,
    fontsize=8,
    fancybox=False,
    borderpad=0.4
)

plt.savefig('figure_timeseries.png')
