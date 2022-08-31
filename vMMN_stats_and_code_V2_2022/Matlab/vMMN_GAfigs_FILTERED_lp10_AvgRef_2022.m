function[] = vMMN_GAfigs_FILTERED_lp10_AvgRef_2022


d.datadir = 'filepath';
d.savedir = 'filepath';

cd(d.datadir);
eeglab

for mysubs = 1:50 % the hard-coded final sample size based on minimum 40% trials retained in each condition
    if isequal(mysubs, 1)
        d.SID = 'sub1';
    elseif isequal(mysubs, 50)
        d.SID = 'sub50';
    else
    end
    disp(strcat(['Now Processing ', d.SID]));
    fprintf('\n');
    d.fpath = strcat(d.datadir, '\',d.SID, '\ERPs_and_DVs\'); % set the correct subject directory
    
    cd(d.fpath);    
    d.ERP2load = strcat(d.SID, '_AR_all_diffs_2022.erp');
    
    myERP = pop_loaderp( 'filename', d.ERP2load, 'filepath', d.fpath);
    
    
    %% build the struct
    
    %alldata.(d.SID).rawERP = myERP.bindata;
    alldata.(d.SID) = myERP.bindata;
    clearvars -except alldata allDVs d mysubs
    disp(strcat(d.SID, ' has been added to the struct'))
    
    if isequal(mysubs, 50)
        disp('last subject added!')
        beep;
        keyboard;
    else
    end
end

%% create and save the grand average

clear mysubs
tmp = struct2cell(alldata);
GAerp = mean(cat(4, tmp{:}),4);
cd(d.savedir);

% save the grand average
savename = matlab.lang.makeValidName('vMMN_FILTERED_lp10_ERP_grandavgs_Aug2022');
save(savename, 'GAerp'); 

%% for reviewing individual subs and bins


mysub = 13; % 1-50
%mybin = 2; % 1-12
% % plot(tmp{mysub}(:,:,mybin)'); ylim([-8 8])
% % title(strcat(['Subject # ' num2str(mysub), 'Bin #', num2str(mybin)]));


figure('units','normalized','outerposition',[0.1 0.2 0.85 0.80]); 
subplot(4,3,1)
plot(tmp{mysub}(:,:,1)'); ylim([-10 10]); title('Bin 1');

subplot(4,3,2)
plot(tmp{mysub}(:,:,2)'); ylim([-10 10]); title('Bin 2');

subplot(4,3,3)
plot(tmp{mysub}(:,:,3)'); ylim([-10 10]); title('Bin 3');

subplot(4,3,4)
plot(tmp{mysub}(:,:,4)'); ylim([-10 10]); title('Bin 4');

subplot(4,3,5)
plot(tmp{mysub}(:,:,5)'); ylim([-10 10]); title('Bin 5');

subplot(4,3,6)
plot(tmp{mysub}(:,:,6)'); ylim([-10 10]); title('Bin 6');

subplot(4,3,7)
plot(tmp{mysub}(:,:,7)'); ylim([-10 10]); title('Bin 7');

subplot(4,3,8)
plot(tmp{mysub}(:,:,8)'); ylim([-10 10]); title('Bin 8');

subplot(4,3,9)
plot(tmp{mysub}(:,:,9)'); ylim([-10 10]); title('Bin 9');

subplot(4,3,10)
plot(tmp{mysub}(:,:,10)'); ylim([-10 10]); title('Bin 10');

subplot(4,3,11)
plot(tmp{mysub}(:,:,11)'); ylim([-10 10]); title('Bin 11');

subplot(4,3,12)
plot(tmp{mysub}(:,:,12)'); ylim([-10 10]); title('Bin 12');


%% plot the vMMN waveforms for the channels of interest (original subtractions)

%figure; plot(squeeze(GAerp(ARchans, :,1)')); ylim([-5 5]); title('Bin 1'); legend(ARchnlabels);

ARchans = [24:26 29:31 59:61]; % P3, Pz, P4, O1, Oz, O2, PO3, POz, PO4
ARchnlabels = {'P3', 'Pz', 'P4', 'O1', 'Oz', 'O2', 'PO3', 'POz', 'PO4'};
myXticks = [1 100 200 300 400];
myXtickslabel = {'-100' '0' '100' '200' '300'};
%myYticks = [[], -1, 0, 1, []];
myYtickslabel = {'', '-1' '0' '1', ''};

ARstartmeas = 200;
ARendmeas = 500;
%SLstartmeas = 225;
%SLendmeas = 375;

figure('Name', 'Grand Average vMMN, lp10 Hz ORIGINAL DIFF WAVES','units','normalized','outerposition',[0.1 0.2 0.85 0.80]); 
subplot(3,2,1)
plot(squeeze(GAerp(ARchans, :,13)')); ylim([-2 2]); title('Red MMN 1'); %legend(ARchnlabels);
set(gca,'xtick', myXticks, 'FontWeight','bold', 'FontSize', 12);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k');
line([ARstartmeas ARstartmeas],yL,'Linestyle', '--','Color','k');
line([ARendmeas ARendmeas],yL,'Linestyle', '--','Color','k');
set(get(gca,'YLabel'),'String','\muV', 'fontWeight','bold');

subplot(3,2,2)
plot(squeeze(GAerp(ARchans, :,14)')); ylim([-2 2]); title('Green MMN 1'); %legend(ARchnlabels);
set(gca,'xtick', myXticks, 'FontWeight','bold', 'FontSize', 12);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k');
line([ARstartmeas ARstartmeas],yL,'Linestyle', '--','Color','k');
line([ARendmeas ARendmeas],yL,'Linestyle', '--','Color','k');
set(get(gca,'YLabel'),'String','\muV', 'fontWeight','bold');


subplot(3,2,3)
plot(squeeze(GAerp(ARchans, :,15)')); ylim([-2 2]); title('Red MMN 2'); %legend(ARchnlabels);
set(gca,'xtick', myXticks, 'FontWeight','bold', 'FontSize', 12);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k');
line([ARstartmeas ARstartmeas],yL,'Linestyle', '--','Color','k');
line([ARendmeas ARendmeas],yL,'Linestyle', '--','Color','k');
set(get(gca,'YLabel'),'String','\muV', 'fontWeight','bold');

subplot(3,2,4)
plot(squeeze(GAerp(ARchans, :,16)')); ylim([-2 2]); title('Green MMN 2'); %legend(ARchnlabels);
set(gca,'xtick', myXticks, 'FontWeight','bold', 'FontSize', 12);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k');
line([ARstartmeas ARstartmeas],yL,'Linestyle', '--','Color','k');
line([ARendmeas ARendmeas],yL,'Linestyle', '--','Color','k');
set(get(gca,'YLabel'),'String','\muV', 'fontWeight','bold');

subplot(3,2,5)
plot(squeeze(GAerp(ARchans, :,17)')); ylim([-2 2]); title('Red Rule MMN'); %legend(ARchnlabels);
set(gca,'xtick', myXticks, 'FontWeight','bold', 'FontSize', 12);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k');
line([ARstartmeas ARstartmeas],yL,'Linestyle', '--','Color','k');
line([ARendmeas ARendmeas],yL,'Linestyle', '--','Color','k');
set(get(gca,'YLabel'),'String','\muV', 'fontWeight','bold');


subplot(3,2,6)
plot(squeeze(GAerp(ARchans, :,18)')); ylim([-2 2]); title('Green Rule MMN'); 
set(gca,'xtick', myXticks, 'FontWeight','bold', 'FontSize', 12);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k');
line([ARstartmeas ARstartmeas],yL,'Linestyle', '--','Color','k');
line([ARendmeas ARendmeas],yL,'Linestyle', '--','Color','k');
set(get(gca,'YLabel'),'String','\muV', 'fontWeight','bold');
legend(ARchnlabels);

%% plot the vMMN waveforms using the new subtraction 

GA_vMMN_waveforms_scalp_ref_2022 = figure('Name', 'Grand Average vMMN waveforms, Scalp-averaged reference',...
    'units','normalized','outerposition',[0.1 0.2 0.85 0.80],'Color', [1,1,1]); 
subplot(3,2,1)
plot(squeeze(GAerp(ARchans, :,21)')); ylim([-2 2]); title('Red Odd 1'); 
set(gca,'YTickLabel',myYtickslabel); set(get(gca,'YLabel'),'String','\muV', 'fontWeight','bold');
set(gca,'xtick', myXticks, 'FontWeight','bold', 'FontSize', 12);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k');
line([ARstartmeas ARstartmeas],yL,'Linestyle', '--','Color','k');
line([ARendmeas ARendmeas],yL,'Linestyle', '--','Color','k');


subplot(3,2,2)
plot(squeeze(GAerp(ARchans, :,19)')); ylim([-2 2]); title('Green Odd 1'); 
set(gca,'YTickLabel',myYtickslabel); set(get(gca,'YLabel'),'String','\muV', 'fontWeight','bold');
set(gca,'xtick', myXticks, 'FontWeight','bold', 'FontSize', 12);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k');
line([ARstartmeas ARstartmeas],yL,'Linestyle', '--','Color','k');
line([ARendmeas ARendmeas],yL,'Linestyle', '--','Color','k');
set(get(gca,'YLabel'),'String','\muV', 'fontWeight','bold');


subplot(3,2,3)
plot(squeeze(GAerp(ARchans, :,22)')); ylim([-2 2]); title('Red Odd 2'); 
set(gca,'YTickLabel',myYtickslabel); set(get(gca,'YLabel'),'String','\muV', 'fontWeight','bold');
set(gca,'xtick', myXticks, 'FontWeight','bold', 'FontSize', 12);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k');
line([ARstartmeas ARstartmeas],yL,'Linestyle', '--','Color','k');
line([ARendmeas ARendmeas],yL,'Linestyle', '--','Color','k');
set(get(gca,'YLabel'),'String','\muV', 'fontWeight','bold');


subplot(3,2,4)
plot(squeeze(GAerp(ARchans, :,20)')); ylim([-2 2]); title('Green Odd 2'); 
set(gca,'YTickLabel',myYtickslabel); set(get(gca,'YLabel'),'String','\muV', 'fontWeight','bold');
set(gca,'xtick', myXticks, 'FontWeight','bold', 'FontSize', 12);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k');
line([ARstartmeas ARstartmeas],yL,'Linestyle', '--','Color','k');
line([ARendmeas ARendmeas],yL,'Linestyle', '--','Color','k');
set(get(gca,'YLabel'),'String','\muV', 'fontWeight','bold');


subplot(3,2,5)
plot(squeeze(GAerp(ARchans, :,23)')); ylim([-2 2]); title('Red Odd Rule');
set(gca,'YTickLabel',myYtickslabel); set(get(gca,'YLabel'),'String','\muV', 'fontWeight','bold');
set(gca,'xtick', myXticks, 'FontWeight','bold', 'FontSize', 12);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k');
line([ARstartmeas ARstartmeas],yL,'Linestyle', '--','Color','k');
line([ARendmeas ARendmeas],yL,'Linestyle', '--','Color','k');
set(get(gca,'YLabel'),'String','\muV', 'fontWeight','bold');


subplot(3,2,6)
plot(squeeze(GAerp(ARchans, :,24)')); ylim([-2 2]); title('Green Odd Rule'); 
set(gca,'YTickLabel',myYtickslabel); set(get(gca,'YLabel'),'String','\muV', 'fontWeight','bold');
set(gca,'xtick', myXticks, 'FontWeight','bold', 'FontSize', 12);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k');
line([ARstartmeas ARstartmeas],yL,'Linestyle', '--','Color','k');
line([ARendmeas ARendmeas],yL,'Linestyle', '--','Color','k');
set(get(gca,'YLabel'),'String','\muV', 'fontWeight','bold');

% create legend and place it outside all the subplots
h1 = legend(ARchnlabels);
h1.Position = [0.925 0.50 0.06 0.0452]; % 'Position' has the form [left bottom width height]

% save
figfilepath = strcat(d.savedir , '\','GA_vMMN_waveforms_scalp_ref_R1_final_2022.png');
%saveas(GA_vMMN_waveforms_scalp_ref_2022, figfilepath, 'png'); % save the fig


%% Grand Average, raw ERPs, scalp average referenced, channels of interest only

GA_AvgRef_rawERPs = figure('Name', 'Grand Averaged, Average Referenced Data, Timelocked to 1st position',...
     'units','normalized','outerposition',[0.1 0.2 0.85 0.80],'Color', [1,1,1]);

% Simple Blocks (Red Standards) 
subplot(3,4,1)
plot(GAerp(ARchans,:,1)');
xlim([1 500]);ylim([-6 6]); title('Simple, Red Standard 1');  
set(gca,'xtick', myXticks, 'fontWeight','bold');set(gca,'XTickLabel',myXtickslabel); 
set(get(gca,'XLabel'),'String','ms', 'fontWeight','bold');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k'); 
set(get(gca,'YLabel'),'String','\muV');


subplot(3,4,2)
plot(GAerp(ARchans,:,3)');
xlim([1 500]);ylim([-6 6]); title('Simple, Green Odd 1'); 
set(gca,'xtick', myXticks, 'fontWeight','bold');set(gca,'XTickLabel',myXtickslabel); 
set(get(gca,'XLabel'),'String','ms', 'fontWeight','bold');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k'); 
set(get(gca,'YLabel'),'String','\muV')

subplot(3,4,3)
plot(GAerp(ARchans,:,2)');
xlim([1 500]);ylim([-6 6]); title('Simple, Red Standard 2'); 
set(gca,'xtick', myXticks, 'fontWeight','bold');set(gca,'XTickLabel',myXtickslabel); 
set(get(gca,'XLabel'),'String','ms', 'fontWeight','bold');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k'); 
set(get(gca,'YLabel'),'String','\muV')

subplot(3,4,4)
plot(GAerp(ARchans,:,4)');
xlim([1 500]);ylim([-6 6]); title('Simple, Green Odd 2'); 
set(gca,'xtick', myXticks, 'fontWeight','bold');set(gca,'XTickLabel',myXtickslabel); 
set(get(gca,'XLabel'),'String','ms', 'fontWeight','bold');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k'); 
set(get(gca,'YLabel'),'String','\muV')

% Reverse Blocks (Green Standards)
subplot(3,4,5)
plot(GAerp(ARchans,:,5)');
xlim([1 500]);ylim([-6 6]); title('Simple, Green Standard 1'); 
set(gca,'xtick', myXticks, 'fontWeight','bold');set(gca,'XTickLabel',myXtickslabel); 
set(get(gca,'XLabel'),'String','ms', 'fontWeight','bold');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k'); 
set(get(gca,'YLabel'),'String','\muV')

subplot(3,4,6)
plot(GAerp(ARchans,:,7)');
xlim([1 500]);ylim([-6 6]); title('Simple, Red Odd 1'); % 
set(gca,'xtick', myXticks, 'fontWeight','bold');set(gca,'XTickLabel',myXtickslabel); 
set(get(gca,'XLabel'),'String','ms', 'fontWeight','bold');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k'); 
set(get(gca,'YLabel'),'String','\muV')


subplot(3,4,7)
plot(GAerp(ARchans,:,6)');
xlim([1 500]);ylim([-6 6]); title('Simple, Green Standard 2'); 
set(gca,'xtick', myXticks, 'fontWeight','bold');set(gca,'XTickLabel',myXtickslabel); 
set(get(gca,'XLabel'),'String','ms', 'fontWeight','bold');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k'); 
set(get(gca,'YLabel'),'String','\muV')

subplot(3,4,8)
plot(GAerp(ARchans,:,8)');
xlim([1 500]);ylim([-6 6]); title('Simple, Red Odd 2');  
set(gca,'xtick', myXticks, 'fontWeight','bold');set(gca,'XTickLabel',myXtickslabel); 
set(get(gca,'XLabel'),'String','ms', 'fontWeight','bold');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k'); 
set(get(gca,'YLabel'),'String','\muV')


% Rule Blocks 
subplot(3,4,9)
plot(GAerp(ARchans,:,9)');
xlim([1 500]);ylim([-6 6]); title('Rule, Red Standard'); 
set(gca,'xtick', myXticks, 'fontWeight','bold');set(gca,'XTickLabel',myXtickslabel); 
set(get(gca,'XLabel'),'String','ms', 'fontWeight','bold');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k'); 
set(get(gca,'YLabel'),'String','\muV')


subplot(3,4,10)
plot(GAerp(ARchans,:,10)');
xlim([1 500]);ylim([-6 6]); title('Rule, Green Standard');  
set(gca,'xtick', myXticks, 'fontWeight','bold');set(gca,'XTickLabel',myXtickslabel); 
set(get(gca,'XLabel'),'String','ms', 'fontWeight','bold');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k'); 
set(get(gca,'YLabel'),'String','\muV')


subplot(3,4,11)
plot(GAerp(ARchans,:,11)');
xlim([1 500]);ylim([-6 6]); title('Rule, Red Odd');  
set(gca,'xtick', myXticks, 'fontWeight','bold');set(gca,'XTickLabel',myXtickslabel); 
set(get(gca,'XLabel'),'String','ms', 'fontWeight','bold');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k'); 
set(get(gca,'YLabel'),'String','\muV')

subplot(3,4,12)
plot(GAerp(ARchans,:,12)');
xlim([1 500]);ylim([-6 6]); title('Rule, Green Odd');  
set(gca,'xtick', myXticks, 'fontWeight','bold');set(gca,'XTickLabel',myXtickslabel); 
set(get(gca,'XLabel'),'String','ms', 'fontWeight','bold');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k'); 
set(get(gca,'YLabel'),'String','\muV')


% create legend and place it outside all the subplots
h1 = legend(ARchnlabels);
h1.Position = [0.925 0.50 0.06 0.0452]; % 'Position' has the form [left bottom width height]

%save
figfilepath = strcat(d.savedir , '\','GA_raw_ERP_waveforms_scalp_ref_2022.png');
saveas(GA_AvgRef_rawERPs, figfilepath, 'png'); % save the fig


%% Grand Average Figures, Position 1 Bins

GA_AvgRef_rawERP_1stpos = figure('Name', 'Grand Averaged, Average Referenced Data, Timelocked to 1st position',...
     'units','normalized','outerposition',[0.1 0.2 0.85 0.80],'Color', [1,1,1]);
subplot(221)
plot(GAerp(ARchans,:,1)');
xlim([1 500]);ylim([-6 6]); title('Simple, Red Standard 1'); % 
set(gca,'xtick', myXticks);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k'); set(get(gca,'YLabel'),'String','\muV');


subplot(222)
plot(GAerp(ARchans,:,5)');
xlim([1 500]);ylim([-6 6]); title('Reverse, Green Standard 1'); % 
set(gca,'xtick', myXticks);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k'); set(get(gca,'YLabel'),'String','\muV');


subplot(223)
plot(GAerp(ARchans,:,7)');
xlim([1 500]);ylim([-6 6]); title('Reverse, Red Odd 1'); % 
set(gca,'xtick', myXticks);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k'); set(get(gca,'YLabel'),'String','\muV');

subplot(224)
plot(GAerp(ARchans,:,3)');
xlim([1 500]);ylim([-6 6]); title('Simple, Green Odd 1'); % 
set(gca,'xtick', myXticks);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k'); set(get(gca,'YLabel'),'String','\muV');

% save
% % figfilepath = strcat(d.savedir , '\','GA_AR_1st_pos_bins_rawERPs_Aug2022.png');
% % saveas(GA_AvgRef_rawERP_1stpos, figfilepath, 'png'); % save the fig

%% Grand Average Figures, Position 2 Bins

GA_AvgRef_rawERP_2ndpos = figure('units','normalized','outerposition',[0.1 0.2 0.85 0.80],...
    'Name', 'Grand Averaged, Average Referenced Data, Timelocked to 2nd position');
subplot(221)
plot(GAerp(:,:,2)');
xlim([1 500]);ylim([-8 8]); title('Bin 2, Simple Std R2R'); % 
set(gca,'xtick', myXticks);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k'); set(get(gca,'YLabel'),'String','\muV');

subplot(222)
plot(GAerp(:,:,6)');
xlim([1 500]);ylim([-8 8]); title('Bin 6, Reverse Std GR2G'); % 
set(gca,'xtick', myXticks);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k'); set(get(gca,'YLabel'),'String','\muV');


subplot(223)
plot(GAerp(:,:,4)');
xlim([1 500]);ylim([-8 8]); title('Bin 4, Simple Odd R2G'); % 
set(gca,'xtick', myXticks);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k'); set(get(gca,'YLabel'),'String','\muV');

subplot(224)
plot(GAerp(:,:,8)');
xlim([1 500]);ylim([-8 8]); title('Bin 8, Reverse Odd G2R'); % 
set(gca,'xtick', myXticks);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k'); set(get(gca,'YLabel'),'String','\muV');

% save
figfilepath = strcat(d.savedir , '\','GA_AR_2nd_pos_bins_rawERPs_Aug2022.png');
saveas(GA_AvgRef_rawERP_2ndpos, figfilepath, 'png'); % save the fig

%% Grand Average Figures, Rule Bins

GA_AvgRef_rawERP_rule = figure('units','normalized','outerposition',[0.1 0.2 0.85 0.80],...
    'Name', 'Grand Averaged, Average Referenced Data, raw ERPs, Rule Bins');
subplot(221)
plot(GAerp(:,:,9)');
xlim([1 500]);ylim([-8 8]); title('Bin 9, Rule Std G2G'); % 
set(gca,'xtick', myXticks);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k'); set(get(gca,'YLabel'),'String','\muV');

subplot(222)
plot(GAerp(:,:,10)');
xlim([1 500]);ylim([-8 8]); title('Bin 10, Rule Std R2R'); % 
set(gca,'xtick', myXticks);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k'); set(get(gca,'YLabel'),'String','\muV');


subplot(223)
plot(GAerp(:,:,11)');
xlim([1 500]);ylim([-8 8]); title('Bin 11, Rule Odd R2G'); % 
set(gca,'xtick', myXticks);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k'); set(get(gca,'YLabel'),'String','\muV');

subplot(224)
plot(GAerp(:,:,12)');
xlim([1 500]);ylim([-8 8]); title('Bin 12, Rule Odd G2R'); % 
set(gca,'xtick', myXticks);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k'); set(get(gca,'YLabel'),'String','\muV');

% save
figfilepath = strcat(d.savedir , '\','GA_AR_rule_bins_rawERPs_Aug2022.png');
saveas(GA_AvgRef_rawERP_rule, figfilepath, 'png'); % save the fig


%% run and plot and fft of the data

v.srate = 500; % sampling rate
v.nsamps = size(GAerp,2); 
v.nyqfrq = v.srate/2; % Nyquist frequency is always half the sampling rate  -- this is the highest freq. we can resolve in our FFT
v.hannwin = hann(v.nsamps); % get a hann window for tapering -- we taper each epoch to avoid edge effects; ideally we would overlap epochs as in pwelch, but this will do
v.zpadfactor = 2; % zeropadding to increase the freq. resolution of our FFT -- this will give us 0.5 Hz increments given our other parameters
v.nuniquePts =  (v.nsamps*v.zpadfactor)/2+1; % this is the size of the fft that is returned AFTER feeding it a zero-padded signal 
v.Hz = linspace(0,v.nyqfrq,v.nuniquePts); % the indices of the frqs returned from the ffts (should contain a vector from 0-nyquist in 0.5 hz steps)
v.nchans = size(GAerp,1);
v.bins = size(GAerp,3);

%permute the data to get into samples, channels, bins for the FFT:
permdata = permute(GAerp, [2, 1, 3]);

fprintf('\n');
disp('Calculating tapered single-trial spectra');
disp('for pre/post event of interest');

Spect = zeros(v.nuniquePts, v.nchans, v.bins);% preallocate struct subfields

for bins = 1:v.bins % loop over bins
    disp(strcat('Now running bin #',num2str(bins)));
    for chans = 1:v.nchans % loop over channels
        % Obtain spectral power in five steps
        % 1) Multiply the original single trial by the hann window
        % 2a) In one line, zeropad the signal to increase freq. resolution to 0.5 Hz...
        % 2b) take the fft of the zero-padded signal...
        % 2c) and divide by original signal length to scale the coefficients properly
        % 3) Discard the non-unique points
        % 4) Multiply everything but the DC and Nyquist frequencies by 2 to retain the power that was contained in the negative frequencies
        % 5) Convert to power using the abs and ^2
        hwindata = permdata(1:500,chans,bins).*v.hannwin; % hann-windowed pre-Stim data
                
        % obtain ffts of each data segment and scale the coefficients to the signal length
        hwindataX = fft(hwindata, v.zpadfactor*v.nsamps)/v.nsamps;% returns a 1024-point fft in 0.5 Hz steps inlcuding neg freqs.
        
        % discard the non-unique points (leaving us 501)
        hwindataX = hwindataX(1:v.nuniquePts);
                
        % multiply everything but the DC and Nyquist by 2 to retain the
        % power that was contained in the negative frequencies -- see:
        % https://www.mathworks.com/matlabcentral/answers/33653-psd-estimation-fft-vs-welch
        hwindataX(2:end-1) = hwindataX(2:end-1)*2;
                
        % convert to power
        Spect(:,chans,bins) = abs(hwindataX).^2;        
    end
end

beep;
disp('now make figures');
keyboard;


%% basic plot of the spectra

vMMN_spectra_fig = figure('units','normalized','outerposition',[0.1 0.2 0.85 0.80],...
    'Name', 'Grand Averaged, Average Referenced Data, Spectra, All Bins');

subplot(4,3,1)
plot(v.Hz, Spect(:,:,1)); xlim([0 15]); xlabel('Hz'); ylabel('\muV^2'); title('Bin 1')

subplot(4,3,2)
plot(v.Hz, Spect(:,:,2)); xlim([0 15]); xlabel('Hz');  title('Bin 2')

subplot(4,3,3)
plot(v.Hz, Spect(:,:,3)); xlim([0 15]); xlabel('Hz');  title('Bin 3')

subplot(4,3,4)
plot(v.Hz, Spect(:,:,4)); xlim([0 15]); xlabel('Hz'); ylabel('\muV^2'); title('Bin 4')

subplot(4,3,5)
plot(v.Hz, Spect(:,:,5)); xlim([0 15]); xlabel('Hz');  title('Bin 5')

subplot(4,3,6)
plot(v.Hz, Spect(:,:,6)); xlim([0 15]); xlabel('Hz');  title('Bin 6')

subplot(4,3,7)
plot(v.Hz, Spect(:,:,7)); xlim([0 15]); xlabel('Hz'); ylabel('\muV^2'); title('Bin 7')

subplot(4,3,8)
plot(v.Hz, Spect(:,:,8)); xlim([0 15]); xlabel('Hz'); title('Bin 8')

subplot(4,3,9)
plot(v.Hz, Spect(:,:,9)); xlim([0 15]); xlabel('Hz');  title('Bin 9')

subplot(4,3,10)
plot(v.Hz, Spect(:,:,10)); xlim([0 15]); xlabel('Hz'); ylabel('\muV^2'); title('Bin 10')

subplot(4,3,11)
plot(v.Hz, Spect(:,:,11)); xlim([0 15]); xlabel('Hz');  title('Bin 11')

subplot(4,3,12)
plot(v.Hz, Spect(:,:,12)); xlim([0 15]); xlabel('Hz');  title('Bin 12')


% save
figfilepath = strcat(d.savedir , '\','GA_AR_Spectra_Aug2022.png');
saveas(vMMN_spectra_fig, figfilepath, 'png'); % save the fig


%% to check a single subject

% % % subplot(4,3,4)
% % % plot(tmp{mysub}(:,:,4)'); ylim([-10 10]); title('Bin 4');
% % % 
% % % 
% % % 
% % % subplot(4,3,5)
% % % plot(tmp{mysub}(:,:,5)'); ylim([-10 10]); title('Bin 5');
% % % 
% % % subplot(4,3,6)
% % % plot(tmp{mysub}(:,:,6)'); ylim([-10 10]); title('Bin 6');
% % % 
% % % subplot(4,3,7)
% % % plot(tmp{mysub}(:,:,7)'); ylim([-10 10]); title('Bin 7');
% % % 
% % % subplot(4,3,8)
% % % plot(tmp{mysub}(:,:,8)'); ylim([-10 10]); title('Bin 8');
% % % 
% % % subplot(4,3,9)
% % % plot(tmp{mysub}(:,:,9)'); ylim([-10 10]); title('Bin 9');
% % % 
% % % subplot(4,3,10)
% % % plot(tmp{mysub}(:,:,10)'); ylim([-10 10]); title('Bin 10');
% % % 
% % % subplot(4,3,11)
% % % plot(tmp{mysub}(:,:,11)'); ylim([-10 10]); title('Bin 11');
% % % 
% % % subplot(4,3,12)
% % % plot(tmp{mysub}(:,:,12)'); ylim([-10 10]); title('Bin 12');

end