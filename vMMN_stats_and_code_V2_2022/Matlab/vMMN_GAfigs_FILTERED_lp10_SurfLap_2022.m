function[] = vMMN_GAfigs_FILTERED_lp10_SurfLap_2022


d.datadir = 'filepath';
d.savedir = 'filepath';

cd(d.datadir);
eeglab

for mysubs = 1:50 % the hard-coded final sample size based on minimum 40% trials retained in each condition

   % load subjects individually
   
   
    disp(strcat(['Now Processing ', d.SID]));
    fprintf('\n');
    d.fpath = strcat(d.datadir, '\',d.SID, '\ERPs_and_DVs\'); % set the correct subject directory
    
    cd(d.fpath);    
    d.ERP2load = strcat(d.SID, '_SL_all_diffs_2022.erp');
    
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
slGAerp = mean(cat(4, tmp{:}),4);
cd(d.savedir);

% save the grand average
savename = matlab.lang.makeValidName('vMMN_FILTERED_lp10_ERP_grandavgs_SurfLap_Aug2022');
save(savename, 'slGAerp'); 

%% for reviewing individual subs and bins


beep;
disp('updated below')
keyboard;

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

SLchans = [30 60];
SLchnlabels = {'Oz', 'POz'};
myXticks = [1 100 200 300 400];
myXtickslabel = {'-100' '0' '100' '200' '300'};
%myYtickslabel = {'', '-1' '0' '1', ''};

SLstartmeas = 225;
SLendmeas = 375;

figure('Name', 'Grand Average vMMN, lp10 Hz ORIGINAL DIFF WAVES','units','normalized','outerposition',[0.1 0.2 0.85 0.80]); 
subplot(3,2,1)
plot(squeeze(slGAerp(SLchans, :,13)')); ylim([-0.1 0.1]); title('Red MMN 1'); %legend(ARchnlabels);
set(gca,'xtick', myXticks, 'FontWeight','bold', 'FontSize', 12);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k');
line([SLstartmeas SLstartmeas],yL,'Linestyle', '--','Color','k');
line([SLendmeas SLendmeas],yL,'Linestyle', '--','Color','k');
set(get(gca,'YLabel'),'String','\muV', 'fontWeight','bold');

subplot(3,2,2)
plot(squeeze(slGAerp(SLchans, :,14)')); ylim([-0.1 0.1]); title('Green MMN 1'); %legend(ARchnlabels);
set(gca,'xtick', myXticks, 'FontWeight','bold', 'FontSize', 12);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k');
line([SLstartmeas SLstartmeas],yL,'Linestyle', '--','Color','k');
line([SLendmeas SLendmeas],yL,'Linestyle', '--','Color','k');
set(get(gca,'YLabel'),'String','\muV', 'fontWeight','bold');


subplot(3,2,3)
plot(squeeze(slGAerp(SLchans, :,15)')); ylim([-0.1 0.1]); title('Red MMN 2'); %legend(ARchnlabels);
set(gca,'xtick', myXticks, 'FontWeight','bold', 'FontSize', 12);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k');
line([SLstartmeas SLstartmeas],yL,'Linestyle', '--','Color','k');
line([SLendmeas SLendmeas],yL,'Linestyle', '--','Color','k');
set(get(gca,'YLabel'),'String','\muV', 'fontWeight','bold');

subplot(3,2,4)
plot(squeeze(slGAerp(SLchans, :,16)')); ylim([-0.1 0.1]); title('Green MMN 2'); %legend(ARchnlabels);
set(gca,'xtick', myXticks, 'FontWeight','bold', 'FontSize', 12);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k');
line([SLstartmeas SLstartmeas],yL,'Linestyle', '--','Color','k');
line([SLendmeas SLendmeas],yL,'Linestyle', '--','Color','k');
set(get(gca,'YLabel'),'String','\muV', 'fontWeight','bold');

subplot(3,2,5)
plot(squeeze(slGAerp(SLchans, :,17)')); ylim([-0.1 0.1]); title('Red Rule MMN'); %legend(ARchnlabels);
set(gca,'xtick', myXticks, 'FontWeight','bold', 'FontSize', 12);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k');
line([SLstartmeas SLstartmeas],yL,'Linestyle', '--','Color','k');
line([SLendmeas SLendmeas],yL,'Linestyle', '--','Color','k');
set(get(gca,'YLabel'),'String','\muV', 'fontWeight','bold');


subplot(3,2,6)
plot(squeeze(slGAerp(SLchans, :,18)')); ylim([-0.1 0.1]); title('Green Rule MMN'); 
set(gca,'xtick', myXticks, 'FontWeight','bold', 'FontSize', 12);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k');
line([SLstartmeas SLstartmeas],yL,'Linestyle', '--','Color','k');
line([SLendmeas SLendmeas],yL,'Linestyle', '--','Color','k');
set(get(gca,'YLabel'),'String','\muV', 'fontWeight','bold');
legend(SLchnlabels);

%% plot the vMMN waveforms using the new subtraction 

GA_vMMN_waveforms_surf_Lap_2022 = figure('Name', 'Grand Average vMMN waveforms, Laplacian transformed',...
    'units','normalized','outerposition',[0.1 0.2 0.85 0.80],'Color', [1,1,1]); 
subplot(3,2,1)
plot(slGAerp(SLchans, :,21)', 'LineWidth',2); ylim([-0.15 0.15]); title('Red Odd 1'); 
set(gca,'xtick', myXticks, 'FontWeight','bold', 'FontSize', 12);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k');
line([SLstartmeas SLstartmeas],yL,'Linestyle', '--','Color','k');
line([SLendmeas SLendmeas],yL,'Linestyle', '--','Color','k');
set(get(gca,'YLabel'),'String','\muV/cm^2', 'fontWeight','bold');

subplot(3,2,2)
plot(slGAerp(SLchans, :,19)', 'LineWidth',2); ylim([-0.15 0.15]); title('Green Odd 1'); 
set(gca,'xtick', myXticks, 'FontWeight','bold', 'FontSize', 12);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k');
line([SLstartmeas SLstartmeas],yL,'Linestyle', '--','Color','k');
line([SLendmeas SLendmeas],yL,'Linestyle', '--','Color','k');
set(get(gca,'YLabel'),'String','\muV/cm^2', 'fontWeight','bold');


subplot(3,2,3)
plot(slGAerp(SLchans, :,22)', 'LineWidth',2); ylim([-0.15 0.15]); title('Red Odd 2'); 
set(gca,'xtick', myXticks, 'FontWeight','bold', 'FontSize', 12);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k');
line([SLstartmeas SLstartmeas],yL,'Linestyle', '--','Color','k');
line([SLendmeas SLendmeas],yL,'Linestyle', '--','Color','k');
set(get(gca,'YLabel'),'String','\muV/cm^2', 'fontWeight','bold');


subplot(3,2,4)
plot(slGAerp(SLchans, :,20)', 'LineWidth',2); ylim([-0.15 0.15]); title('Green Odd 2'); 
set(gca,'xtick', myXticks, 'FontWeight','bold', 'FontSize', 12);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k');
line([SLstartmeas SLstartmeas],yL,'Linestyle', '--','Color','k');
line([SLendmeas SLendmeas],yL,'Linestyle', '--','Color','k');
set(get(gca,'YLabel'),'String','\muV/cm^2', 'fontWeight','bold');


subplot(3,2,5)
plot(slGAerp(SLchans, :,23)', 'LineWidth',2); ylim([-0.15 0.15]); title('Red Odd Rule');
set(gca,'xtick', myXticks, 'FontWeight','bold', 'FontSize', 12);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k');
line([SLstartmeas SLstartmeas],yL,'Linestyle', '--','Color','k');
line([SLendmeas SLendmeas],yL,'Linestyle', '--','Color','k');
set(get(gca,'YLabel'),'String','\muV/cm^2', 'fontWeight','bold');


subplot(3,2,6)
plot(slGAerp(SLchans, :,24)', 'LineWidth',2); ylim([-0.15 0.15]); title('Green Odd Rule'); 
set(gca,'xtick', myXticks, 'FontWeight','bold', 'FontSize', 12);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k');
line([SLstartmeas SLstartmeas],yL,'Linestyle', '--','Color','k');
line([SLendmeas SLendmeas],yL,'Linestyle', '--','Color','k');
set(get(gca,'YLabel'),'String','\muV/cm^2', 'fontWeight','bold');


% create legend and place it outside all the subplots
h1 = legend(SLchnlabels);
h1.Position = [0.925 0.50 0.06 0.0452]; % 'Position' has the form [left bottom width height]

% save
%figfilepath = strcat(d.savedir , '\','GA_vMMN_waveforms_surfLap_2022.png');
%saveas(GA_vMMN_waveforms_surf_Lap_2022, figfilepath, 'png'); % save the fig


%% Grand Average, raw ERPs, scalp average referenced, channels of interest only

GA_SurfLap_rawERPs = figure('Name', 'Grand Averaged, Laplacian-transformed Data, Raw ERPs',...
     'units','normalized','outerposition',[0.1 0.2 0.85 0.80],'Color', [1,1,1]);

% Simple Blocks (Red Standards) 
subplot(3,4,1)
plot(slGAerp(SLchans,:,1)', 'LineWidth',2);
xlim([1 500]);ylim([-.75 .75]); title('Simple, Red Standard 1');  
set(gca,'xtick', myXticks, 'fontWeight','bold');set(gca,'XTickLabel',myXtickslabel); 
set(get(gca,'XLabel'),'String','ms', 'fontWeight','bold');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k'); 
set(get(gca,'YLabel'),'String','\muV/cm^2');


subplot(3,4,2)
plot(slGAerp(SLchans,:,3)', 'LineWidth',2);
xlim([1 500]);ylim([-.75 .75]); title('Simple, Green Odd 1'); 
set(gca,'xtick', myXticks, 'fontWeight','bold');set(gca,'XTickLabel',myXtickslabel); 
set(get(gca,'XLabel'),'String','ms', 'fontWeight','bold');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k'); 
set(get(gca,'YLabel'),'String','\muV/cm^2')

subplot(3,4,3)
plot(slGAerp(SLchans,:,2)', 'LineWidth',2);
xlim([1 500]);ylim([-.75 .75]); title('Simple, Red Standard 2'); 
set(gca,'xtick', myXticks, 'fontWeight','bold');set(gca,'XTickLabel',myXtickslabel); 
set(get(gca,'XLabel'),'String','ms', 'fontWeight','bold');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k'); 
set(get(gca,'YLabel'),'String','\muV/cm^2')

subplot(3,4,4)
plot(slGAerp(SLchans,:,4)', 'LineWidth',2);
xlim([1 500]);ylim([-.75 .75]); title('Simple, Green Odd 2'); 
set(gca,'xtick', myXticks, 'fontWeight','bold');set(gca,'XTickLabel',myXtickslabel); 
set(get(gca,'XLabel'),'String','ms', 'fontWeight','bold');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k'); 
set(get(gca,'YLabel'),'String','\muV/cm^2')

% Reverse Blocks (Green Standards)
subplot(3,4,5)
plot(slGAerp(SLchans,:,5)', 'LineWidth',2);
xlim([1 500]);ylim([-.75 .75]); title('Simple, Green Standard 1'); 
set(gca,'xtick', myXticks, 'fontWeight','bold');set(gca,'XTickLabel',myXtickslabel); 
set(get(gca,'XLabel'),'String','ms', 'fontWeight','bold');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k'); 
set(get(gca,'YLabel'),'String','\muV/cm^2')

subplot(3,4,6)
plot(slGAerp(SLchans,:,7)', 'LineWidth',2);
xlim([1 500]);ylim([-.75 .75]); title('Simple, Red Odd 1'); % 
set(gca,'xtick', myXticks, 'fontWeight','bold');set(gca,'XTickLabel',myXtickslabel); 
set(get(gca,'XLabel'),'String','ms', 'fontWeight','bold');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k'); 
set(get(gca,'YLabel'),'String','\muV/cm^2')


subplot(3,4,7)
plot(slGAerp(SLchans,:,6)', 'LineWidth',2);
xlim([1 500]);ylim([-.75 .75]); title('Simple, Green Standard 2'); 
set(gca,'xtick', myXticks, 'fontWeight','bold');set(gca,'XTickLabel',myXtickslabel); 
set(get(gca,'XLabel'),'String','ms', 'fontWeight','bold');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k'); 
set(get(gca,'YLabel'),'String','\muV/cm^2')

subplot(3,4,8)
plot(slGAerp(SLchans,:,8)', 'LineWidth',2);
xlim([1 500]);ylim([-.75 .75]); title('Simple, Red Odd 2');  
set(gca,'xtick', myXticks, 'fontWeight','bold');set(gca,'XTickLabel',myXtickslabel); 
set(get(gca,'XLabel'),'String','ms', 'fontWeight','bold');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k'); 
set(get(gca,'YLabel'),'String','\muV/cm^2')


% Rule Blocks 
subplot(3,4,9)
plot(slGAerp(SLchans,:,9)', 'LineWidth',2);
xlim([1 500]);ylim([-.75 .75]); title('Rule, Red Standard'); 
set(gca,'xtick', myXticks, 'fontWeight','bold');set(gca,'XTickLabel',myXtickslabel); 
set(get(gca,'XLabel'),'String','ms', 'fontWeight','bold');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k'); 
set(get(gca,'YLabel'),'String','\muV/cm^2')


subplot(3,4,10)
plot(slGAerp(SLchans,:,10)', 'LineWidth',2);
xlim([1 500]);ylim([-.75 .75]); title('Rule, Green Standard');  
set(gca,'xtick', myXticks, 'fontWeight','bold');set(gca,'XTickLabel',myXtickslabel); 
set(get(gca,'XLabel'),'String','ms', 'fontWeight','bold');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k'); 
set(get(gca,'YLabel'),'String','\muV/cm^2')


subplot(3,4,11)
plot(slGAerp(SLchans,:,11)', 'LineWidth',2);
xlim([1 500]);ylim([-.75 .75]); title('Rule, Red Odd');  
set(gca,'xtick', myXticks, 'fontWeight','bold');set(gca,'XTickLabel',myXtickslabel); 
set(get(gca,'XLabel'),'String','ms', 'fontWeight','bold');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k'); 
set(get(gca,'YLabel'),'String','\muV/cm^2')

subplot(3,4,12)
plot(slGAerp(SLchans,:,12)', 'LineWidth',2);
xlim([1 500]);ylim([-.75 .75]); title('Rule, Green Odd');  
set(gca,'xtick', myXticks, 'fontWeight','bold');set(gca,'XTickLabel',myXtickslabel); 
set(get(gca,'XLabel'),'String','ms', 'fontWeight','bold');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k'); 
set(get(gca,'YLabel'),'String','\muV/cm^2')


% create legend and place it outside all the subplots
h1 = legend(SLchnlabels);
h1.Position = [0.925 0.50 0.06 0.0452]; % 'Position' has the form [left bottom width height]

% save
figfilepath = strcat(d.savedir , '\','GA_raw_ERP_waveforms_surf_Lap_2022.png');
saveas(GA_SurfLap_rawERPs, figfilepath, 'png'); % save the fig

