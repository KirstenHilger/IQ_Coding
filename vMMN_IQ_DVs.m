function[] = vMMN_IQ_DVs
%% WORK-FLOW
% For each participant:
%1) extract the integral SAA for the SEM (standard error of the mean) across a priori electrodes in the raw ERPs
%2) load the odd/diff lp10 dataset and measure the integral SAA of the raw ERPs and difference waves at a priori electrodes
%3) measure the FAL50 of the raw ERPs and difference waves at a priori electrodes
%4) load the Laplacian odd/diff lp10 dataset and measure the integral SAA/FAL50 of the raw ERPs and difference waves (grand-averaged electrodes)
%5) collect and write-out DVs


% OUTPUTS: This script returns:
%   1) The integral signed area amplitude for the SEM calculated from the
%   single trials in the raw, unfiltered ERPs (NOT difference waves), from
%   the 12 primary conditions, at the 9 electrodes of a priori interest,
%   measured 100-400 ms post-stim (relative to a 100 ms pre-stimulus baseline)
%
%   2) The integral signed area amplitude from the filtered ERPs and difference waves,
%   at the 9 electrodes of a priori interest,
%   measured 100-400 ms post-stim (relative to a 100 ms pre-stimulus baseline)
%
%   3) The negative Fractional Area Latency from the filtered ERPs and difference waves,
%   at the 9 electrodes of a priori interest,
%   measured 100-400 ms post-stim (relative to a 100 ms pre-stimulus baseline)
%
%   4) The integral signed area amplitude from the filtered ERPs and difference waves,
%   at the 2 electrodes identified in the Laplacian-transformed grand
%   average measured 125-275 ms post-stim (relative to a 100 ms pre-stimulus baseline)
%
%   5) The negative Fractional Area Latency from the filtered ERPs and difference waves,
%   at the 2 electrodes identified in the Laplacian-transformed grand
%   average measured 125-275 ms post-stim (relative to a 100 ms pre-stimulus baseline)


% Matt Euler, University of Utah, Spring 2020, adapting ERPlab functions
%% Set-up the batch analysis

BATCH.homedrive = 'DATA DIRECTORY';
BATCH.savedir = 'SAVE DIRECTORY';
BATCH.DVs = nan(50, 560); % the number of participants by the number of variables (wide-format)
BATCH.SIDs = cell(50,1);

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
    datainfo.path = strcat(BATCH.homedrive, '\', datainfo.SID, '\ERPs_and_DVs'); % set the correct subject directory
    cd(datainfo.path); % cd into the correct directory
    
    
    %% First load the *unfiltered*,SEM data from *raw* ERPs, measure SEM integral SAA
  
    datainfo.ARrawSEM = strcat(datainfo.SID, '_odd_SEM_data.erp'); % get the filename
    ERP = pop_loaderp( 'filename', datainfo.ARrawSEM, 'filepath', datainfo.path); % load the file
    
    % extract the SEM integral SAA
    datainfo.SEM_SAA = strcat(datainfo.path, '\',datainfo.SID, '_SEM_SAA_AR_Stef.Jan2020.txt'); % set the filename/path for the results; Stef = Stefanics
    myMlabel = 'AR_SEM_intgrl_Jan20';
    [ALLERP, DVs.AR.SEM_SAA_Stef, ~, erpcom] = pop_geterpvalues( ERP, [ 100 400],  1:12, [ 24:26 29:31 59:61] , 'Baseline', 'pre', 'Binlabel', 'on', 'FileFormat', 'long', 'Filename',...
        datainfo.SEM_SAA,'Fracreplace', 'NaN', 'IncludeLat', 'yes', 'InterpFactor',  1, 'Measure', 'ninteg', 'Mlabel', myMlabel, 'PeakOnset',...
        1, 'Resolution',  3, 'SendtoWorkspace', 'on' ); %#ok<*ASGLU>
    
    ALLERP = pop_deleterpset( ALLERP , 'Erpsets',  1, 'Saveas', 'on' ); %#ok<*NASGU> % clear the SEM dataset from memory
    
    
    %% Extract integral SAA and FAL 50 from the averaged reference data
    
    % set up to load ERPs and load the Average-referenced data
    datainfo.ARerp = strcat(datainfo.SID, '_odd_lp10_diff.erp');
    ERP = pop_loaderp( 'filename', datainfo.ARerp, 'filepath', datainfo.path);
    
    % get signed area amplitude (a priori electrodes, 100-400 ms, *BOTH* raw ERPs and difference waves)
    datainfo.ERPnm_AR_SAA = strcat(datainfo.path, '\',datainfo.SID, '_ERP_AR_SAA_Stef.Jan2020.txt');
    myMlabel = 'AR_ERP_SAA_intgrl_Jan20';
    [ALLERP, DVs.AR.ERP_SAA_Stef, ~, erpcom] = pop_geterpvalues( ERP, [ 100 400],  1:18, [ 24:26 29:31 59:61] , 'Baseline', 'pre', 'Binlabel', 'on', 'FileFormat', 'long', 'Filename',...
        datainfo.ERPnm_AR_SAA, 'Fracreplace', 'NaN', 'IncludeLat', 'yes', 'InterpFactor',  1, 'Measure', 'ninteg', 'Mlabel', myMlabel,...
        'PeakOnset',  1, 'Resolution',  3, 'SendtoWorkspace', 'on' ); %#ok<*ASGLU>
    
    
    % get 50% fractional area latencies; negative values only (a priori electrodes, 100-400 ms, *BOTH* raw ERPs and difference waves)
    datainfo.ERPnm_AR_FAL50 = strcat(datainfo.path, '\',datainfo.SID, '_ERP_AR_FAL50_Stef.Jan2020.txt');
    myMlabel = 'AR_ERP_FAL50_neg_Jan20';
    [ALLERP, DVs.AR.ERP_FAL_Stef, ~, erpcom] = pop_geterpvalues( ERP, [ 100 400],  1:18, [ 24:26 29:31 59:61] , 'Afraction',  0.5, 'Baseline', 'pre', 'Binlabel', 'on', 'FileFormat',...
        'long', 'Filename', datainfo.ERPnm_AR_FAL50, 'Fracreplace', 'NaN', 'IncludeLat', 'yes', 'InterpFactor',  1, 'Measure', 'fareanlat', 'Mlabel', myMlabel,...
        'PeakOnset',  1, 'Resolution',  3, 'SendtoWorkspace', 'on' );
    
    ALLERP = pop_deleterpset( ALLERP , 'Erpsets',  1, 'Saveas', 'on' ); %#ok<*NASGU> % clear the average referenced dataset from memory
    
    %%  %% Extract integral SAA and FAL 50 from the Laplacian-transformed data
    
    datainfo.SLerp = strcat(datainfo.SID, 'odd_lp10_diff_SL.erp'); % note the mising underscore before odd in the filename
    ERP = pop_loaderp( 'filename', datainfo.SLerp, 'filepath', datainfo.path);
    
    % get signed area amplitude (Grand-averaged electrodes, 125-275 ms, *BOTH* raw ERPs and difference waves)
    datainfo.ERPnm_SL_SAA = strcat(datainfo.path, '\',datainfo.SID, '_ERP_SL_SAA_Stef.Jan2020.txt');
    myMlabel = 'SL_ERP_SAA_intgrl_Jan20';
    [ALLERP, DVs.SL.ERP_SAA_Stef, ~, erpcom] = pop_geterpvalues( ERP, [ 125 275],  1:18, [30 60] , 'Baseline', 'pre', 'Binlabel', 'on', 'FileFormat', 'long', 'Filename',...
        datainfo.ERPnm_SL_SAA, 'Fracreplace', 'NaN', 'IncludeLat', 'yes', 'InterpFactor',  1, 'Measure', 'ninteg', 'Mlabel', myMlabel,...
        'PeakOnset',  1, 'Resolution',  3, 'SendtoWorkspace', 'on' ); %#ok<*ASGLU>
    
    
    % get 50% fractional area latencies; negative values only (Grand-averaged electrodes, 125-275 ms, *BOTH* raw ERPs and difference waves)
    datainfo.ERPnm_SL_FAL50 = strcat(datainfo.path, '\',datainfo.SID, '_ERP_SL_FAL50_Stef.Jan2020.txt');
    myMlabel = 'SL_ERP_FAL50_neg_Jan20';
    [ALLERP, DVs.SL.ERP_FAL_Stef, ~, erpcom] = pop_geterpvalues( ERP, [ 125 275],  1:18, [30 60] , 'Afraction',  0.5, 'Baseline', 'pre', 'Binlabel', 'on', 'FileFormat',...
        'long', 'Filename', datainfo.ERPnm_SL_FAL50, 'Fracreplace', 'NaN', 'IncludeLat', 'yes', 'InterpFactor',  1, 'Measure', 'fareanlat', 'Mlabel', myMlabel,...
        'PeakOnset',  1, 'Resolution',  3, 'SendtoWorkspace', 'on' );
    
    ALLERP = pop_deleterpset( ALLERP , 'Erpsets',  1, 'Saveas', 'on' ); %#ok<*NASGU> % clear the laplacian transformed dataset from memory
    
    
    %% grab trial nums
    
    goods = ERP.ntrials.accepted(1:12); % count only the 1st 12 bins since the others are derivative
    bads = ERP.ntrials.rejected(1:12);
    mysum = (goods+bads); % the sum of the two (all the epochs that weren't preemptively removed due to boundary errors, etc.)
    prcntgood = round(100*(goods./mysum)); %
    minprctngood = min(prcntgood);
    mingoodtrials = min(goods);% find the minimum number of good trials
    
    
    %% collate DVs for this sub
    
    myvars = [DVs.AR.SEM_SAA_Stef(:); DVs.AR.ERP_SAA_Stef(:);
        DVs.AR.ERP_FAL_Stef(:); DVs.SL.ERP_SAA_Stef(:); DVs.SL.ERP_FAL_Stef(:);
        ERP.ntrials.accepted(:); ERP.ntrials.rejected(:);
        ERP.ntrials.invalid(:); mingoodtrials; minprctngood];
    
        %% build a matrix with all of the data
    
    BATCH.DVs(mysubs, :) = myvars;
    BATCH.SIDs(mysubs) = cellstr(datainfo.SID);
    clearvars -except datainfo BATCH mysubs myvars DVs ERP 
    disp(strcat(datainfo.SID, ' has been added to the struct'))
    
       %% make the DV labels  (in a fairly clunky fashion :/ )
    
    mybins = cellstr(string(1:18));
    Stef_chns = {ERP.chanlocs([24:26 29:31 59:61]).labels};
    SS_chns = {ERP.chanlocs([30 60]).labels};
    labPOz = strcat(SS_chns{2}, '_B' , mybins);
    labOz = strcat(SS_chns{1}, '_B' , mybins);
    SampSpec_labels = [labPOz, labOz];
    
    
    nbins = 18;
    nchans = 9;
    Stef_labels = cell(18,9);
    for ccns = 1:nchans
        for bbns = 1:nbins
            Stef_labels(bbns, ccns) = {strcat(Stef_chns{ccns}, '_B', mybins{bbns})};
        end
    end
    
    AR_SAA_Stef_label = strcat(Stef_labels, '_AR_SAA_Stef'); % labels for average-referenced data/DVs
    AR_FAL50_Stef_label = strcat(Stef_labels, '_AR_FAL50_Stef');
    Stem_SEM_labels = Stef_labels(1:12,:);
    AR_SEM_Stef_label = strcat(Stem_SEM_labels, '_AR_SEM_Stef'); % SEM only contains data from 12 bins
    SL_SAA_SS_label = strcat(SampSpec_labels, '_SL_SAA_SS'); % ditto Laplacian-transformed
    SL_FLA50_SS_label = strcat(SampSpec_labels, '_SL_FAL50_SS');
    
    % make labels for good, bad, and invalid trials
    accepLBL = cell(1, nbins);
    rejLBL = cell(1, nbins);
    invalLBL = cell(1, nbins);
    
    for mytrls = 1:nbins
        accepLBL(1, mytrls) = {strcat('B', mybins{mytrls}, '_good')};
        rejLBL(1, mytrls) = {strcat('B', mybins{mytrls}, '_rej')};
        invalLBL(1, mytrls) = {strcat('B', mybins{mytrls}, '_inval')};
    end
    
    mylabels = ['SID'; AR_SEM_Stef_label(:); AR_SAA_Stef_label(:); 
        AR_FAL50_Stef_label(:); SL_SAA_SS_label(:);
         SL_FLA50_SS_label(:);  accepLBL'; rejLBL';
        invalLBL'; 'MinPrctGoodTrls'; 'MinGoodTrls']; 
    
       
% % %     %% For troubleshooting
% % %     if isequal(mysubs, 50)
% % %         disp('last subject added!')
% % %         beep;
% % %         keyboard;
% % %     else
% % %     end
    
end


%% write-out the entire dataset

fprintf('\n');
disp('Writing Results to Excel');
xlsDVsflnm = strcat(BATCH.savedir, '\', 'vMMN_DVs.1.28.20.xlsx');
xlswrite(xlsDVsflnm,mylabels',1,'A1');
xlswrite(xlsDVsflnm,BATCH.SIDs,1,'A2');
xlswrite(xlsDVsflnm,BATCH.DVs,1,'B2');


disp('Done writing-out results!');
beep;
keyboard;
end