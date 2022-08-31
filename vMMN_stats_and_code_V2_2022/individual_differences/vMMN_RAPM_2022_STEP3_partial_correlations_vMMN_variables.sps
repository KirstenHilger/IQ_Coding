* Encoding: UTF-8.

DATASET ACTIVATE Dataset1. /*vMMN_new_imputed_latencies_2022.
SPLIT FILE LAYERED BY Imputation_.

/* ####################################################################################################.
/* PARTIAL CORRELATIONS, CONTROLLING FOR AGE, SEX, MIN TRIAL NUMBER--- NEW BINS ONLY. 
/* ####################################################################################################.

/* AVG REF - AMPLITUDES - all NS.
PARTIAL CORR
  /VARIABLES=apm AR_SAA_avg_Bin19_GminR_MMN_1 AR_SAA_avg_Bin20_GminR_MMN_2 AR_SAA_avg_Bin21_RminG_MMN_1 
    AR_SAA_avg_Bin22_RminG_MMN_2 AR_SAA_avg_Bin23_RminG_Rule AR_SAA_avg_Bin24_GminR_Rule  BY sex age 
    MinGoodTrls
  /SIGNIFICANCE=TWOTAIL
  /MISSING=LISTWISE.

/* AVG REF - LATENCIES - all n.s.
PARTIAL CORR
  /VARIABLES=apm AR_FAL50_avg_Bin19_GminR_MMN_1 AR_FAL50_avg_Bin20_GminR_MMN_2 
    AR_FAL50_avg_Bin21_RminG_MMN_1 AR_FAL50_avg_Bin22_RminG_MMN_2 AR_FAL50_avg_Bin23_RminG_Rule 
    AR_FAL50_avg_Bin24_GminR_Rule BY sex age MinGoodTrls
  /SIGNIFICANCE=TWOTAIL
  /MISSING=LISTWISE.

/* Surf lap, AMPLITUDES - All N.S.
PARTIAL CORR
  /VARIABLES=apm SL_SAA_avg_Bin19_GminR_MMN_1 SL_SAA_avg_Bin20_GminR_MMN_2 
    SL_SAA_avg_Bin21_RminG_MMN_1 SL_SAA_avg_Bin22_RminG_MMN_2 SL_SAA_avg_Bin23_RminG_Rule 
    SL_SAA_avg_Bin24_GminR_Rule BY sex age MinGoodTrls
  /SIGNIFICANCE=TWOTAIL
  /MISSING=LISTWISE.

/* Surf lap, LATENCIES - BIn 19, Bin23 trending positive, Bin 24 trending negative.
PARTIAL CORR
  /VARIABLES=apm SL_FAL50_avg_Bin19_GminR_MMN_1 SL_FAL50_avg_Bin20_GminR_MMN_2 
    SL_FAL50_avg_Bin21_RminG_MMN_1 SL_FAL50_avg_Bin22_RminG_MMN_2 SL_FAL50_avg_Bin23_RminG_Rule 
    SL_FAL50_avg_Bin24_GminR_Rule BY sex age MinGoodTrls
  /SIGNIFICANCE=TWOTAIL
  /MISSING=LISTWISE.

