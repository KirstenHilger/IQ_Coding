﻿* Encoding: UTF-8.

/* vMMN 2022 - multiple imputation.
/* This step is necessary b/c the ERPlab latency measurement approach is. 
/* Such that a latency value is only returned when a portion of the waveform is negative relative to the baseline period.
/* This results in a lot of missing data points across subjects and electrodes.

DATASET ACTIVATE DataSet1.
*Analyze Patterns of Missing Values.
MULTIPLE IMPUTATION  AR_FAL50_P3_B1 AR_FAL50_P3_B2 AR_FAL50_P3_B3 AR_FAL50_P3_B4 AR_FAL50_P3_B5 
    AR_FAL50_P3_B6 AR_FAL50_P3_B7 AR_FAL50_P3_B8 AR_FAL50_P3_B9 AR_FAL50_P3_B10 AR_FAL50_P3_B11 
    AR_FAL50_P3_B12 AR_FAL50_P3_B13 AR_FAL50_P3_B14 AR_FAL50_P3_B15 AR_FAL50_P3_B16 AR_FAL50_P3_B17 
    AR_FAL50_P3_B18 AR_FAL50_P3_B19 AR_FAL50_P3_B20 AR_FAL50_P3_B21 AR_FAL50_P3_B22 AR_FAL50_P3_B23 
    AR_FAL50_P3_B24 AR_FAL50_Pz_B1 AR_FAL50_Pz_B2 AR_FAL50_Pz_B3 AR_FAL50_Pz_B4 AR_FAL50_Pz_B5 
    AR_FAL50_Pz_B6 AR_FAL50_Pz_B7 AR_FAL50_Pz_B8 AR_FAL50_Pz_B9 AR_FAL50_Pz_B10 AR_FAL50_Pz_B11 
    AR_FAL50_Pz_B12 AR_FAL50_Pz_B13 AR_FAL50_Pz_B14 AR_FAL50_Pz_B15 AR_FAL50_Pz_B16 AR_FAL50_Pz_B17 
    AR_FAL50_Pz_B18 AR_FAL50_Pz_B19 AR_FAL50_Pz_B20 AR_FAL50_Pz_B21 AR_FAL50_Pz_B22 AR_FAL50_Pz_B23 
    AR_FAL50_Pz_B24 AR_FAL50_P4_B1 AR_FAL50_P4_B2 AR_FAL50_P4_B3 AR_FAL50_P4_B4 AR_FAL50_P4_B5 
    AR_FAL50_P4_B6 AR_FAL50_P4_B7 AR_FAL50_P4_B8 AR_FAL50_P4_B9 AR_FAL50_P4_B10 AR_FAL50_P4_B11 
    AR_FAL50_P4_B12 AR_FAL50_P4_B13 AR_FAL50_P4_B14 AR_FAL50_P4_B15 AR_FAL50_P4_B16 AR_FAL50_P4_B17 
    AR_FAL50_P4_B18 AR_FAL50_P4_B19 AR_FAL50_P4_B20 AR_FAL50_P4_B21 AR_FAL50_P4_B22 AR_FAL50_P4_B23 
    AR_FAL50_P4_B24 AR_FAL50_O1_B1 AR_FAL50_O1_B2 AR_FAL50_O1_B3 AR_FAL50_O1_B4 AR_FAL50_O1_B5 
    AR_FAL50_O1_B6 AR_FAL50_O1_B7 AR_FAL50_O1_B8 AR_FAL50_O1_B9 AR_FAL50_O1_B10 AR_FAL50_O1_B11 
    AR_FAL50_O1_B12 AR_FAL50_O1_B13 AR_FAL50_O1_B14 AR_FAL50_O1_B15 AR_FAL50_O1_B16 AR_FAL50_O1_B17 
    AR_FAL50_O1_B18 AR_FAL50_O1_B19 AR_FAL50_O1_B20 AR_FAL50_O1_B21 AR_FAL50_O1_B22 AR_FAL50_O1_B23 
    AR_FAL50_O1_B24 AR_FAL50_Oz_B1 AR_FAL50_Oz_B2 AR_FAL50_Oz_B3 AR_FAL50_Oz_B4 AR_FAL50_Oz_B5 
    AR_FAL50_Oz_B6 AR_FAL50_Oz_B7 AR_FAL50_Oz_B8 AR_FAL50_Oz_B9 AR_FAL50_Oz_B10 AR_FAL50_Oz_B11 
    AR_FAL50_Oz_B12 AR_FAL50_Oz_B13 AR_FAL50_Oz_B14 AR_FAL50_Oz_B15 AR_FAL50_Oz_B16 AR_FAL50_Oz_B17 
    AR_FAL50_Oz_B18 AR_FAL50_Oz_B19 AR_FAL50_Oz_B20 AR_FAL50_Oz_B21 AR_FAL50_Oz_B22 AR_FAL50_Oz_B23 
    AR_FAL50_Oz_B24 AR_FAL50_O2_B1 AR_FAL50_O2_B2 AR_FAL50_O2_B3 AR_FAL50_O2_B4 AR_FAL50_O2_B5 
    AR_FAL50_O2_B6 AR_FAL50_O2_B7 AR_FAL50_O2_B8 AR_FAL50_O2_B9 AR_FAL50_O2_B10 AR_FAL50_O2_B11 
    AR_FAL50_O2_B12 AR_FAL50_O2_B13 AR_FAL50_O2_B14 AR_FAL50_O2_B15 AR_FAL50_O2_B16 AR_FAL50_O2_B17 
    AR_FAL50_O2_B18 AR_FAL50_O2_B19 AR_FAL50_O2_B20 AR_FAL50_O2_B21 AR_FAL50_O2_B22 AR_FAL50_O2_B23 
    AR_FAL50_O2_B24 AR_FAL50_PO3_B1 AR_FAL50_PO3_B2 AR_FAL50_PO3_B3 AR_FAL50_PO3_B4 AR_FAL50_PO3_B5 
    AR_FAL50_PO3_B6 AR_FAL50_PO3_B7 AR_FAL50_PO3_B8 AR_FAL50_PO3_B9 AR_FAL50_PO3_B10 AR_FAL50_PO3_B11 
    AR_FAL50_PO3_B12 AR_FAL50_PO3_B13 AR_FAL50_PO3_B14 AR_FAL50_PO3_B15 AR_FAL50_PO3_B16 
    AR_FAL50_PO3_B17 AR_FAL50_PO3_B18 AR_FAL50_PO3_B19 AR_FAL50_PO3_B20 AR_FAL50_PO3_B21 
    AR_FAL50_PO3_B22 AR_FAL50_PO3_B23 AR_FAL50_PO3_B24 AR_FAL50_POz_B1 AR_FAL50_POz_B2 AR_FAL50_POz_B3 
    AR_FAL50_POz_B4 AR_FAL50_POz_B5 AR_FAL50_POz_B6 AR_FAL50_POz_B7 AR_FAL50_POz_B8 AR_FAL50_POz_B9 
    AR_FAL50_POz_B10 AR_FAL50_POz_B11 AR_FAL50_POz_B12 AR_FAL50_POz_B13 AR_FAL50_POz_B14 
    AR_FAL50_POz_B15 AR_FAL50_POz_B16 AR_FAL50_POz_B17 AR_FAL50_POz_B18 AR_FAL50_POz_B19 
    AR_FAL50_POz_B20 AR_FAL50_POz_B21 AR_FAL50_POz_B22 AR_FAL50_POz_B23 AR_FAL50_POz_B24 
    AR_FAL50_PO4_B1 AR_FAL50_PO4_B2 AR_FAL50_PO4_B3 AR_FAL50_PO4_B4 AR_FAL50_PO4_B5 AR_FAL50_PO4_B6 
    AR_FAL50_PO4_B7 AR_FAL50_PO4_B8 AR_FAL50_PO4_B9 AR_FAL50_PO4_B10 AR_FAL50_PO4_B11 AR_FAL50_PO4_B12 
    AR_FAL50_PO4_B13 AR_FAL50_PO4_B14 AR_FAL50_PO4_B15 AR_FAL50_PO4_B16 AR_FAL50_PO4_B17 
    AR_FAL50_PO4_B18 AR_FAL50_PO4_B19 AR_FAL50_PO4_B20 AR_FAL50_PO4_B21 AR_FAL50_PO4_B22 
    AR_FAL50_PO4_B23 AR_FAL50_PO4_B24 SL_FAL50_POz_B1 SL_FAL50_POz_B2 SL_FAL50_POz_B3 SL_FAL50_POz_B4 
    SL_FAL50_POz_B5 SL_FAL50_POz_B6 SL_FAL50_POz_B7 SL_FAL50_POz_B8 SL_FAL50_POz_B9 SL_FAL50_POz_B10 
    SL_FAL50_POz_B11 SL_FAL50_POz_B12 SL_FAL50_POz_B13 SL_FAL50_POz_B14 SL_FAL50_POz_B15 
    SL_FAL50_POz_B16 SL_FAL50_POz_B17 SL_FAL50_POz_B18 SL_FAL50_POz_B19 SL_FAL50_POz_B20 
    SL_FAL50_POz_B21 SL_FAL50_POz_B22 SL_FAL50_POz_B23 SL_FAL50_POz_B24 SL_FAL50_Oz_B1 SL_FAL50_Oz_B2 
    SL_FAL50_Oz_B3 SL_FAL50_Oz_B4 SL_FAL50_Oz_B5 SL_FAL50_Oz_B6 SL_FAL50_Oz_B7 SL_FAL50_Oz_B8 
    SL_FAL50_Oz_B9 SL_FAL50_Oz_B10 SL_FAL50_Oz_B11 SL_FAL50_Oz_B12 SL_FAL50_Oz_B13 SL_FAL50_Oz_B14 
    SL_FAL50_Oz_B15 SL_FAL50_Oz_B16 SL_FAL50_Oz_B17 SL_FAL50_Oz_B18 SL_FAL50_Oz_B19 SL_FAL50_Oz_B20 
    SL_FAL50_Oz_B21 SL_FAL50_Oz_B22 SL_FAL50_Oz_B23 SL_FAL50_Oz_B24
     AR_FAL50_avg_Bin13_Red_MMN_1 AR_FAL50_avg_Bin14_Grn_MMN_1 
    AR_FAL50_avg_Bin15_Red_MMN_2 AR_FAL50_avg_Bin16_Grn_MMN_2 AR_FAL50_avg_Bin17_Red_Rule_MMN 
    AR_FAL50_avg_Bin18_Grn_Rule_MMN AR_FAL50_avg_Bin19_GminR_MMN_1 AR_FAL50_avg_Bin20_GminR_MMN_2 
    AR_FAL50_avg_Bin21_RminG_MMN_1 AR_FAL50_avg_Bin22_RminG_MMN_2 AR_FAL50_avg_Bin23_RminG_Rule 
    AR_FAL50_avg_Bin24_GminR_Rule SL_FAL50_avg_Bin13_Red_MMN_1 SL_FAL50_avg_Bin14_Grn_MMN_1 
    SL_FAL50_avg_Bin15_Red_MMN_2 SL_FAL50_avg_Bin16_Grn_MMN_2 SL_FAL50_avg_Bin17_Red_Rule_MMN 
    SL_FAL50_avg_Bin18_Grn_Rule_MMN SL_FAL50_avg_Bin19_GminR_MMN_1 SL_FAL50_avg_Bin20_GminR_MMN_2 
    SL_FAL50_avg_Bin21_RminG_MMN_1 SL_FAL50_avg_Bin22_RminG_MMN_2 SL_FAL50_avg_Bin23_RminG_Rule 
    SL_FAL50_avg_Bin24_GminR_Rule
   /IMPUTE METHOD=NONE
   /MISSINGSUMMARIES  OVERALL VARIABLES (MAXVARS=25 MINPCTMISSING=0.01) PATTERNS.

SET RNG=MT MTINDEX=2000000.

*Impute Missing Data Values.
DATASET DECLARE vMMN_new_imputed_latencies_2022.
DATASET DECLARE vMMN_2022_imputed_latency_iteration_history.
MULTIPLE IMPUTATION AR_FAL50_P3_B1 AR_FAL50_P3_B2 AR_FAL50_P3_B3 AR_FAL50_P3_B4 AR_FAL50_P3_B5 
    AR_FAL50_P3_B6 AR_FAL50_P3_B7 AR_FAL50_P3_B8 AR_FAL50_P3_B9 AR_FAL50_P3_B10 AR_FAL50_P3_B11 
    AR_FAL50_P3_B12 AR_FAL50_P3_B13 AR_FAL50_P3_B14 AR_FAL50_P3_B15 AR_FAL50_P3_B16 AR_FAL50_P3_B17 
    AR_FAL50_P3_B18 AR_FAL50_P3_B19 AR_FAL50_P3_B20 AR_FAL50_P3_B21 AR_FAL50_P3_B22 AR_FAL50_P3_B23 
    AR_FAL50_P3_B24 AR_FAL50_Pz_B1 AR_FAL50_Pz_B2 AR_FAL50_Pz_B3 AR_FAL50_Pz_B4 AR_FAL50_Pz_B5 
    AR_FAL50_Pz_B6 AR_FAL50_Pz_B7 AR_FAL50_Pz_B8 AR_FAL50_Pz_B9 AR_FAL50_Pz_B10 AR_FAL50_Pz_B11 
    AR_FAL50_Pz_B12 AR_FAL50_Pz_B13 AR_FAL50_Pz_B14 AR_FAL50_Pz_B15 AR_FAL50_Pz_B16 AR_FAL50_Pz_B17 
    AR_FAL50_Pz_B18 AR_FAL50_Pz_B19 AR_FAL50_Pz_B20 AR_FAL50_Pz_B21 AR_FAL50_Pz_B22 AR_FAL50_Pz_B23 
    AR_FAL50_Pz_B24 AR_FAL50_P4_B1 AR_FAL50_P4_B2 AR_FAL50_P4_B3 AR_FAL50_P4_B4 AR_FAL50_P4_B5 
    AR_FAL50_P4_B6 AR_FAL50_P4_B7 AR_FAL50_P4_B8 AR_FAL50_P4_B9 AR_FAL50_P4_B10 AR_FAL50_P4_B11 
    AR_FAL50_P4_B12 AR_FAL50_P4_B13 AR_FAL50_P4_B14 AR_FAL50_P4_B15 AR_FAL50_P4_B16 AR_FAL50_P4_B17 
    AR_FAL50_P4_B18 AR_FAL50_P4_B19 AR_FAL50_P4_B20 AR_FAL50_P4_B21 AR_FAL50_P4_B22 AR_FAL50_P4_B23 
    AR_FAL50_P4_B24 AR_FAL50_O1_B1 AR_FAL50_O1_B2 AR_FAL50_O1_B3 AR_FAL50_O1_B4 AR_FAL50_O1_B5 
    AR_FAL50_O1_B6 AR_FAL50_O1_B7 AR_FAL50_O1_B8 AR_FAL50_O1_B9 AR_FAL50_O1_B10 AR_FAL50_O1_B11 
    AR_FAL50_O1_B12 AR_FAL50_O1_B13 AR_FAL50_O1_B14 AR_FAL50_O1_B15 AR_FAL50_O1_B16 AR_FAL50_O1_B17 
    AR_FAL50_O1_B18 AR_FAL50_O1_B19 AR_FAL50_O1_B20 AR_FAL50_O1_B21 AR_FAL50_O1_B22 AR_FAL50_O1_B23 
    AR_FAL50_O1_B24 AR_FAL50_Oz_B1 AR_FAL50_Oz_B2 AR_FAL50_Oz_B3 AR_FAL50_Oz_B4 AR_FAL50_Oz_B5 
    AR_FAL50_Oz_B6 AR_FAL50_Oz_B7 AR_FAL50_Oz_B8 AR_FAL50_Oz_B9 AR_FAL50_Oz_B10 AR_FAL50_Oz_B11 
    AR_FAL50_Oz_B12 AR_FAL50_Oz_B13 AR_FAL50_Oz_B14 AR_FAL50_Oz_B15 AR_FAL50_Oz_B16 AR_FAL50_Oz_B17 
    AR_FAL50_Oz_B18 AR_FAL50_Oz_B19 AR_FAL50_Oz_B20 AR_FAL50_Oz_B21 AR_FAL50_Oz_B22 AR_FAL50_Oz_B23 
    AR_FAL50_Oz_B24 AR_FAL50_O2_B1 AR_FAL50_O2_B2 AR_FAL50_O2_B3 AR_FAL50_O2_B4 AR_FAL50_O2_B5 
    AR_FAL50_O2_B6 AR_FAL50_O2_B7 AR_FAL50_O2_B8 AR_FAL50_O2_B9 AR_FAL50_O2_B10 AR_FAL50_O2_B11 
    AR_FAL50_O2_B12 AR_FAL50_O2_B13 AR_FAL50_O2_B14 AR_FAL50_O2_B15 AR_FAL50_O2_B16 AR_FAL50_O2_B17 
    AR_FAL50_O2_B18 AR_FAL50_O2_B19 AR_FAL50_O2_B20 AR_FAL50_O2_B21 AR_FAL50_O2_B22 AR_FAL50_O2_B23 
    AR_FAL50_O2_B24 AR_FAL50_PO3_B1 AR_FAL50_PO3_B2 AR_FAL50_PO3_B3 AR_FAL50_PO3_B4 AR_FAL50_PO3_B5 
    AR_FAL50_PO3_B6 AR_FAL50_PO3_B7 AR_FAL50_PO3_B8 AR_FAL50_PO3_B9 AR_FAL50_PO3_B10 AR_FAL50_PO3_B11 
    AR_FAL50_PO3_B12 AR_FAL50_PO3_B13 AR_FAL50_PO3_B14 AR_FAL50_PO3_B15 AR_FAL50_PO3_B16 
    AR_FAL50_PO3_B17 AR_FAL50_PO3_B18 AR_FAL50_PO3_B19 AR_FAL50_PO3_B20 AR_FAL50_PO3_B21 
    AR_FAL50_PO3_B22 AR_FAL50_PO3_B23 AR_FAL50_PO3_B24 AR_FAL50_POz_B1 AR_FAL50_POz_B2 AR_FAL50_POz_B3 
    AR_FAL50_POz_B4 AR_FAL50_POz_B5 AR_FAL50_POz_B6 AR_FAL50_POz_B7 AR_FAL50_POz_B8 AR_FAL50_POz_B9 
    AR_FAL50_POz_B10 AR_FAL50_POz_B11 AR_FAL50_POz_B12 AR_FAL50_POz_B13 AR_FAL50_POz_B14 
    AR_FAL50_POz_B15 AR_FAL50_POz_B16 AR_FAL50_POz_B17 AR_FAL50_POz_B18 AR_FAL50_POz_B19 
    AR_FAL50_POz_B20 AR_FAL50_POz_B21 AR_FAL50_POz_B22 AR_FAL50_POz_B23 AR_FAL50_POz_B24 
    AR_FAL50_PO4_B1 AR_FAL50_PO4_B2 AR_FAL50_PO4_B3 AR_FAL50_PO4_B4 AR_FAL50_PO4_B5 AR_FAL50_PO4_B6 
    AR_FAL50_PO4_B7 AR_FAL50_PO4_B8 AR_FAL50_PO4_B9 AR_FAL50_PO4_B10 AR_FAL50_PO4_B11 AR_FAL50_PO4_B12 
    AR_FAL50_PO4_B13 AR_FAL50_PO4_B14 AR_FAL50_PO4_B15 AR_FAL50_PO4_B16 AR_FAL50_PO4_B17 
    AR_FAL50_PO4_B18 AR_FAL50_PO4_B19 AR_FAL50_PO4_B20 AR_FAL50_PO4_B21 AR_FAL50_PO4_B22 
    AR_FAL50_PO4_B23 AR_FAL50_PO4_B24 SL_FAL50_POz_B1 SL_FAL50_POz_B2 SL_FAL50_POz_B3 SL_FAL50_POz_B4 
    SL_FAL50_POz_B5 SL_FAL50_POz_B6 SL_FAL50_POz_B7 SL_FAL50_POz_B8 SL_FAL50_POz_B9 SL_FAL50_POz_B10 
    SL_FAL50_POz_B11 SL_FAL50_POz_B12 SL_FAL50_POz_B13 SL_FAL50_POz_B14 SL_FAL50_POz_B15 
    SL_FAL50_POz_B16 SL_FAL50_POz_B17 SL_FAL50_POz_B18 SL_FAL50_POz_B19 SL_FAL50_POz_B20 
    SL_FAL50_POz_B21 SL_FAL50_POz_B22 SL_FAL50_POz_B23 SL_FAL50_POz_B24 SL_FAL50_Oz_B1 SL_FAL50_Oz_B2 
    SL_FAL50_Oz_B3 SL_FAL50_Oz_B4 SL_FAL50_Oz_B5 SL_FAL50_Oz_B6 SL_FAL50_Oz_B7 SL_FAL50_Oz_B8 
    SL_FAL50_Oz_B9 SL_FAL50_Oz_B10 SL_FAL50_Oz_B11 SL_FAL50_Oz_B12 SL_FAL50_Oz_B13 SL_FAL50_Oz_B14 
    SL_FAL50_Oz_B15 SL_FAL50_Oz_B16 SL_FAL50_Oz_B17 SL_FAL50_Oz_B18 SL_FAL50_Oz_B19 SL_FAL50_Oz_B20 
    SL_FAL50_Oz_B21 SL_FAL50_Oz_B22 SL_FAL50_Oz_B23 SL_FAL50_Oz_B24     
    AR_FAL50_avg_Bin13_Red_MMN_1 AR_FAL50_avg_Bin14_Grn_MMN_1 
    AR_FAL50_avg_Bin15_Red_MMN_2 AR_FAL50_avg_Bin16_Grn_MMN_2 AR_FAL50_avg_Bin17_Red_Rule_MMN 
    AR_FAL50_avg_Bin18_Grn_Rule_MMN AR_FAL50_avg_Bin19_GminR_MMN_1 AR_FAL50_avg_Bin20_GminR_MMN_2 
    AR_FAL50_avg_Bin21_RminG_MMN_1 AR_FAL50_avg_Bin22_RminG_MMN_2 AR_FAL50_avg_Bin23_RminG_Rule 
    AR_FAL50_avg_Bin24_GminR_Rule SL_FAL50_avg_Bin13_Red_MMN_1 SL_FAL50_avg_Bin14_Grn_MMN_1 
    SL_FAL50_avg_Bin15_Red_MMN_2 SL_FAL50_avg_Bin16_Grn_MMN_2 SL_FAL50_avg_Bin17_Red_Rule_MMN 
    SL_FAL50_avg_Bin18_Grn_Rule_MMN SL_FAL50_avg_Bin19_GminR_MMN_1 SL_FAL50_avg_Bin20_GminR_MMN_2 
    SL_FAL50_avg_Bin21_RminG_MMN_1 SL_FAL50_avg_Bin22_RminG_MMN_2 SL_FAL50_avg_Bin23_RminG_Rule 
    SL_FAL50_avg_Bin24_GminR_Rule
  /IMPUTE METHOD=AUTO NIMPUTATIONS=10 MAXPCTMISSING=NONE  MAXCASEDRAWS=50 MAXPARAMDRAWS=2
  /CONSTRAINTS AR_FAL50_P3_B1( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_P3_B2( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_P3_B3( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_P3_B4( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_P3_B5( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_P3_B6( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_P3_B7( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_P3_B8( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_P3_B9( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_P3_B10( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_P3_B11( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_P3_B12( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_P3_B13( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_P3_B14( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_P3_B15( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_P3_B16( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_P3_B17( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_P3_B18( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_P3_B19( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_P3_B20( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_P3_B21( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_P3_B22( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_P3_B23( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_P3_B24( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_Pz_B1( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_Pz_B2( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_Pz_B3( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_Pz_B4( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_Pz_B5( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_Pz_B6( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_Pz_B7( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_Pz_B8( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_Pz_B9( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_Pz_B10( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_Pz_B11( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_Pz_B12( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_Pz_B13( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_Pz_B14( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_Pz_B15( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_Pz_B16( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_Pz_B17( MIN=100.0 MAX=400)
  /CONSTRAINTS AR_FAL50_Pz_B18( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_Pz_B19( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_Pz_B20( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_Pz_B21( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_Pz_B22( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_Pz_B23( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_Pz_B24( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_P4_B1( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_P4_B2( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_P4_B3( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_P4_B4( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_P4_B5( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_P4_B6( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_P4_B7( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_P4_B8( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_P4_B9( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_P4_B10( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_P4_B11( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_P4_B12( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_P4_B13( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_P4_B14( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_P4_B15( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_P4_B16( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_P4_B17( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_P4_B18( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_P4_B19( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_P4_B20( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_P4_B21( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_P4_B22( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_P4_B23( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_P4_B24( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O1_B1( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O1_B2( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O1_B3( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O1_B4( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O1_B5( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O1_B6( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O1_B7( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O1_B8( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O1_B9( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O1_B10( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O1_B11( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O1_B12( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O1_B13( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O1_B14( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O1_B15( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O1_B16( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O1_B17( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O1_B18( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O1_B19( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O1_B20( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O1_B21( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O1_B22( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O1_B23( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O1_B24( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_Oz_B1( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_Oz_B2( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_Oz_B3( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_Oz_B4( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_Oz_B5( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_Oz_B6( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_Oz_B7( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_Oz_B8( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_Oz_B9( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_Oz_B10( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_Oz_B11( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_Oz_B12( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_Oz_B13( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_Oz_B14( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_Oz_B15( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_Oz_B16( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_Oz_B17( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_Oz_B18( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_Oz_B19( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_Oz_B20( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_Oz_B21( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_Oz_B22( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_Oz_B23( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_Oz_B24( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O2_B1( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O2_B2( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O2_B3( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O2_B4( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O2_B5( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O2_B6( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O2_B7( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O2_B8( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O2_B9( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O2_B10( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O2_B11( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O2_B12( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O2_B13( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O2_B14( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O2_B15( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O2_B16( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O2_B17( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O2_B18( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O2_B19( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O2_B20( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O2_B21( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O2_B22( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O2_B23( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_O2_B24( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO3_B1( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO3_B2( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO3_B3( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO3_B4( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO3_B5( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO3_B6( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO3_B7( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO3_B8( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO3_B9( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO3_B10( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO3_B11( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO3_B12( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO3_B13( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO3_B14( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO3_B15( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO3_B16( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO3_B17( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO3_B18( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO3_B19( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO3_B20( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO3_B21( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO3_B22( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO3_B23( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO3_B24( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_POz_B1( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_POz_B2( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_POz_B3( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_POz_B4( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_POz_B5( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_POz_B6( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_POz_B7( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_POz_B8( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_POz_B9( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_POz_B10( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_POz_B11( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_POz_B12( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_POz_B13( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_POz_B14( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_POz_B15( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_POz_B16( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_POz_B17( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_POz_B18( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_POz_B19( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_POz_B20( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_POz_B21( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_POz_B22( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_POz_B23( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_POz_B24( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO4_B1( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO4_B2( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO4_B3( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO4_B4( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO4_B5( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO4_B6( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO4_B7( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO4_B8( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO4_B9( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO4_B10( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO4_B11( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO4_B12( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO4_B13( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO4_B14( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO4_B15( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO4_B16( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO4_B17( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO4_B18( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO4_B19( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO4_B20( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO4_B21( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO4_B22( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO4_B23( MIN=100 MAX=400)
  /CONSTRAINTS AR_FAL50_PO4_B24( MIN=100 MAX=400)
  /CONSTRAINTS SL_FAL50_POz_B1( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_POz_B2( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_POz_B3( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_POz_B4( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_POz_B5( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_POz_B6( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_POz_B7( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_POz_B8( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_POz_B9( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_POz_B10( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_POz_B11( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_POz_B12( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_POz_B13( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_POz_B14( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_POz_B15( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_POz_B16( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_POz_B17( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_POz_B18( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_POz_B19( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_POz_B20( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_POz_B21( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_POz_B22( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_POz_B23( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_POz_B24( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_Oz_B1( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_Oz_B2( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_Oz_B3( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_Oz_B4( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_Oz_B5( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_Oz_B6( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_Oz_B7( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_Oz_B8( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_Oz_B9( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_Oz_B10( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_Oz_B11( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_Oz_B12( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_Oz_B13( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_Oz_B14( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_Oz_B15( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_Oz_B16( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_Oz_B17( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_Oz_B18( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_Oz_B19( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_Oz_B20( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_Oz_B21( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_Oz_B22( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_Oz_B23( MIN=125 MAX=275)
  /CONSTRAINTS SL_FAL50_Oz_B24( MIN=125 MAX=275)
  /CONSTRAINTS  AR_FAL50_avg_Bin13_Red_MMN_1( MIN=100.0 MAX=400) 
  /CONSTRAINTS AR_FAL50_avg_Bin14_Grn_MMN_1( MIN=100.0 MAX=400) 
  /CONSTRAINTS  AR_FAL50_avg_Bin15_Red_MMN_2( MIN=100.0 MAX=400) 
  /CONSTRAINTS AR_FAL50_avg_Bin16_Grn_MMN_2( MIN=100.0 MAX=400) 
  /CONSTRAINTS AR_FAL50_avg_Bin17_Red_Rule_MMN( MIN=100.0 MAX=400) 
  /CONSTRAINTS AR_FAL50_avg_Bin18_Grn_Rule_MMN( MIN=100.0 MAX=400) 
  /CONSTRAINTS AR_FAL50_avg_Bin19_GminR_MMN_1( MIN=100.0 MAX=400) 
  /CONSTRAINTS AR_FAL50_avg_Bin20_GminR_MMN_2( MIN=100.0 MAX=400) 
  /CONSTRAINTS AR_FAL50_avg_Bin21_RminG_MMN_1( MIN=100.0 MAX=400) 
  /CONSTRAINTS AR_FAL50_avg_Bin22_RminG_MMN_2( MIN=100.0 MAX=400) 
  /CONSTRAINTS AR_FAL50_avg_Bin23_RminG_Rule( MIN=100.0 MAX=400) 
  /CONSTRAINTS AR_FAL50_avg_Bin24_GminR_Rule( MIN=100.0 MAX=400) 
  /CONSTRAINTS SL_FAL50_avg_Bin13_Red_MMN_1( MIN=125 MAX=275) 
  /CONSTRAINTS SL_FAL50_avg_Bin14_Grn_MMN_1( MIN=125 MAX=275) 
  /CONSTRAINTS SL_FAL50_avg_Bin15_Red_MMN_2( MIN=125 MAX=275) 
  /CONSTRAINTS SL_FAL50_avg_Bin16_Grn_MMN_2( MIN=125 MAX=275) 
  /CONSTRAINTS SL_FAL50_avg_Bin17_Red_Rule_MMN( MIN=125 MAX=275) 
  /CONSTRAINTS SL_FAL50_avg_Bin18_Grn_Rule_MMN( MIN=125 MAX=275) 
  /CONSTRAINTS SL_FAL50_avg_Bin19_GminR_MMN_1( MIN=125 MAX=275) 
  /CONSTRAINTS SL_FAL50_avg_Bin20_GminR_MMN_2( MIN=125 MAX=275) 
  /CONSTRAINTS SL_FAL50_avg_Bin21_RminG_MMN_1( MIN=125 MAX=275) 
  /CONSTRAINTS SL_FAL50_avg_Bin22_RminG_MMN_2( MIN=125 MAX=275) 
  /CONSTRAINTS SL_FAL50_avg_Bin23_RminG_Rule( MIN=125 MAX=275) 
  /CONSTRAINTS SL_FAL50_avg_Bin24_GminR_Rule( MIN=125 MAX=275)
  /MISSINGSUMMARIES NONE 
  /IMPUTATIONSUMMARIES MODELS DESCRIPTIVES 
  /OUTFILE IMPUTATIONS=vMMN_new_imputed_latencies_2022 
    FCSITERATIONS=vMMN_2022_imputed_latency_iteration_history .
