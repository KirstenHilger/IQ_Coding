function[] = scatterplots_4vMMN_2022

datadir = 'filepath';
cd(datadir)
vMMN = readtable('vMMN_new_imputed_latencies_2022_4_scatter_plots.xlsx');
vMMN_orig = vMMN(1:50,:);
vMMN_Imp1 = vMMN(51:100,:);


%% plot the scatter plots for the vMMN amplitudes (original data)

figure('Color', [1,1,1], 'Name', 'Correlations between vMMN amplitudes and RAPM scores',...
    'units','normalized','outerposition',[0.1 0.2 0.65 0.80]); 


prp = [82, 50, 169]./255;
yel = [242, 239, 46]./255;
% grn = [50, 168, 82]./255;
%org = [227, 137, 20]./255;
% see: https://www.google.com/search?q=color+picker

% AVERAGE REFERENCE 
subplot(2,4,1);
scatter(vMMN_orig.apm, vMMN_orig.AR_SAA_avg_Bin19_GminR_MMN_1, 'MarkerEdgeColor', prp, 'MarkerFaceColor', prp);
ylim([-0.45, 0.45]);
ylabel('Signed Area Amplitude (\muV*ms)')
title('Green Odd 1')
h = lsline; h.Color = prp;

subplot(2,4,2);
scatter(vMMN_orig.apm, vMMN_orig.AR_SAA_avg_Bin20_GminR_MMN_2, 'MarkerEdgeColor', prp, 'MarkerFaceColor', prp);
ylim([-0.45, 0.45]);
set(gca,'ytick',[])
title('Green Odd 2')
h = lsline; h.Color = prp;

subplot(2,4,3);
scatter(vMMN_orig.apm, vMMN_orig.AR_SAA_avg_Bin21_RminG_MMN_1, 'MarkerEdgeColor', prp, 'MarkerFaceColor', prp);
ylim([-0.45, 0.45]);
set(gca,'ytick',[])
title('Red Odd 1')
h = lsline; h.Color = prp;

subplot(2,4,4);
hAR = scatter(vMMN_orig.apm, vMMN_orig.AR_SAA_avg_Bin22_RminG_MMN_2, 'MarkerEdgeColor', prp, 'MarkerFaceColor', prp);
ylim([-0.45, 0.45]);
set(gca,'ytick',[])
title('Red Odd 2')
h = lsline; h.Color = prp;


% SURFACE LAPLACIAN
subplot(2,4,5);
scatter(vMMN_orig.apm, vMMN_orig.SL_SAA_avg_Bin19_GminR_MMN_1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', yel);
ylim([-0.06 0.06]);
ylabel('Signed Area Amplitude (\muV/cm^2*ms)')
xlabel('RAPM')
title('Green Odd 1')
h = lsline; h.Color = 'k';

subplot(2,4,6);
scatter(vMMN_orig.apm, vMMN_orig.SL_SAA_avg_Bin20_GminR_MMN_2, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', yel);
ylim([-0.06 0.06]);
set(gca,'ytick',[])
xlabel('RAPM')
title('Green Odd 2')
h = lsline; h.Color = 'k';

subplot(2,4,7);
scatter(vMMN_orig.apm, vMMN_orig.SL_SAA_avg_Bin21_RminG_MMN_1, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', yel);
ylim([-0.06 0.06]);
xlabel('RAPM')
set(gca,'ytick',[])
title('Red Odd 1')
h = lsline; h.Color = 'k';

subplot(2,4,8);
hSL = scatter(vMMN_orig.apm, vMMN_orig.SL_SAA_avg_Bin22_RminG_MMN_2, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', yel);
ylim([-0.06 0.06]);
xlabel('RAPM')
set(gca,'ytick',[])
title('Red Odd 2')
h = lsline; h.Color = 'k';


h1 = legend([hAR(1),hSL(1)],'AR','SL');
h1.Position = [0.925 0.50 0.06 0.0452]; % 'Position' has the form [left bottom width height]


% % % % figfilepath = strcat(figsavdir , '\','SI_Fig_GA_diff_waves_scalp_maps_mje_Aug_25_2022.png');
% % % % saveas(vMMN_uberGAFig, figfilepath, 'png'); % save the fig

%% latency correlations

figure('Color', [1,1,1], 'Name', 'Correlations between vMMN latencies and RAPM scores',...
    'units','normalized','outerposition',[0.1 0.2 0.65 0.80]); 



%blu = [20, 158, 227]./255;
blu = [13, 130, 189]./255;
%org = [250, 200, 130]./255;
org = [247, 168, 40]./255;
% see: https://www.google.com/search?q=color+picker

% AVERAGE REFERENCE 
subplot(2,4,1);
scatter(vMMN_orig.apm, vMMN_Imp1.AR_FAL50_avg_Bin19_GminR_MMN_1, 'MarkerEdgeColor', blu, 'MarkerFaceColor', blu);
ylim([100 400]);
ylabel('Fractional Area Latency (ms)')
title('Green Odd 1')
h = lsline; h.Color = blu;

subplot(2,4,2);
scatter(vMMN_orig.apm, vMMN_Imp1.AR_FAL50_avg_Bin20_GminR_MMN_2, 'MarkerEdgeColor', blu, 'MarkerFaceColor', blu);
%ylim([-0.45, 0.45]);
set(gca,'ytick',[])
title('Green Odd 2')
h = lsline; h.Color = blu;


subplot(2,4,3);
scatter(vMMN_orig.apm, vMMN_Imp1.AR_FAL50_avg_Bin21_RminG_MMN_1, 'MarkerEdgeColor', blu, 'MarkerFaceColor', blu);
ylim([100 400]);
set(gca,'ytick',[])
title('Red Odd 1')
h = lsline; h.Color = blu;

subplot(2,4,4);
hARlat = scatter(vMMN_orig.apm, vMMN_Imp1.AR_FAL50_avg_Bin22_RminG_MMN_2, 'MarkerEdgeColor', blu, 'MarkerFaceColor', blu);
ylim([100 400]);
set(gca,'ytick',[])
title('Red Odd 2')
h = lsline; h.Color = blu;



% SURFACE LAPLACIAN

subplot(2,4,5);
scatter(vMMN_orig.apm, vMMN_Imp1.SL_FAL50_avg_Bin19_GminR_MMN_1, 'MarkerEdgeColor', org, 'MarkerFaceColor', org);
ylim([125 275])
ylabel('Fractional Area Latency (ms)')
xlabel('RAPM')
title('Green Odd 1')
h = lsline; h.Color = org;

subplot(2,4,6);
scatter(vMMN_orig.apm, vMMN_Imp1.SL_FAL50_avg_Bin20_GminR_MMN_2, 'MarkerEdgeColor', org, 'MarkerFaceColor', org);
ylim([125 275]);
set(gca,'ytick',[])
xlabel('RAPM')
title('Green Odd 2')
h = lsline; h.Color = org;

subplot(2,4,7);
scatter(vMMN_orig.apm, vMMN_Imp1.SL_FAL50_avg_Bin21_RminG_MMN_1, 'MarkerEdgeColor', org, 'MarkerFaceColor', org);
ylim([125 275]);
set(gca,'ytick',[])
xlabel('RAPM')
title('Red Odd 1')
h = lsline; h.Color = org;

subplot(2,4,8);
hSLlat = scatter(vMMN_orig.apm, vMMN_Imp1.SL_FAL50_avg_Bin22_RminG_MMN_2, 'MarkerEdgeColor', org, 'MarkerFaceColor', org);
ylim([125 275]);
set(gca,'ytick',[])
xlabel('RAPM')
title('Red Odd 2')
h = lsline; h.Color = org;


h1 = legend([hARlat(1),hSLlat(1)],'AR','SL');
h1.Position = [0.925 0.50 0.06 0.0452]; % 'Position' has the form [left bottom width height]

%% old scatterplots for rule condition

% % % subplot(2,6,5);
% % % scatter(vMMN_orig.apm, vMMN_orig.AR_SAA_avg_Bin24_GminR_Rule, 'MarkerEdgeColor', prp, 'MarkerFaceColor', prp); % NOTE BIN ORDER HERE!
% % % ylim([-0.45, 0.45]);
% % % set(gca,'ytick',[])
% % % title('Green Odd Rule')
% % % h = lsline; h.Color = prp;


% % subplot(2,6,6);
% % hAR = scatter(vMMN_orig.apm, vMMN_orig.AR_SAA_avg_Bin23_RminG_Rule, 'MarkerEdgeColor', prp, 'MarkerFaceColor', prp); % NOTE BIN!
% % ylim([-0.45, 0.45]);
% % set(gca,'ytick',[])
% % title('Red Odd Rule')
% % h = lsline; h.Color = prp;


% % % subplot(2,6,11);
% % % scatter(vMMN_orig.apm, vMMN_orig.SL_SAA_avg_Bin24_GminR_Rule, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', yel); % BIN ORDER
% % % ylim([-0.06 0.06]);
% % % xlabel('RAPM')
% % % set(gca,'ytick',[])
% % % title('Green Odd Rule')
% % % h = lsline; h.Color = 'k';



% % % subplot(2,6,12);
% % % hSL = scatter(vMMN_orig.apm, vMMN_orig.SL_SAA_avg_Bin23_RminG_Rule, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', yel); % BIN ORDER
% % % ylim([-0.06 0.06]);
% % % xlabel('RAPM')
% % % set(gca,'ytick',[])
% % % title('Red Odd Rule')
% % % h = lsline; h.Color = 'k';



% % % % subplot(2,6,5);
% % % % scatter(vMMN_orig.apm, vMMN_Imp1.AR_FAL50_avg_Bin24_GminR_Rule, 'MarkerEdgeColor', blu, 'MarkerFaceColor', blu);
% % % % ylim([100 400]);
% % % % set(gca,'ytick',[])
% % % % title('Green Odd Rule')
% % % % h = lsline; h.Color = blu;
% % % % 
% % % % subplot(2,6,6);
% % % % hARlat = scatter(vMMN_orig.apm, vMMN_Imp1.AR_FAL50_avg_Bin23_RminG_Rule, 'MarkerEdgeColor', blu, 'MarkerFaceColor', blu);
% % % % ylim([100 400]);
% % % % set(gca,'ytick',[])
% % % % title('Red Odd Rule')
% % % % h = lsline; h.Color = blu;


% % % subplot(2,6,11);
% % % scatter(vMMN_orig.apm, vMMN_Imp1.SL_FAL50_avg_Bin24_GminR_Rule, 'MarkerEdgeColor', org, 'MarkerFaceColor', org); % NOTE BIN SWITCH
% % % ylim([125 275]);
% % % set(gca,'ytick',[])
% % % title('Green Odd Rule')
% % % h = lsline; h.Color = org;
% % % 
% % % subplot(2,6,12);
% % % hSLlat = scatter(vMMN_orig.apm, vMMN_Imp1.SL_FAL50_avg_Bin23_RminG_Rule, 'MarkerEdgeColor', org, 'MarkerFaceColor', org); % BIN ORDER SWITCH
% % % ylim([125 275]);
% % % set(gca,'ytick',[])
% % % title('Red Odd Rule')
% % % h = lsline; h.Color = org;



end