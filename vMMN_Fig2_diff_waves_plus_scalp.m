function[] = vMMN_Fig2_diff_waves_plus_scalp

%% prep to make figures

GAdir = 'DIRECTORY CONTAINING THE GRAND AVERAGES - Dated 8.6.9';
scalpdir = 'DIRECTORY CONTAINING the file BV62.mat';

cd(GAdir);
load GA_surf_lap.8.6.19.mat
load GA_avg_ref.8.6.19.mat
cd(scalpdir);
load BV62.mat 
cd(GAdir);

myXticks = [1 100 200 300 400];
myXtickslabel = {'-100' '0' '100' '200' '300'};

%% set-up

% average over all conditions of interst
gagaSL = mean(SL(:,:,13:18),3); %#ok<NODEF>

% average over all conditions of interst
gagaAR = mean(AR(:,:,13:18),3); %#ok<NODEF>

ARstartmeas = 200;
ARendmeas = 500;
SLstartmeas = 225;
SLendmeas = 375;


% pull out the maximum and minimum amplitudes
% [~, ARmaxLat] = max(max(gagaAR)); % average reference
[~, ARminLat] = min(min(gagaAR));

% [~, SLmaxLat] = max(max(gagaSL)); % surface Laplacian
[~, SLminLat] = min(min(gagaSL));

ARminchns = [29, 30, 31, 59, 60, 61]; % O1, Oz, O2, PO3, POz, PO4
SLminchns = [30, 60]; % Oz, POz

%ARmaxchns = 62; % 
%SLmaxchns = [54, 23, 58, 27, 57, 62]; % P5, P7, PO7, P8, P6, PO8

%% Plot the figure

figsavdir = 'C:\Users\u0850304\Documents\CognitiveAbility\Novelty_P3_and_predictive_mind\Frankfurt_group_MMN\manuscript';

vMMN_Fig2 = figure('units','normalized','outerposition',[0.1 0.2 0.65 0.80],...
    'Name', 'Grand Averaged, Average Referenced Data, Timelocked to 1st position');

subplot(2,3,[1 2]);
plot(gagaAR');
xlim([1 500]);ylim([-0.8 0.8]);  
set(gca,'xtick', myXticks, 'FontWeight','bold', 'FontSize', 12);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k');
line([ARstartmeas ARstartmeas],yL,'Linestyle', '--','Color','k');
line([ARendmeas ARendmeas],yL,'Linestyle', '--','Color','k');
line([ARminLat ARminLat],yL,'Linestyle', ':','Color','b');
set(get(gca,'YLabel'),'String','\muV', 'fontWeight','bold');

subplot(2,3,3);
topoplot(gagaAR(:,ARminLat),BV62,'plotrad', .60,'conv' ,'on','maplimits', [-1 1],  'emarker2',  {ARminchns,'p', 'w'}); 
h = colorbar;
%set(get(h,'Ylabel'),'string','\muV', 'FontSize',11, 'FontWeight','bold');
set(get(h,'Ylabel'),'string','\muV', 'FontSize',11, 'FontWeight','bold');
h.FontSize = 11;
h.FontWeight = 'bold';
title('223 ms', 'FontSize',11, 'FontWeight','bold');
%annotation('textbox', [0.5, 1, 0.0, 0], 'string', 'Scalp-Average Referenced', 'FontWeight','bold', 'FontSize', 14)

subplot(2,3, [4 5])
plot(gagaSL');
xlim([1 500]);ylim([-.08 .08]); %title('Laplacian-Transformed')
set(gca,'xtick', myXticks, 'FontWeight','bold','FontSize', 12);set(gca,'XTickLabel',myXtickslabel); set(get(gca,'XLabel'),'String','ms');
yL = get(gca,'YLim'); line([100 100],yL,'Linestyle', ':','Color','k');
line([SLstartmeas SLstartmeas],yL,'Linestyle', '--','Color','k');
line([SLendmeas SLendmeas],yL,'Linestyle', '--','Color','k');
line([SLminLat SLminLat],yL,'Linestyle', ':','Color','b');
set(get(gca,'YLabel'),'String','\muV/cm^2', 'fontWeight','bold');
subplot(2,3,6)
topoplot(gagaSL(:,SLminLat),BV62,'plotrad', .60,'conv' ,'on','maplimits', [-0.04 0.04],  'emarker2',  {SLminchns,'p', 'w'}); 
h = colorbar;
set(get(h,'Ylabel'),'string','\muV/cm^2','FontSize',11 , 'FontWeight','bold');
h.FontSize = 11;
h.FontWeight = 'bold';
title('151 ms', 'FontSize',11, 'FontWeight','bold');


figfilepath = strcat(figsavdir , '\','Fig2_GA_diff_waves_scalp_maps_mje_Jan_30_2022.png');
saveas(vMMN_Fig2, figfilepath, 'png'); % save the fig

end

