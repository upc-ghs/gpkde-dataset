import numpy as np 
import pandas as pd
import os 
import matplotlib.pyplot as plt
from scipy.stats import norm

'''
INFO: Figure follows the labeling of non-uniform mass method 
      consistent with the article, which is different to the id 
      used in the code.
'''

basedir = os.path.join( os.getcwd(), 'gpkdeout' )

sims = [
    {
        'outdir': 'NMR3',
        'last'  : -2,
        'npart' : 25200
    },
    {
        'outdir': 'NMR5',
        'last'  : -2,
        'npart' : 70000
    },
    {
        'outdir': 'NMR8',
        'last'  : -2,
        'npart' : 179200
    },
    {
        'outdir': 'NMR10',
        'last'  : -1,
        'npart' : 280000
    },
]


fig = plt.figure(figsize=(10,10))
ax  = fig.add_subplot(111)

scalpha  = 1
scsz     = 5
markers  = ['s','o','^','D', '*']
colors   = [3*[0.15],3*[0.3],3*[0.45],3*[0.6], 3*[0.75]]
lw       = 0.6
labe     = ['9', '25', '64', '100']
ls       = ['-','--',':', '-.']
wfslabel = [1, 2, 3, 4] # the labels for the non-uniform mass method in the article
wfs      = [2, 1, 0, 3] # the id for selecting said method in the program 
NREL     = 10 
ERRORCOL = 'errors'

FHANDLER = []
FLABEL   = []
for disi, si in enumerate(sims):
    for iwf, wf in enumerate(wfs):
        NCOUNT = 0
        for nr in range(NREL):
            try:
                data  = np.load( os.path.join( basedir, si['outdir'], 'postdataRMSE.nr.'+str(nr)+'.wf.'+str(wf)+'.npz' ) )
                NCOUNT += 1
            except:
                break
            if nr==0:
                sumerrorbased = data[ERRORCOL]
                sumxdatabased = data['std']/data['meanmass']
            else:
                sumerrorbased += data[ERRORCOL]
                sumxdatabased += data['std']/data['meanmass']
        avgerrorbased = sumerrorbased/NCOUNT
        avgxdata      = sumxdatabased/NCOUNT
        if iwf == 0:
            ax.scatter(avgxdata[:si['last']], avgerrorbased[:si['last']], label='$\\bar{n}_{0}='+labe[disi]+'$',  linewidth=0.2, facecolor=colors[disi], edgecolor='k', marker=markers[disi], s=scsz, zorder=3, alpha=scalpha)
            ahd = ax.plot(   avgxdata[:si['last']], avgerrorbased[:si['last']], zorder=1, linewidth=lw, color=colors[disi], linestyle=ls[iwf])
            FHANDLER.append(ahd)
            FLABEL.append( ['W'+str(wfslabel[iwf])])
        else:
            ax.scatter(avgxdata[:si['last']], avgerrorbased[:si['last']], linewidth=0.2, facecolor=colors[disi], edgecolor='k', marker=markers[disi], s=scsz, zorder=3, alpha=scalpha)
            ahd = ax.plot(   avgxdata[:si['last']], avgerrorbased[:si['last']], zorder=1, linewidth=lw, color=colors[disi], linestyle=ls[iwf])
            FHANDLER.append(ahd)
            FLABEL.append( ['W'+str(wfslabel[iwf])])


tx    = 0.9
ty    = 0.9
xlims = [0., 1.5 ]
ylims = [5e-2,3e-1]
ax.set_xlim(xlims)
ax.set_ylabel('$e_R$', rotation=0, labelpad=10)
ax.grid(axis='y',linewidth=0.3,linestyle=':',color=3*[0.5],alpha=0.5, which='both', zorder=0)
ax.set_xlabel('$\\sigma_m/\\bar{m}$')

fig.legend(
    ncol=4,
    loc='upper center',
    bbox_to_anchor=(0.579,0.989),
    fontsize=7.5,fancybox=False,
    handletextpad=0.1,borderpad=0.25,columnspacing=0.25
)


ax.legend(
        [
            FHANDLER[0][0],
            FHANDLER[1][0],
            FHANDLER[2][0],
            FHANDLER[3][0],
        ],
        [
            FLABEL[0],
            FLABEL[1],
            FLABEL[2],
            FLABEL[3],
        ],
        ncol=1,
        loc='upper left',
    )

plt.savefig( 'figure_errormass.png' )
