function[] = makeCSD_4BV_62
% Kayser and Tenke CSD toolbox site:
% http://psychophysiology.cpmc.columbia.edu/Software/CSDtoolbox/
% http://psychophysiology.cpmc.columbia.edu/Software/CSDtoolbox/tutorial.html

%% load some data after the SO/EOG channels have been removed, leaving n=62 data channels

 % grab the labels
mychans = {EEG.chanlocs.labels};

% rename the mastoids so the CSD toolbox routines will recognize them
lMast = find(strcmp(mychans, 'M1')); % happens to be channel # 17
rMast =find(strcmp(mychans, 'M2')); % happens to be channel # 22
mychans{lMast} = 'LM';
mychans{rMast} = 'RM';

% use the CSD routines to grab the correct coordinates
BV62 = ExtractMontage('10-5-System_Mastoids_EGI129.csd', mychans');

MapMontage(BV62); %this line saves a figure to disk rather than plotting it

% use the CSD routines to get the G and H matrices
[G,H] = GetGH(BV62);  

% find the directory we want to save in
cd('C:\Users\***');

% save to disk and done!
save BV62_plus_GH


end