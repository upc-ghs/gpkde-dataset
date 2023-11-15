import os 
import numpy as np 
import pandas as pd
import matplotlib.pyplot as plt

# figure
fig = plt.figure(figsize=(10,10))
ax  = fig.add_subplot(111)

# Data with prescribed bins 
basedir   = os.getcwd()
dirs      = ['0001M', '001M', '01M', '1M']
npars     = [1e3, 1e4, 1e5, 1e6]
lambdas   = [0.25, 0.1  , 0.05, 0.01 , 0.005, 0.001]
df        = pd.read_csv( os.path.join( basedir, 'databins.csv' ) )

# FIGURE PARAMS
SIGMA  = 1
HSMO   = 1
MAXRHO = 1/(SIGMA*np.sqrt(2*np.pi))
xlim   = 6
delta  = 0.001
xlims  = [-1*xlim,xlim]
x      = np.arange(-xlim, xlim, delta)
tx     = 0.9
ty     = 0.9
lw     = 0.85

##########
NPAR   = 4
NREL   = 10
NLAM   = 6

lw     = 0.55
scsz   = 2.75
cpsz   = 0.5
cpth   = 0.35
mkwi   = 0.15
bart   = True
lshist = '--'
zog    = 4
zoh    = 3
alphahist  = 0.3
alphagpkde = 0.3


dfn    = df[df['nparticles']==1e3]
marker = 's'
color  = 'g'
errors = np.zeros(shape=(NLAM,NREL))
for il, l in enumerate(lambdas):
    errors[il,:] = dfn[dfn['lambda']==l]['errordens']

avg = np.mean( errors, axis=1 )
std = np.std(  errors, axis=1 )
ax.errorbar( np.array( lambdas ), avg, yerr=std, marker=marker, linewidth=lw, ecolor='k', elinewidth=lw, markersize=scsz, barsabove=bart , capsize=cpsz, capthick=cpth, color=color, markeredgecolor='k', markeredgewidth=mkwi, zorder=zog, alpha=alphagpkde )
errors = np.zeros(shape=(NLAM,NREL))
for il, l in enumerate(lambdas):
    errors[il,:] = dfn[dfn['lambda']==l]['errorhist']
avg = np.mean( errors, axis=1 )
std = np.std( errors, axis=1 )
ax.errorbar( np.array( lambdas ), avg, yerr=std, marker=marker, linewidth=lw, ecolor='k', elinewidth=lw, markersize=scsz, barsabove=bart , linestyle=lshist,capsize=cpsz, capthick=cpth, color=color, markeredgecolor='k', markeredgewidth=mkwi, zorder=zoh, label='$N_p=10^3$', alpha=alphahist)


dfn    = df[df['nparticles']==1e4]
marker = 'd'
color  = 'b'
errors = np.zeros(shape=(NLAM,NREL))
for il, l in enumerate(lambdas):
    errors[il,:] = dfn[dfn['lambda']==l]['errordens']
avg = np.mean( errors, axis=1 )
std = np.std( errors, axis=1 )
ax.errorbar( np.array( lambdas ), avg, yerr=std, marker=marker, linewidth=lw, ecolor='k', elinewidth=lw, markersize=scsz, barsabove=bart,capsize=cpsz, capthick=cpth, color=color, markeredgecolor='k', markeredgewidth=mkwi, zorder=zog , alpha=alphagpkde)
errors = np.zeros(shape=(NLAM,NREL))
for il, l in enumerate(lambdas):
    errors[il,:] = dfn[dfn['lambda']==l]['errorhist']
avg = np.mean( errors, axis=1 )
std = np.std( errors, axis=1 )
ax.errorbar( np.array( lambdas ), avg, yerr=std, marker=marker,linewidth=lw, ecolor='k', elinewidth=lw, markersize=scsz, barsabove=bart,linestyle=lshist,capsize=cpsz, capthick=cpth, color=color, markeredgecolor='k', markeredgewidth=mkwi, zorder=zoh, label='$N_p=10^4$', alpha=alphahist)


dfn    = df[df['nparticles']==1e5]
marker = 'o'
color  = 'r'
errors = np.zeros(shape=(NLAM,NREL))
for il, l in enumerate(lambdas):
    errors[il,:] = dfn[dfn['lambda']==l]['errordens']
avg = np.mean( errors, axis=1 )
std = np.std( errors, axis=1 )
ax.errorbar( np.array( lambdas ), avg, yerr=std, marker=marker, linewidth=lw, ecolor='k', elinewidth=lw, markersize=scsz, barsabove=bart,capsize=cpsz, capthick=cpth, color=color, markeredgecolor='k', markeredgewidth=mkwi, zorder=zog , alpha=alphagpkde)
errors = np.zeros(shape=(NLAM,NREL))
for il, l in enumerate(lambdas):
    errors[il,:] = dfn[dfn['lambda']==l]['errorhist']
avg = np.mean( errors, axis=1 )
std = np.std( errors, axis=1 )
ax.errorbar( np.array( lambdas ), avg, yerr=std, marker=marker,linewidth=lw, ecolor='k', elinewidth=lw, markersize=scsz, barsabove=bart,linestyle=lshist,capsize=cpsz, capthick=cpth, color=color, markeredgecolor='k', markeredgewidth=mkwi, zorder=zoh, label='$N_p=10^5$', alpha=alphahist)


dfn    = df[df['nparticles']==1e6]
scsz   = 3
marker = '^'
color  = 'darkorange'
errors = np.zeros(shape=(NLAM,NREL))
for il, l in enumerate(lambdas):
    errors[il,:] = dfn[dfn['lambda']==l]['errordens']
avg = np.mean( errors, axis=1 )
std = np.std( errors, axis=1 )
ax.errorbar( np.array( lambdas ), avg, yerr=std, marker=marker, linewidth=lw, ecolor='k', elinewidth=lw, markersize=scsz, barsabove=bart,capsize=cpsz, capthick=cpth, color=color, markeredgecolor='k', markeredgewidth=mkwi, zorder=zog , alpha=alphagpkde)
errors = np.zeros(shape=(NLAM,NREL))
for il, l in enumerate(lambdas):
    errors[il,:] = dfn[dfn['lambda']==l]['errorhist']
avg = np.mean( errors, axis=1 )
std = np.std( errors, axis=1 )
ax.errorbar( np.array( lambdas ), avg, yerr=std, marker=marker,linewidth=lw, ecolor='k', elinewidth=lw, markersize=scsz, barsabove=bart,linestyle=lshist,capsize=cpsz, capthick=cpth, color=color, markeredgecolor='k', markeredgewidth=mkwi, zorder=zoh, label='$N_p=10^6$', alpha=alphahist)
ax.set_ylim([3e-4,1])
fig.legend(loc='upper left', ncol=4, fontsize=7, fancybox=False, borderpad=0.35, columnspacing=0.35, bbox_to_anchor=(0.135,0.995), handletextpad=0.5)
tx = 0.72
ty = 0.9
ax.text(tx,ty,'HIST - - -', fontsize=7, transform=ax.transAxes)
ax.text(tx,ty-0.06,'GPKDE ------', fontsize=7, transform=ax.transAxes)

########################################
# Methods with automatic bin selection #
########################################


########################
# Scott
########################
lambdas = []
avgs    = []
stds    = []
avgh    = []
stdh    = []

sdf     = pd.read_csv( os.path.join( basedir, 'dataautobin.csv' ) )
df     = sdf[sdf['binmethod']=='scott']
NLAM   = 1


dfn    = df[df['nparticles']==1e3]
marker = 's'
color  = 'g'
errors = dfn['errordens'].to_numpy()
avg = np.mean( errors )
std = np.std(  errors )
avgs.append(avg)
stds.append(std)
errors = dfn['errorhist'].to_numpy()
avg = np.mean( errors )
std = np.std(  errors )
avgh.append(avg)
stdh.append(std)
lambdas.append(np.mean( dfn['lambda'].to_numpy() ))


dfn    = df[df['nparticles']==1e4]
marker = 'd'
color  = 'b'
errors = dfn['errordens'].to_numpy()
avg = np.mean( errors )
std = np.std(  errors )
avgs.append(avg)
stds.append(std)
errors = dfn['errorhist'].to_numpy()
avg = np.mean( errors )
std = np.std( errors  )
avgh.append(avg)
stdh.append(std)
lambdas.append(np.mean( dfn['lambda'].to_numpy() ))


dfn    = df[df['nparticles']==1e5]
marker = 'o'
color  = 'r'
errors = dfn['errordens'].to_numpy()
avg = np.mean( errors )
std = np.std(  errors )
avgs.append(avg)
stds.append(std)
errors = dfn['errorhist'].to_numpy()
avg = np.mean( errors )
std = np.std(  errors )
avgh.append(avg)
stdh.append(std)
lambdas.append(np.mean( dfn['lambda'].to_numpy() ))


dfn    = df[df['nparticles']==1e6]
scsz   = 3
marker = '^'
color  = 3*[0.75]
errors = dfn['errordens'].to_numpy()
avg = np.mean( errors )
std = np.std(  errors )
avgs.append(avg)
stds.append(std)
errors = dfn['errorhist'].to_numpy()
avg = np.mean( errors )
std = np.std(  errors )
avgh.append(avg)
stdh.append(std)
lambdas.append(np.mean( dfn['lambda'].to_numpy() ))
ax.scatter(lambdas[0], avgs[0], marker='s', edgecolor='k', linewidth=0.1, facecolor=color, s=3.5*scsz, zorder=zog+2 )
ax.scatter(lambdas[1], avgs[1], marker='d', edgecolor='k', linewidth=0.1, facecolor=color, s=3.5*scsz, zorder=zog+2 )
ax.scatter(lambdas[2], avgs[2], marker='o', edgecolor='k', linewidth=0.1, facecolor=color, s=3.5*scsz, zorder=zog+2 )
ax.scatter(lambdas[3], avgs[3], marker='^', edgecolor='k', linewidth=0.1, facecolor=color, s=3.5*scsz, zorder=zog+2 )
ax.plot( np.array( lambdas ), np.array( avgs ), linewidth=lw, color=color )

ax.scatter(lambdas[0], avgh[0], marker='s', edgecolor='k', linewidth=0.1, facecolor=color, s=3.5*scsz, zorder=zog+2 )
ax.scatter(lambdas[1], avgh[1], marker='d', edgecolor='k', linewidth=0.1, facecolor=color, s=3.5*scsz, zorder=zog+2 )
ax.scatter(lambdas[2], avgh[2], marker='o', edgecolor='k', linewidth=0.1, facecolor=color, s=3.5*scsz, zorder=zog+2 )
ax.scatter(lambdas[3], avgh[3], marker='^', edgecolor='k', linewidth=0.1, facecolor=color, s=3.5*scsz, zorder=zog+2 )
ax.plot( np.array( lambdas ), np.array( avgh ), linewidth=lw, color=color, linestyle='--' )

hdscott = ax.bar( -500, 0, 5, color=color, edgecolor='k', linewidth=0.2, zorder=5, )

######################
# Freedman Diaconis
######################
lambdas = []
avgs    = []
stds    = []
avgh    = []
stdh    = []
df     = sdf[sdf['binmethod']=='fd']

NLAM   = 1
dfn    = df[df['nparticles']==1e3]
marker = 's'
color  = 'g'
errors = dfn['errordens'].to_numpy()
avg = np.mean( errors )
std = np.std(  errors )
avgs.append(avg)
stds.append(std)
errors = dfn['errorhist'].to_numpy()
avg = np.mean( errors )
std = np.std(  errors )
avgh.append(avg)
stdh.append(std)
lambdas.append(np.mean( dfn['lambda'].to_numpy() ))


dfn    = df[df['nparticles']==1e4]
marker = 'd'
color  = 'b'
errors = dfn['errordens'].to_numpy()
avg = np.mean( errors )
std = np.std(  errors )
avgs.append(avg)
stds.append(std)
errors = dfn['errorhist'].to_numpy()
avg = np.mean( errors )
std = np.std( errors  )
avgh.append(avg)
stdh.append(std)
lambdas.append(np.mean( dfn['lambda'].to_numpy() ))


dfn    = df[df['nparticles']==1e5]
marker = 'o'
color  = 'r'
errors = dfn['errordens'].to_numpy()
avg    = np.mean( errors )
std    = np.std(  errors )
avgs.append(avg)
stds.append(std)
errors = dfn['errorhist'].to_numpy()
avg    = np.mean( errors )
std    = np.std(  errors )
avgh.append(avg)
stdh.append(std)
lambdas.append(np.mean( dfn['lambda'].to_numpy() ))


dfn    = df[df['nparticles']==1e6]
scsz   = 3
marker = '^'
color  = 3*[0.15]
errors = dfn['errordens'].to_numpy()
avg    = np.mean( errors )
std    = np.std(  errors )
avgs.append(avg)
stds.append(std)
errors = dfn['errorhist'].to_numpy()
avg = np.mean( errors )
std = np.std(  errors )
avgh.append(avg)
stdh.append(std)
lambdas.append(np.mean( dfn['lambda'].to_numpy() ))


ax.scatter(lambdas[0], avgs[0], marker='s', edgecolor='k', linewidth=0.1, facecolor=color, s=3.5*scsz, zorder=zog+2 )
ax.scatter(lambdas[1], avgs[1], marker='d', edgecolor='k', linewidth=0.1, facecolor=color, s=3.5*scsz, zorder=zog+2 )
ax.scatter(lambdas[2], avgs[2], marker='o', edgecolor='k', linewidth=0.1, facecolor=color, s=3.5*scsz, zorder=zog+2 )
ax.scatter(lambdas[3], avgs[3], marker='^', edgecolor='k', linewidth=0.1, facecolor=color, s=3.5*scsz, zorder=zog+2 )
ax.plot( np.array( lambdas ), np.array( avgs ), linewidth=lw, color=color )

ax.scatter(lambdas[0], avgh[0], marker='s', edgecolor='k', linewidth=0.1, facecolor=color, s=3.5*scsz, zorder=zog+2 )
ax.scatter(lambdas[1], avgh[1], marker='d', edgecolor='k', linewidth=0.1, facecolor=color, s=3.5*scsz, zorder=zog+2 )
ax.scatter(lambdas[2], avgh[2], marker='o', edgecolor='k', linewidth=0.1, facecolor=color, s=3.5*scsz, zorder=zog+2 )
ax.scatter(lambdas[3], avgh[3], marker='^', edgecolor='k', linewidth=0.1, facecolor=color, s=3.5*scsz, zorder=zog+2 )
ax.plot( np.array( lambdas ), np.array( avgh ), linewidth=lw, color=color, linestyle='--' )

hdfd = ax.bar( -500, 0, 5, color=color, edgecolor='k', linewidth=0.2, zorder=5, )

ax.legend(
        [
            hdfd,
            hdscott,
        ],
        [
            'F-D',
            'Scott',
        ],
        loc='center right',
        fontsize=6,
        borderpad=0.5,
        borderaxespad=0.3,
        handletextpad=0.5,
        frameon=False,
        bbox_to_anchor=(1.02,0.55),
        markerscale=0.5,
        handlelength=1,
        handleheight=0.5,
    )


ax.set_xlabel('$\Delta_x/\sigma_{\\rho}$', rotation=0, labelpad=4)
ax.grid(axis='y', which='both', linestyle=':', linewidth=0.15, color=3*[0.5], zorder=0, alpha=0.35 )
ax.set_xlim([8e-4, 1.1])
ax.set_xscale('log')
ax.set_yscale('log')
ax.set_ylabel('$e_R$', rotation=0, labelpad=8)

plt.savefig( 'figure_error.png' )
