function[] = vMMN_load_and_filter


%% call EEGlab, load the data and channel file
cd('YOUR EEGLAB DIRECTORY')
eeglab

% get file info from the user, move into the right directory
datainfo.SID = input('Enter the Subject Name, e.g., AJA27  ', 's');
datainfo.rawdir = 'YOUR RAW DATA FILEPATH HERE';
datainfo.SETdir = 'WHERE THE SET FILES WILL BE STORED';
datainfo.chanpth = 'THE ELECTRODE FILE ...\standard.elp';
mkdir(datainfo.SETdir, datainfo.SID); % make a folder for this subject
datainfo.savpth = strcat(datainfo.SETdir, '\', datainfo.SID); % set the new save path
myfile = strcat(datainfo.SID, '_Oddball.eeg'); % the actual raw EEG file

% load the data
EEG = pop_fileio(strcat('THE DATA DIRECTORY', myfile));
EEG.setname= strcat(datainfo.SID, 'odd_hp0pt1');
EEG = eeg_checkset( EEG );

% grap the scalp map and save the .SET file
cd(datainfo.rawdir);
EEG=pop_chanedit(EEG, 'lookup',datainfo.chanpth);
EEG = eeg_checkset( EEG );
% high-pass filter the data at 0.1 Hz
EEG = pop_eegfiltnew(EEG, [],0.1,33000,1,[],1);
EEG = pop_saveset( EEG, 'filename',EEG.setname,'filepath',datainfo.savpth);


%% Prompt the user that the script is done.

pause(2);
% play a beep;
res = 22050;
len = 0.07 * res;
hz = 250;
sound( sin( hz*(2*pi*(0:len)/res) ), res);
fresh

%% The user then performed the following manual steps:

%% Delete data segments that contain no triggers (breaks, etc).

% EEG  = pop_erplabDeleteTimeSegments( EEG , 'displayEEG',  1, 'endEventcodeBufferMS',  500, 'ignoreUseType', 'ignore', 'startEventcodeBufferMS',...
%   500, 'timeThresholdMS',  2000 );

%% Interpolate 

% % To quickly the numerical index of a given channel for interpolation
% % index = find(strcmp({EEG.chanlocs.labels}, 'C6'))
% EEG  = pop_erplabInterpolateElectrodes( EEG , 'displayEEG',  1, 'ignoreChannels', [ 41 46], 'interpolationMethod', 'spherical', 'replaceChannels',...
%  [ 32 50 51] ); % GUI: 29-Oct-2018 11:25:24
% 
% % Delete "crazy" segments
% EEG = pop_continuousartdet( EEG , 'ampth',  300, 'chanArray',  1:64, 'colorseg', [ 1 0.9765 0.5294], 'forder',  100, 'numChanThreshold',  1,...
%  'stepms',  250, 'threshType', 'peak-to-peak', 'winms',  500 ); % GUI: 29-Oct-2018 11:28:04

end