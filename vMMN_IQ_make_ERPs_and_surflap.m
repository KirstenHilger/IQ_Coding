function[AvgRef, SurfLap, DVs] = vMMN_IQ_make_ERPs_and_surflap(datainfo)
%**************************************************************************************%

% WORKFLOW: This function uses EEGlab, ERPlab and CSD toolbox routines to performs the following tasks:
%   1) Load the appropriate cleaned, epoched data
%   2) Remove VEOG channels
%   3) Calculate ERPs and difference waves
%   4) Save the average-referenced dataset (.erp and .mat)
%   5) Run the surface laplacian and save the new dataset
%   6) Save the ERP sets so they will load again into ERPlab
%   7) Pass the results to a wrapper script to create datasets for analysis%   
%        ("vMMN_IQ_DVs.m")
%
% INPUTS:
%   datainfo = a struct containing the subject ID
%
% OUTPUTS:
%   AvgRef = ERPs calculated from the cleaned vMMN data, in 18 bins of
%       interest, referenced to the common average of 62 data channels
%   SurfLap = the same data as AvgRef, except after applying the surface
%       Laplacian transform
%
%**************************************************************************************%
% MJE, U of Utah, Spring 2019 Questions: matt.euler@psych.utah.edu
%% load the correct .set file

%[ALLEEG EEG CURRENTSET ALLCOM] = eeglab;
EEG = pop_loadset('filename',datainfo.origname,'filepath', datainfo.path);    
ALLEEG = EEG;
[ALLEEG, EEG, CURRENTSET] = eeg_store( ALLEEG, EEG, 0 ); %#ok<*ASGLU>
EEG = eeg_checkset( EEG );

%% remove the various VEOG channels, save a new .set file

% make a new folder to store ERP data
newfolder = ('ERPs');
mkdir(newfolder); %create a save directory
datainfo.ERPpath = strcat(datainfo.path, '\', newfolder);
cd(datainfo.ERPpath); % cd into the S's directory

% set-up and then delete the eye channels
delchnnm = strcat(datainfo.origname(1:end-4), '_62');
EEG = pop_select( EEG,'nochannel',{'SO1' 'SO2' 'LVEOG' 'RVEOG'});
[ALLEEG, EEG, CURRENTSET] = pop_newset(ALLEEG, EEG, 1,'setname', delchnnm,'savenew',datainfo.ERPpath,'overwrite','on','gui','off'); 
EEG = pop_saveset( EEG, 'filename',delchnnm,'filepath',datainfo.ERPpath);


%% Create initial ERPs, difference waves and save
ERP = pop_averager( EEG , 'Criterion', 'good', 'ExcludeBoundary', 'on', 'SEM', 'on' );

%grab the number of good trials in each initial bin
DVs.ncleaneps = ERP.ntrials.accepted;
beep;
disp('need to include info on clean epochs in DVs struct');
disp('also note that ERPlab does not correctly exclude bad trials in this batch script... :/ ');
keyboard;


% create the difference waves (see key below)
ERP = pop_binoperator( ERP, {  'BIN13 = BIN7 - BIN1 LABEL Odd Red1 min Std Red1',  'BIN14 = BIN3 - BIN5 LABEL Odd Grn1 min Std Grn1',...
  'BIN15 = BIN8 - BIN2 LABEL Odd Red2 min Std Red2',  'BIN16 = BIN4 - BIN6 LABEL Odd Grn2 min Std Grn2',...
  'BIN17 = BIN12 - BIN9 LABEL OddRule Red min StdRule Red',...
  'BIN18 = BIN11 - BIN10 LABEL OddRule Grn min StdRule Grn'});

datainfo.ERPname = strcat(datainfo.SID, '_AR_diff.erp'); % AR = Average Reference
ERP = pop_savemyerp(ERP, 'erpname', datainfo.SID, 'filename', datainfo.ERPname, 'filepath', datainfo.ERPpath); % save the ERP dataset

% *************************************************************%
% Code for creating difference waves
% % % BIN13 = BIN7 - BIN1 LABEL Odd Red1 min Std Red1                      
% % % BIN14 = BIN3 - BIN5 LABEL Odd Grn1 min Std Grn1
% % % BIN15 = BIN8 - BIN2 LABEL Odd Red2 min Std Red2
% % % BIN16 = BIN4 - BIN6 LABEL Odd Grn2 min Std Grn2
% % % BIN17 = BIN12 - BIN9 LABEL OddRule Red min StdRule Red
% % % BIN18 = BIN11 - BIN10 LABEL OddRule Grn min StdRule Grn
% *************************************************************%


% save the average-reference dataset as a .mat

mysavname = strcat(datainfo.SID, '_AR_diff.mat');
save(mysavname, 'ERP');
AvgRef = ERP.bindata; % save the ERPs as a variable (to make grand-averaging easy);

%************************************************************************%
% Note using on pop_geterpvalues -- the documentation is a little sparse.
% It's of the form: 
% [ALLERP, VALUEOFINTERST, LATENCIESUSED, COMMNAD] = pop_geterpvalues()...
%************************************************************************%
%% run the surface laplacian 

% lambda and head needed to run CSD
% tutorial page for the CSD toolbox
% http://psychophysiology.cpmc.columbia.edu/Software/CSDtoolbox/tutorial.html#EEGMontage
lambda = 1.0e-5; % default recommended value from the CSD toolbox;
head = 10; % recommended head radius from CSD toolbox - scales SL to 10 cm head size

wrkdir = pwd;
CSDdir = 'DIRECTORY WITH G and H matrices';
cd(CSDdir)
load BV62_plus_GH.mat % go get the G/H matrices for this cap and come back
cd(wrkdir);

% loop over bins (18 in this case)
surfLap = zeros(size(ERP.bindata));
for mybins = 1:ERP.nbin
    surfLap(:,:,mybins) = CSD(ERP.bindata(:,:,mybins), G, H, lambda, head);
    disp(strcat('computing surf Lap. for bin # ', num2str(mybins) ))
end

%% Update relevant ERP struct fields, save the new ERPs

ERP.bindata = surfLap; %replace the existing data with the CSD-transformed
ERP.erpname = datainfo.SID;
ERP.filename = strcat(datainfo.SID, '_odd_lp10_diff_SL.erp');
ERP.ref = 'CSD';

CURRENTERP = 0;
CURRENTERP = CURRENTERP + 1;
ALLERP(CURRENTERP) = ERP; %#ok<NASGU>

datainfo.ERPname = strcat(datainfo.SID, 'odd_lp10_diff_SL.erp'); % SL = Surface Laplacian
ERP = pop_savemyerp(ERP, 'erpname', datainfo.SID, 'filename', datainfo.ERPname, 'filepath', datainfo.savpth); % save the ERP dataset

% save the CSD dataset as a .mat
mysavname = strcat(datainfo.SID, '_SL_diff.mat');
save(mysavname, 'ERP');
SurfLap = ERP.bindata; % save the ERPs as a variable (to make grand-averaging easy);

surflap_ERP_plotter(datainfo, ERP); % call the figure plotting function

%%

beep;
disp(strcat(['All done processing participant ', datainfo.SID, ' !']));
close all; clearvars; 
cd ../..

end