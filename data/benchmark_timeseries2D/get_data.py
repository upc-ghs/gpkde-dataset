import os 
import glob
import subprocess
import pandas as pd 
import numpy as np 

# source files
basedir   = os.path.join( os.getcwd(), 'logfiles' )
basefname = 'mpathrw.mplst.ts.*'
files     = glob.glob( os.path.join( basedir , basefname ) )

# output results df
df = pd.DataFrame(columns=['fid', 'nparticles', 'time', 'gpkde', 'nthreads'])

# to get the number of particles
nparline  = 'Total number of particles on initial conditions ='

# do it
for fid in files:

    # isgpkde ?
    isgpkde = 0
    if 'gpkde' in fid.split('/')[-1].split('.'):
        isgpkde = 1

    # runtime and nparticles
    line    = subprocess.check_output( [ 'tail', '-1', fid ] )
    line    = line.decode('utf-8').strip()
    runtime = float( line.split(' ')[-2] )
    f       = open(fid , 'r')
    while True:
        line = f.readline()
        if nparline in line:
            nparticles = float(line.strip().split(' ')[-1])
            break

    # to df
    tempdf               = pd.DataFrame()
    tempdf['fid']        = [ fid.split('/')[-1] ]
    tempdf['nparticles'] = [ nparticles ]
    tempdf['time']       = [ runtime ]
    tempdf['gpkde']      = [ isgpkde ]
    tempdf['nthreads']   = [ int(fid.split('/')[-1].split('.')[-1][-1]) ] 
    df                   = pd.concat( [df, tempdf], axis=0 )

# sort
df = df.sort_values(['nparticles','gpkde','nthreads'])

# write the output df
df.to_csv( os.path.join( os.getcwd(), 'data.csv'), index=False )
