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
% (p = 3.7000	4.4500    0.5000    0.5000    1.5    0    32)
%
%________________________________________________________________________
% * the program spm_Gpdf of SPM defines the gamma function as:
%
%                      l^h * x^(h-1) exp(-lx)
%    spm_Gpdf(x,h,l) = ----------------------
%                             gamma(h)
%
% * parameters of the generic rat HRF:
%           first gamma function    second gamma function    ratio parameter 
%                  h = 7.4               h = 8.9                 V = 1.5
%                  l = 2.0               l = 2.0
%
% * in the program spm_hrf.m of SPM the HRF is defined as:
%
%    hrf = spm_Gpdf(u,p(1)/p(3),dt/p(3)) - spm_Gpdf(u,p(2)/p(4),dt/p(4))/p(5);
%
% * therefore the parameters p are defined as:
%        p(1) =      h1*p(3)     = 3.7000
%        p(2) =      h2*p(4)     = 4.4500
%        p(3) =       1/l1       = 0.5000
%        p(4) =       1/l2       = 0.5000
%        p(5) =        V         = 1.5
%        p(6) =      onset       = 0
%        p(7) = length of kernel = 32
%__________________________________________________________________________
% 
% The generic rat HRF was specified for measurements with 5 s or longer
% stimulation duration.
% For shorter stimulation durations another HRF than the genric rat HRF
% should be used:
%
% * parameters the HRF for short stimulation durations 
%   specified for 1 s stimulation duration):
%           first gamma function    second gamma function    ratio parameter 
%                  h = 10.0              h = 11.7                 V = 1.5
%                  l = 2.8               l = 2.5
%
% * the parameters have then be set to:
%global defaults
%defaults.stats.fmri.hrf = [4.0 4.6800 0.4000 0.4000 1.5 0 32];
%
%__________________________________________________________________________
% Henriette Lambers, 2019

global defaults
defaults.stats.fmri.hrf = [3.7000	4.4500 0.5000 0.5000 1.5 0 32];



