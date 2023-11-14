clear all 

% Add baks source code path
% Download BAKS source code: https://zenodo.org/records/3358178
%addpath('/the/path/to/baks/source/')

% Source particles
% 630000
%fname     = 'particles/particles_mass_mpathrw.tseri.nmr.15.i0.r1.csv';  
%outfname  = 'mat_baks_output_NMR15'
% 179200
%fname     = 'particles/particles_mass_mpathrw.tseri.nmr.8.i0.r0.csv';   
%outfname  = 'mat_baks_output_NMR8'
% 70000
%fname     = 'particles/particles_mass_mpathrw.tseri.nmr.5.i0.r0.csv';    
%outfname  = 'mat_baks_output_NMR5'
% 25200
fname     = 'particles/particles_mass_mpathrw.tseri.nmr.3.i0.r0.csv';   
outfname  = 'mat_baks_output_NMR3'

% Load particles
particles = readtable(fname, 'ReadVariableNames', false);

% Domain info
domain_x    = 400;
domain_y    = 200;
dimensions  = 2;

% Initialize kernel db
tic
kernelDB( dimensions )
disp('Kernel db time')
disp(toc)

% Define specific options
lambda_cell    = 1;
options        = struct();
options.hmin   = 0.05*( lambda_cell )^( 1/dimensions );
options.grwlim = [1,1,1,1,1,1,1,1,1,1]; % 10 loops 

% Create BAKS struct
tic
A=baks([0, 0; domain_x, domain_y], lambda_cell, height(particles(:,1)), options );
A.nw( [table2array(particles(:,1)),table2array(particles(:,2))] );
disp('Creating baks and new particles time')
disp(toc)

% Concentration reconstruction
tic 
A.optimization
disp('Optimization time')
disp(toc)

% Save concentration ('rho') and the particle mass ('mass')
mass = table2array(particles(1,4));
rho  = A.rho;
save( outfname, 'rho', 'mass' )
