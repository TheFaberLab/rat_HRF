% Sets the defaults of the parameters p of the HRF to generate the generic rat HRF
%_________________________________________________________________________
% name this file spm_my_defaults.m
% this file has to be accessible from MATLAB search path; e.g., it can be saved in
% MATLAB Startup Folder: userhome/Documents/MATLAB.
% SPM will automatically look for this file and use the defaults
% specified here instead of those in the original defaults program.
% The parameters are loaded the first time SPM is opened.
%
% To check whether SPM uses the correct parameters, the line 31 of the subroutine
% spm_hrf of SPM can be started. ( p = spm_get_defaults('stats.fmri.hrf');)
% The parameters of rat HRF should then be given as output.
% (p = 3.7645    4.6468    0.5882    0.5882    1.6000    0   32.0000)
%________________________________________________________________________
% * the program spm_Gpdf of SPM defines the gamma function as:
%
%                      l^h * x^(h-1) exp(-lx)
%    spm_Gpdf(x,h,l) = ----------------------
%                             gamma(h)
%
% * parameters of the generic rat HRF:
%           first gamma function    second gamma function    ratio parameter 
%                  h = 6.4               h = 7.9                 V = 1.6
%                  l = 1.7               l = 1.7
%
% * in the program spm_hrf.m of SPM the HRF is defined as:
%
%    hrf = spm_Gpdf(u,p(1)/p(3),dt/p(3)) - spm_Gpdf(u,p(2)/p(4),dt/p(4))/p(5);
%
% * therefore the parameters p are defined as:
%        p(1) =      h1*p(3)     = 3.7645
%        p(2) =      h2*p(4)     = 4.6468
%        p(3) =       1/l1       = 0.5882
%        p(4) =       1/l2       = 0.5882
%        p(5) =        V         = 1.6
%        p(6) =      onset       = 0
%        p(7) = length of kernel = 32
%__________________________________________________________________________
% 
% Henriette Lambers, 2018

global defaults
defaults.stats.fmri.hrf = [3.7645 4.6468 0.5882 0.5882 1.6 0 32]; 



