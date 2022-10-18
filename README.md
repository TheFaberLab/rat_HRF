# Cortical rat HRF
Cortical rat hemodynamic response function (HRF) for GLM-based analysis of BOLD fMRI studies in rat.
# Overview
The calculation of brain activation maps from fMRI measurements requires a realistic model of the BOLD response. For this purpose, we have determined a cortical rat HRF for analysis of BOLD fMRI studies in rat. This HRF is based on 98 BOLD measurements in 64 animals and proceeds faster than the human HRF, which is implemented in the software SPM by default. The cortical rat HRF provides improved detection performance of brain activation, and it is largely independent of the stimulation modality.

# Software Requirements
The script was written for implementation in SPM12 (https://www.fil.ion.ucl.ac.uk/spm/software/spm12/). 

# Implementation in SPM
Add the file spm_my_defaults.m to your MATLAB path. <br>
SPM will automatically look for this file and use the defaults specified in the file instead of those in the original defaults program. <br>
The HRF parameters are loaded when the software SPM is opened. <br>

# Publication
Lambers et al Neuroimage. 2020 Mar;208:116446. doi: 10.1016/j.neuroimage.2019.116446. <br>
https://www.sciencedirect.com/science/article/pii/S1053811919310377?via%3Dihub

