import numpy as np 
import pandas as pd 
import glob
import os 
import subprocess

datadir   = os.path.join( os.getcwd(), 'logfiles' )
basename  = 'gpkde.sim.h.np'
files     = glob.glob( os.path.join( datadir, basename + '*' ) )
df        = pd.DataFrame(columns=['file', 'nparticles', 'time', 'nthreads', 'nbins', 'nloops', 'tsid'])
nparline  = 'File will be read until line:'
nbinsline = '   Active bins       :'

# loop over files
for fname in files:
    line        = subprocess.check_output( [ 'tail', '-3', os.path.join( datadir, fname ) ] )
    line        = line.decode('utf-8').strip()
    timenogpkde = float( line.split(' ')[7] )
    line        = subprocess.check_output( [ 'tail', '-6', os.path.join( datadir, fname ) ] )
    line        = line.decode('utf-8').strip()
    nloops      = float( line.split(' ')[0] )
    f           = open(os.path.join( datadir, fname ), 'r' )
    while True:
        line = f.readline()
        if nparline in line:
            nparticles = float(line.strip().split(' ')[-1])
        if nbinsline in line:
            nbins = float(line.strip().split(' ')[-1])
            break
    tempdf               = pd.DataFrame()
    fileid               = fname.split('/')[-1]
    tempdf['file']       = [ fname.split('/')[-1] ]
    tempdf['nparticles'] = [ nparticles ]
    tempdf['time']       = [ timenogpkde ]
    tempdf['nbins']      = [ nbins ]
    tempdf['nloops']     = [ nloops ]
    nthreads             = fileid.split('omp')[-1]
    tempdf['nthreads']   = [ nthreads ]
    tempdf['tsid']       = [ fileid.split('ts')[1].split('.')[0] ]
    df                   = pd.concat( [df, tempdf], axis=0 )

df.to_csv( os.path.join( os.getcwd() , 'data.csv' ), index=False )
