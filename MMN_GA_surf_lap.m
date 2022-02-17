function[] = MMN_GA_surf_lap
%**************************************************************************************%
% Loop over participants in the Frankfurt vMMN data to create
% grand-averages (modify for AR data)

%**************************************************************************************%
% MJE, U of Utah, Summer 2019
%%

GAinfo.homedrive = 'C:\Users\***\EEG_Data\SET_files';
GAinfo.savedir = 'C:\Users\***\_Grand_Averages';

for mysubs = 1:50 % the hard-coded final sample size based on minimum 40% trials retained in each condition 
    if isequal(mysubs, 1)
        datainfo.SID = 'ALE14';
    elseif isequal(mysubs, 2)
        datainfo.SID = 'APK23';
    elseif isequal(mysubs, 3)
        datainfo.SID = 'AYN27';
    elseif isequal(mysubs, 4)
        datainfo.SID = 'BBA33';
    elseif isequal(mysubs, 5)
        datainfo.SID = 'CHA06';
    elseif isequal(mysubs, 6)
        datainfo.SID = 'CKE20';
    elseif isequal(mysubs, 7)
        datainfo.SID = 'CMA02';
    elseif isequal(mysubs, 8)
        datainfo.SID = 'DLA04';
    elseif isequal(mysubs, 9)
        datainfo.SID = 'DMA22';
    elseif isequal(mysubs, 10)
        datainfo.SID = 'DPA23';
    elseif isequal(mysubs, 11)
        datainfo.SID = 'DSM03';
    elseif isequal(mysubs, 12)
        datainfo.SID = 'EJA08';
    elseif isequal(mysubs, 13)
        datainfo.SID = 'EKK13';
    elseif isequal(mysubs, 14)
        datainfo.SID = 'EWO13';
    elseif isequal(mysubs, 15)
        datainfo.SID = 'FEV03';
    elseif isequal(mysubs, 16)
        datainfo.SID = 'GFA21';
    elseif isequal(mysubs, 17)
        datainfo.SID = 'GMD30';
    elseif isequal(mysubs, 18)
        datainfo.SID = 'GSU02';
    elseif isequal(mysubs, 19)
        datainfo.SID = 'GSY17';
    elseif isequal(mysubs, 20)
        datainfo.SID = 'GYN22';
    elseif isequal(mysubs, 21)
        datainfo.SID = 'HBA18';
    elseif isequal(mysubs, 22)
        datainfo.SID = 'HFE14';
    elseif isequal(mysubs, 23)
        datainfo.SID = 'HVN30';  
    elseif isequal(mysubs, 24)
      datainfo.SID = 'IJE19';
    elseif isequal(mysubs, 25)
      datainfo.SID = 'ISA01';
    elseif isequal(mysubs, 26)
        datainfo.SID = 'JSP28';
    elseif isequal(mysubs, 27)
        datainfo.SID = 'KDA22';
    elseif isequal(mysubs, 28)
        datainfo.SID = 'KSS11';
    elseif isequal(mysubs, 29)
        datainfo.SID = 'LKA02';
    elseif isequal(mysubs, 30)
        datainfo.SID = 'LLA08';
    elseif isequal(mysubs, 31)
        datainfo.SID = 'MDA02';
    elseif isequal(mysubs, 32)
        datainfo.SID = 'MDA28';
    elseif isequal(mysubs, 33)
        datainfo.SID = 'MGA25';
    elseif isequal(mysubs, 34)
        datainfo.SID = 'MOVO6';
    elseif isequal(mysubs, 35)
        datainfo.SID = 'MRA28';
    elseif isequal(mysubs, 36)
        datainfo.SID = 'MSA05';
    elseif isequal(mysubs, 37)
        datainfo.SID = 'MSA08';
    elseif isequal(mysubs, 38)
        datainfo.SID = 'MSA19';
    elseif isequal(mysubs, 39)
        datainfo.SID = 'MSS28';
    elseif isequal(mysubs, 40)
        datainfo.SID = 'PRA08';
    elseif isequal(mysubs, 41)
        datainfo.SID = 'SGT08';
    elseif isequal(mysubs, 42)
        datainfo.SID = 'SJA11';
    elseif isequal(mysubs, 43)
        datainfo.SID = 'SLA04';
    elseif isequal(mysubs, 44)
        datainfo.SID = 'SON11';
    elseif isequal(mysubs, 45)
        datainfo.SID = 'SPN24';
    elseif isequal(mysubs, 46)
        datainfo.SID = 'SSN16';
    elseif isequal(mysubs, 47)
        datainfo.SID = 'UBA28'; 
    elseif isequal(mysubs, 48)
        datainfo.SID = 'USN24';
    elseif isequal(mysubs, 49)
        datainfo.SID = 'VKK14';
    elseif isequal(mysubs, 50)
        datainfo.SID = 'VOR30';        
    else
    end
    disp(strcat(['Now Processing ', datainfo.SID]));
    fprintf('\n');
    datainfo.path = strcat(GAinfo.homedrive, '\', datainfo.SID, '\ERPs_and_DVs'); % set the correct subject directory
    
    cd(datainfo.path);
    SLdata = strcat(datainfo.SID, '_SL_diff.mat'); % find the file we want
    load(SLdata) % load it
    SL = ERP; % rename the ERP variable 
 
    
    %% build the struct
    
    alldata.(datainfo.SID).SL = SL.bindata;
    clearvars -except alldata allDVs datainfo GAinfo mysubs 
    disp(strcat(datainfo.SID, ' has been added to the struct'))
    
    if isequal(mysubs, 50)
        disp('last subject added!')
        beep;
        keyboard;
    else
    end
end

%% loop again to create a grand average

clear mysubs

tmp = struct2cell(alldata);
allPs = fieldnames(alldata);
SLdata = cell(1, 50);
for mysubs = 1:numel(allPs)
    SLdata{mysubs} = tmp{mysubs}.SL;
end

SL = mean(cat(4, SLdata{:}),4);
cd(GAinfo.savedir)



%%

disp('saving the laplacian-transformed data');
save('GA_surf_lap.8.6.19.mat', 'SL')

beep;
disp('done with Surface Laplacian GA');
keyboard;

end