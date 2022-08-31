function[] = vMMN_newdiffwaves_2022
%% WORK-FLOW
% For each participant:
%1) load their scalp average referenced dataset, make new bins for the alternative difference waves
%2) measure the signed area amplidate and 50% fractional area latency at the apriori electrodes for all bins
%3) do the same with the Laplacian-transformed data
%4) collect and write-out DVs to excel


% OUTPUTS: This script returns:
%   1) The integral signed area amplitude from the filtered ERPs and difference waves,
%   at the 9 electrodes of a priori interest,
%   measured 100-400 ms post-stim (relative to a 100 ms pre-stimulus baseline)
%
%   2) The negative Fractional Area Latency from the filtered ERPs and difference waves,
%   at the 9 electrodes of a priori interest,
%   measured 100-400 ms post-stim (relative to a 100 ms pre-stimulus baseline)
%
%   3) The integral signed area amplitude from the filtered ERPs and difference waves,
%   at the 2 electrodes identified in the Laplacian-transformed grand
%   average measured 125-275 ms post-stim (relative to a 100 ms pre-stimulus baseline)
%
%   4) The negative Fractional Area Latency from the filtered ERPs and difference waves,
%   at the 2 electrodes identified in the Laplacian-transformed grand
%   average measured 125-275 ms post-stim (relative to a 100 ms pre-stimulus baseline)


% Matt Euler, University of Utah, Summer 2022
%% set-up file paths

d.datadir = 'filepath';
BATCH.savedir = 'filepath';

cd(d.datadir);

%% load subjects here

for mysubs = 1:50 % the hard-coded final sample size based on minimum 40% trials retained in each condition
    if isequal(mysubs, 1)
        d.SID = 'sub1';

    elseif isequal(mysubs, 50)
        d.SID = 'sub50';
    else
    end
    
    disp(strcat(['Now Processing ', d.SID]));
    fprintf('\n');
    d.currpath = strcat(d.datadir, '\', d.SID, '\ERPs_and_DVs'); % set the correct subject directory
    
    cd(d.currpath);
    
    %% load file, create the new bins
    
    currfile = strcat(d.SID, '_odd_lp10_diff.erp');
    ERP = pop_loaderp( 'filename', currfile, 'filepath', d.currpath);
    
    % ***************************************************************************************
    % NEW DIFFERENCE WAVES PER R1
    %
    % derived from Red Block (Simple)
    % Bin 19 - Bin 3(green odd, 1st pos) - Bin 1(red std, 1st pos)
    % Bin 20 - Bin 4 (green odd, 2nd pos) - Bin 2 (red std, 2nd pos)
    
    % derived from Green Block (Reverse)
    % Bin 21 - Bin 7 (red odd, 1st pos) - Bin 5 (green std, 1st pos)
    % Bin 22 - Bin 8 (red odd, 2nd pos) - Bin 6 (green std, 2nd pos)
    
    % derived from the Rule Block (subtracting opposing colors here for consistency with Bins 19-22)
    % Bin 23 - Bin 12 (red odd) - Bin 9 (std green)
    % Bin 24 - Bin 11 (green odd) - Bin 10 (std red)
    % ***************************************************************************************
    
    ERP = pop_binoperator(ERP, {'BIN19 = BIN3 - BIN1 LABEL Odd Grn 1 minus Std Red 1',...
        'BIN20 = BIN4 - BIN2 LABEL Odd Grn 2 minus Std Red 2',...
        'BIN21 = BIN7 - BIN5 LABEL Odd Red 1 minus Grn Std 1',...
        'BIN22 = BIN8 - BIN6 LABEL Odd Red 2 minus Grn Std 2',...
        'BIN23 = BIN12 - BIN9 LABEL Rule Red Odd minus Rule Grn Std',...
        'BIN24 = BIN11 - BIN10 LABEL Rule Grn Odd minus Rule Red Std',...
        } );
    
    d.ERPname = strcat(d.SID, '_AR_all_diffs_2022.erp'); % AR = Average Reference
    ERP = pop_savemyerp(ERP, 'erpname', d.SID, 'filename', d.ERPname, 'filepath', d.currpath); % save the ERP dataset
    
    %% recompute DVs for average reference data
    
    % get signed area amplitude (a priori electrodes, 100-400 ms, *BOTH* raw ERPs and difference waves)
    % "Numerical integration/Area between two fixed latencies, area for
    % negatives subtracted from area for positives; interpolation factor 1,
    % measurement window 100: 400, baseline period 'pre'.
    d.ERPdvs_AR_SAA = strcat(d.currpath, '\',d.SID, '_AR_SAA_Stef.Aug2022.txt');
    myMlabel = 'AR_ERP_SAA_intgrl_Aug2022';
    [ALLERP, DVs.AR.SAA_Stef, ~, erpcom] = pop_geterpvalues( ERP, [ 100 400],  1:24, [ 24:26 29:31 59:61] , 'Baseline', 'pre', 'Binlabel', 'on', 'FileFormat', 'long', 'Filename',...
        d.ERPdvs_AR_SAA, 'Fracreplace', 'NaN', 'IncludeLat', 'yes', 'InterpFactor',  1, 'Measure', 'ninteg', 'Mlabel', myMlabel,...
        'PeakOnset',  1, 'Resolution',  3, 'SendtoWorkspace', 'on' ); %#ok<*ASGLU>
    
    
    % get 50% fractional area latencies; negative values only (a priori electrodes, 100-400 ms, *BOTH* raw ERPs and difference waves)
    %"Fractional Area Latency, pre-peak onset at 50% of peak..
    % If the requested fraction is not found, use NaN...
    % area for negative waveforms (positive values will be zeroed)
    d.ERPdvs_AR_FAL50 = strcat(d.currpath, '\',d.SID, '_AR_FAL50_Stef.Aug2022.txt');
    myMlabel = 'AR_ERP_FAL50_neg_Aug2022';
    [ALLERP, DVs.AR.FAL_Stef, ~, erpcom] = pop_geterpvalues( ERP, [ 100 400],  1:24, [ 24:26 29:31 59:61] , 'Afraction',  0.5, 'Baseline', 'pre', 'Binlabel', 'on', 'FileFormat',...
        'long', 'Filename', d.ERPdvs_AR_FAL50, 'Fracreplace', 'NaN', 'IncludeLat', 'yes', 'InterpFactor',  1, 'Measure', 'fareanlat', 'Mlabel', myMlabel,...
        'PeakOnset',  1, 'Resolution',  3, 'SendtoWorkspace', 'on' );
    
    
     
    ALLERP = pop_deleterpset( ALLERP , 'Erpsets',  1, 'Saveas', 'on' ); %#ok<*NASGU> % clear the average referenced dataset from memory
    
    
    %% Load the SL data and make the new bins
    
    
    currfile = strcat(d.SID, 'odd_lp10_diff_SL.erp'); % note the mising underscore before odd in the filename
    ERP = pop_loaderp( 'filename', currfile, 'filepath', d.currpath);
    
    % make the new difference waves
    ERP = pop_binoperator(ERP, {'BIN19 = BIN3 - BIN1 LABEL Odd Grn 1 minus Std Red 1',...
        'BIN20 = BIN4 - BIN2 LABEL Odd Grn 2 minus Std Red 2',...
        'BIN21 = BIN7 - BIN5 LABEL Odd Red 1 minus Grn Std 1',...
        'BIN22 = BIN8 - BIN6 LABEL Odd Red 2 minus Grn Std 2',...
        'BIN23 = BIN12 - BIN9 LABEL Rule Red Odd minus Rule Grn Std',...
        'BIN24 = BIN11 - BIN10 LABEL Rule Grn Odd minus Rule Red Std',...
        } );
    
    % save the new dataset
    d.ERPname = strcat(d.SID, '_SL_all_diffs_2022.erp'); % SL = surface Laplacian
    ERP = pop_savemyerp(ERP, 'erpname', d.SID, 'filename', d.ERPname, 'filepath', d.currpath); % save the ERP dataset
    
    
    %% Recompute DVs in the SL data
    
    % get signed area amplitude (Grand-averaged electrodes, 125-275 ms, *BOTH* raw ERPs and difference waves)
    d.ERPdvs_SL_SAA = strcat(d.currpath, '\',d.SID, '_SL_SAA.Aug2022.txt');
    myMlabel = 'SL_tmp';
    [ALLERP, DVs.SL.SAA, ~, erpcom] = pop_geterpvalues( ERP, [ 125 275],  1:24, [30 60] , 'Baseline', 'pre', 'Binlabel', 'on', 'FileFormat', 'long', 'Filename',...
        d.ERPdvs_SL_SAA, 'Fracreplace', 'NaN', 'IncludeLat', 'yes', 'InterpFactor',  1, 'Measure', 'ninteg', 'Mlabel', myMlabel,...
        'PeakOnset',  1, 'Resolution',  3, 'SendtoWorkspace', 'on' ); %#ok<*ASGLU>
    
    
    % get 50% fractional area latencies; negative values only (Grand-averaged electrodes, 125-275 ms, *BOTH* raw ERPs and difference waves)
    d.ERPdvs_SL_FAL50 = strcat(d.currpath, '\',d.SID, '_SL_FAL50.Aug2022.txt');
    myMlabel = 'SL_ERP_FAL50_neg_Aug2022';
    [ALLERP, DVs.SL.FAL, ~, erpcom] = pop_geterpvalues( ERP, [ 125 275],  1:24, [30 60] , 'Afraction',  0.5, 'Baseline', 'pre', 'Binlabel', 'on', 'FileFormat',...
        'long', 'Filename', d.ERPdvs_SL_FAL50, 'Fracreplace', 'NaN', 'IncludeLat', 'yes', 'InterpFactor',  1, 'Measure', 'fareanlat', 'Mlabel', myMlabel,...
        'PeakOnset',  1, 'Resolution',  3, 'SendtoWorkspace', 'on' );
    
    ALLERP = pop_deleterpset( ALLERP , 'Erpsets',  1, 'Saveas', 'on' ); %#ok<*NASGU> % clear the laplacian transformed dataset from memory
    
    
    %% grab trial numbers and associated variables
    
    goods = ERP.ntrials.accepted(1:12); % count only the 1st 12 bins since the others are derivative
    bads = ERP.ntrials.rejected(1:12);
    invalid = ERP.ntrials.invalid(1:12);
    mysum = (goods+bads); % the sum of the two (all the epochs that weren't preemptively removed due to boundary errors, etc.)
    prcntgood = round(100*(goods./mysum)); %
    minprctngood = min(prcntgood);
    mingoodtrials = min(goods);% find the minimum number of good trials
    
    
    %% collate DVs for this sub
    
    myvars = [DVs.AR.SAA_Stef(:); DVs.AR.FAL_Stef(:);
        DVs.SL.SAA(:); DVs.SL.FAL(:);
        goods(:); bads(:); invalid(:);
        prcntgood'; mingoodtrials; minprctngood]; % k = 578 vars per person
    
    %% build a matrix with all of the data
    
    BATCH.DVs(mysubs, :) = myvars;
    BATCH.SIDs(mysubs) = cellstr(d.SID);
    clearvars -except d BATCH mysubs myvars DVs ERP BATCH
    disp(strcat(d.SID, ' has been added to the struct'))
    
    %% make the DV labels  (in a fairly clunky fashion :/ )
    
    mybins = cellstr(string(1:24));
    Stef_chns = {ERP.chanlocs([24:26 29:31 59:61]).labels};
    SL_chns = {ERP.chanlocs([30 60]).labels};
    labPOz = strcat(SL_chns{2}, '_B' , mybins);
    labOz = strcat(SL_chns{1}, '_B' , mybins);
    SL_labels = [labPOz, labOz];
    
    
    nbins = 24;
    nchans = 9;
    Stef_labels = cell(nbins,nchans);
    for ccns = 1:nchans
        for bbns = 1:nbins
            Stef_labels(bbns, ccns) = {strcat(Stef_chns{ccns}, '_B', mybins{bbns})};
        end
    end
    
    AR_SAA_label = strcat('AR_SAA_', Stef_labels); % labels for average-referenced data/DVs
    AR_FAL50_Stef_label = strcat('AR_FAL50_', Stef_labels);
    SL_SAA_label = strcat('SL_SAA_', SL_labels); % ditto Laplacian-transformed
    SL_FLA50_label = strcat('SL_FAL50_', SL_labels);
    
    % make labels for good, bad, invalid, percent good trials
    nRAWbins = 12;
    accepLBL = cell(1, nRAWbins);
    rejLBL = cell(1, nRAWbins);
    invalLBL = cell(1, nRAWbins);
    percgoodLBL = cell(1, nRAWbins);
    
    for mytrls = 1:nRAWbins
        accepLBL(1, mytrls) = {strcat('B', mybins{mytrls}, '_good')};
        rejLBL(1, mytrls) = {strcat('B', mybins{mytrls}, '_rej')};
        invalLBL(1, mytrls) = {strcat('B', mybins{mytrls}, '_inval')};
        percgoodLBL(1, mytrls) = {strcat('B', mybins{mytrls}, '_pctgood')};
    end
    
    mylabels = ['SID'; AR_SAA_label(:); AR_FAL50_Stef_label(:);
        SL_SAA_label(:); SL_FLA50_label(:);  accepLBL'; rejLBL';
        invalLBL'; percgoodLBL'; 'MinGoodTrls'; 'MinPrctGoodTrls'];
    
    
end

%% write-out the entire dataset

fprintf('\n');
disp('Writing Results to Excel');
xlsDVsflnm = strcat(BATCH.savedir, '\', 'vMMN_ERP_DVs.8.8.22.xlsx');
xlswrite(xlsDVsflnm,mylabels',1,'A1');
xlswrite(xlsDVsflnm,BATCH.SIDs',1,'A2');
xlswrite(xlsDVsflnm,BATCH.DVs,1,'B2');

disp('Done writing-out results!');
beep;
keyboard;


end

%% misc
% % %     % For troubleshooting
% % %     if isequal(mysubs, 50)
% % %         disp('last subject added!')
% % %         beep;
% % %         keyboard;
% % %     else
% % %     end
