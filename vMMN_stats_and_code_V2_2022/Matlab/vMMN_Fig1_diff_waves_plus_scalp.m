function[] = vMMN_Fig1_diff_waves_plus_scalp

%% prep to make figures

GAdir = 'filepath';
scalpdir = 'filepath';

cd(GAdir);
load vMMN_FILTERED_lp10_ERP_grandavgs_Aug2022.mat
load vMMN_FILTERED_lp10_ERP_grandavgs_SurfLap_Aug2022.mat
cd(scalpdir);
load BV62.mat 
cd(GAdir);

myXticks = [1 100 200 300 400];
myXtickslabel = {'-100' '0' '100' '200' '300'};

%% set-up

% average over all conditions of interst
gaSL = mean(slGAerp(:,:,19:24),3);  %#ok<USENS>

% average over all conditions of interst
gaAR = mean(GAerp(:,:,19:24),3);  %#ok<USENS>

ARstartmeas = 200;
ARendmeas = 500;
SLstartmeas = 225;
SLendmeas = 375;


% pull out the maximum and minimum amplitudes
% [~, ARmaxLat] = max(max(gagaAR)); % average reference
[~, ARminLat] = min(min(gaAR));

% [~, SLmaxLat] = max(max(gagaSL)); % surface Laplacian
[~, SLminLat] = min(min(gaSL));

ARminchns = [24:26 29:31 59:61]; % P3, Pz, P4, O1, Oz, O2, PO3, POz, PO4
SLminchns = [30, 60]; % Oz, POz

%ARmaxchns = 62; % 
%SLmaxchns = [54, 23, 58, 27, 57, 62]; % P5, P7, PO7, P8, P6, PO8

%% Plot the figure

figsavdir = 'filepath';

vMMN_uberGAFig = figure('Color', [1,1,1],'units','normalized','outerposition',[0.1 0.2 0.65 0.80],...
    'Name', 'Grand Averaged, Average Referenced Data, Timelocked to 1st position');

subplot(2,3,[1 2]);
plot(gaAR');
xlim([1 500]);ylim([-0.8 0.8]);  
set(gca,'xtick', myXticks, 'FontWeight','bold', 'FontSize', 12);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k');
line([ARstartmeas ARstartmeas],yL,'Linestyle', '--','Color','k');
line([ARendmeas ARendmeas],yL,'Linestyle', '--','Color','k');
line([ARminLat ARminLat],yL,'Linestyle', ':','Color','b');
set(get(gca,'YLabel'),'String','\muV', 'fontWeight','bold');

subplot(2,3,3);
topoplot(gaAR(:,ARminLat),BV62,'plotrad', .60,'conv' ,'on','maplimits', [-1 1],  'emarker2',  {ARminchns,'p', 'w'}); 
h = colorbar;
%set(get(h,'Ylabel'),'string','\muV', 'FontSize',11, 'FontWeight','bold');
set(get(h,'Ylabel'),'string','\muV', 'FontSize',11, 'FontWeight','bold');
h.FontSize = 11;
h.FontWeight = 'bold';
title('223 ms', 'FontSize',11, 'FontWeight','bold');
%annotation('textbox', [0.5, 1, 0.0, 0], 'string', 'Scalp-Average Referenced', 'FontWeight','bold', 'FontSize', 14)

subplot(2,3, [4 5])
plot(gaSL');
xlim([1 500]);ylim([-.08 .08]); %title('Laplacian-Transformed')
set(gca,'xtick', myXticks, 'FontWeight','bold','FontSize', 12);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k');
line([SLstartmeas SLstartmeas],yL,'Linestyle', '--','Color','k');
line([SLendmeas SLendmeas],yL,'Linestyle', '--','Color','k');
line([SLminLat SLminLat],yL,'Linestyle', ':','Color','b');
set(get(gca,'YLabel'),'String','\muV/cm^2', 'fontWeight','bold');
subplot(2,3,6)
topoplot(gaSL(:,SLminLat),BV62,'plotrad', .60,'conv' ,'on','maplimits', [-0.04 0.04],  'emarker2',  {SLminchns,'p', 'w'}); 
h = colorbar;
set(get(h,'Ylabel'),'string','\muV/cm^2','FontSize',11 , 'FontWeight','bold');
h.FontSize = 11;
h.FontWeight = 'bold';
title('151 ms', 'FontSize',11, 'FontWeight','bold');


figfilepath = strcat(figsavdir , '\','Fig2_GA_diff_waves_scalp_maps_Aug_2022.png');
saveas(vMMN_uberGAFig, figfilepath, 'png'); % save the fig

beep;
disp('save the fig as an eps')
keyboard;

end

%% if needed...

%% Grand-average vMMN waveform (not separated by condition), scalp reference


% % % Overall_GA_vMMN_waveform_scalp_ref_2022 = figure('Name', 'Grand Average vMMN waveforms, Scalp-averaged reference',...
% % %     'units','normalized','outerposition',[0.1 0.2 0.85 0.80],'Color', [1,1,1]); 
% % % subplot(3,2,1)
% % % plot(squeeze(GAerp(ARchans, :,21)')); ylim([-2 2]); title('Red Minus Green MMN 1'); 
% % % set(gca,'YTickLabel',myYtickslabel); set(get(gca,'YLabel'),'String','\muV', 'fontWeight','bold');
% % % set(gca,'xtick', myXticks, 'FontWeight','bold', 'FontSize', 12);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
% % % yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k');
% % % line([ARstartmeas ARstartmeas],yL,'Linestyle', '--','Color','k');
% % % line([ARendmeas ARendmeas],yL,'Linestyle', '--','Color','k');
% % % 
% % % % save
% % % figfilepath = strcat(d.savedir , '\','GA_vMMN_waveforms_scalp_ref_2022.png');
% % % saveas(Overall_GA_vMMN_waveform_scalp_ref_2022, figfilepath, 'png'); % save the fig
