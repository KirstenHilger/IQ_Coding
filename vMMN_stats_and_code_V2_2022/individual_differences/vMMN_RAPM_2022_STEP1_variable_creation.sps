* Encoding: UTF-8.

DATASET ACTIVATE DataSet1.
DESCRIPTIVES VARIABLES=AR_SAA_POz_B1 AR_SAA_POz_B2 AR_SAA_POz_B3 AR_SAA_POz_B4 AR_SAA_POz_B5 
    AR_SAA_POz_B6 AR_SAA_POz_B7 AR_SAA_POz_B8 AR_SAA_POz_B9 AR_SAA_POz_B10 AR_SAA_POz_B11 
    AR_SAA_POz_B12 AR_FAL50_POz_B1 AR_FAL50_POz_B2 AR_FAL50_POz_B3 AR_FAL50_POz_B4 AR_FAL50_POz_B5 
    AR_FAL50_POz_B6 AR_FAL50_POz_B7 AR_FAL50_POz_B8 AR_FAL50_POz_B9 AR_FAL50_POz_B10 AR_FAL50_POz_B11 
    AR_FAL50_POz_B12
  /STATISTICS=MEAN STDDEV MIN MAX.

/*===============================================================.
/*===============================================================.
/* AVERAGE ACROSS ELECTRODES FOR THE CORRELATION ANALYSES.
/* ORIGINAL DIFFERENCE WAVES, AVERAGE REFERENCE --  AMPLITUDES.
/*===============================================================.
/*===============================================================.

/* Signed area amplitude Red MMN 1 (Bin13).    
COMPUTE AR_SAA_avg_Bin13_Red_MMN_1=(AR_SAA_P3_B13 + AR_SAA_Pz_B13 + AR_SAA_P4_B13 + AR_SAA_O1_B13 + 
    AR_SAA_Oz_B13 + AR_SAA_O2_B13 + AR_SAA_PO3_B13 + AR_SAA_POz_B13 + AR_SAA_PO4_B13)/9.
EXECUTE.

/* Signed area amplitude Green MMN 1 (Bin14).    
COMPUTE AR_SAA_avg_Bin14_Grn_MMN_1=(AR_SAA_P3_B14 + AR_SAA_Pz_B14 + AR_SAA_P4_B14 + AR_SAA_O1_B14 + 
    AR_SAA_Oz_B14 + AR_SAA_O2_B14 + AR_SAA_PO3_B14 + AR_SAA_POz_B14 + AR_SAA_PO4_B14)/9.
EXECUTE.

/* Signed area amplitude Red MMN 2 (Bin15).    
COMPUTE AR_SAA_avg_Bin15_Red_MMN_2=(AR_SAA_P3_B15 + AR_SAA_Pz_B15 + AR_SAA_P4_B15 + AR_SAA_O1_B15 + 
    AR_SAA_Oz_B15 + AR_SAA_O2_B15 + AR_SAA_PO3_B15 + AR_SAA_POz_B15 + AR_SAA_PO4_B15)/9.
EXECUTE.

/* Signed area amplitude Green MMN 2 (Bin16).    
COMPUTE AR_SAA_avg_Bin16_Grn_MMN_2=(AR_SAA_P3_B16 + AR_SAA_Pz_B16 + AR_SAA_P4_B16 + AR_SAA_O1_B16 + 
    AR_SAA_Oz_B16 + AR_SAA_O2_B16 + AR_SAA_PO3_B16 + AR_SAA_POz_B16 + AR_SAA_PO4_B16)/9.
EXECUTE.

/* Signed area amplitude Red Rule MMN (Bin17).    
COMPUTE AR_SAA_avg_Bin17_Red_Rule_MMN=(AR_SAA_P3_B17 + AR_SAA_Pz_B17 + AR_SAA_P4_B17 + AR_SAA_O1_B17 + 
    AR_SAA_Oz_B17 + AR_SAA_O2_B17 + AR_SAA_PO3_B17 + AR_SAA_POz_B17 + AR_SAA_PO4_B17)/9.
EXECUTE.

/* Signed area amplitude Green Rule MMN (Bin18).    
COMPUTE AR_SAA_avg_Bin18_Grn_Rule_MMN=(AR_SAA_P3_B18 + AR_SAA_Pz_B18 + AR_SAA_P4_B18 + AR_SAA_O1_B18 + 
    AR_SAA_Oz_B18 + AR_SAA_O2_B18 + AR_SAA_PO3_B18 + AR_SAA_POz_B18 + AR_SAA_PO4_B18)/9.
EXECUTE.


DESCRIPTIVES VARIABLES=AR_SAA_avg_Bin13_Red_MMN_1 AR_SAA_avg_Bin14_Grn_MMN_1 
    AR_SAA_avg_Bin15_Red_MMN_2 AR_SAA_avg_Bin16_Grn_MMN_2 AR_SAA_avg_Bin17_Red_Rule_MMN 
    AR_SAA_avg_Bin18_Grn_Rule_MMN
  /STATISTICS=MEAN STDDEV MIN MAX.

/*=============================================================.
/* COMPUTE AVG LATENCIES - Fractional Area Latencies, Average Reference.
/*=============================================================.

/* Fractional Area Latency Red MMN 1 (Bin13).    
COMPUTE AR_FAL50_avg_Bin13_Red_MMN_1=(AR_FAL50_P3_B13 + AR_FAL50_Pz_B13 + AR_FAL50_P4_B13 + AR_FAL50_O1_B13 + 
    AR_FAL50_Oz_B13 + AR_FAL50_O2_B13 + AR_FAL50_PO3_B13 + AR_FAL50_POz_B13 + AR_FAL50_PO4_B13)/9.
EXECUTE.

/* Fractional Area Latency Green MMN 1 (Bin14).    
COMPUTE AR_FAL50_avg_Bin14_Grn_MMN_1=(AR_FAL50_P3_B14 + AR_FAL50_Pz_B14 + AR_FAL50_P4_B14 + AR_FAL50_O1_B14 + 
    AR_FAL50_Oz_B14 + AR_FAL50_O2_B14 + AR_FAL50_PO3_B14 + AR_FAL50_POz_B14 + AR_FAL50_PO4_B14)/9.
EXECUTE.

/* Fractional Area Latency Red MMN 2 (Bin15).    
COMPUTE AR_FAL50_avg_Bin15_Red_MMN_2=(AR_FAL50_P3_B15 + AR_FAL50_Pz_B15 + AR_FAL50_P4_B15 + AR_FAL50_O1_B15 + 
    AR_FAL50_Oz_B15 + AR_FAL50_O2_B15 + AR_FAL50_PO3_B15 + AR_FAL50_POz_B15 + AR_FAL50_PO4_B15)/9.
EXECUTE.

/* Fractional Area Latency Green MMN 2 (Bin16).    
COMPUTE AR_FAL50_avg_Bin16_Grn_MMN_2=(AR_FAL50_P3_B16 + AR_FAL50_Pz_B16 + AR_FAL50_P4_B16 + AR_FAL50_O1_B16 + 
    AR_FAL50_Oz_B16 + AR_FAL50_O2_B16 + AR_FAL50_PO3_B16 + AR_FAL50_POz_B16 + AR_FAL50_PO4_B16)/9.
EXECUTE.

/* Fractional Area Latency Red Rule MMN (Bin17).    
COMPUTE AR_FAL50_avg_Bin17_Red_Rule_MMN=(AR_FAL50_P3_B17 + AR_FAL50_Pz_B17 + AR_FAL50_P4_B17 + AR_FAL50_O1_B17 + 
    AR_FAL50_Oz_B17 + AR_FAL50_O2_B17 + AR_FAL50_PO3_B17 + AR_FAL50_POz_B17 + AR_FAL50_PO4_B17)/9.
EXECUTE.

/* Fractional Area Latency Green Rule MMN (Bin18).    
COMPUTE AR_FAL50_avg_Bin18_Grn_Rule_MMN=(AR_FAL50_P3_B18 + AR_FAL50_Pz_B18 + AR_FAL50_P4_B18 + AR_FAL50_O1_B18 + 
    AR_FAL50_Oz_B18 + AR_FAL50_O2_B18 + AR_FAL50_PO3_B18 + AR_FAL50_POz_B18 + AR_FAL50_PO4_B18)/9.
EXECUTE.

/* Lots of missing data! 6-0 subjects are missing per variable; only n = 34 are valid listwise.
DESCRIPTIVES VARIABLES=AR_FAL50_avg_Bin13_Red_MMN_1 AR_FAL50_avg_Bin14_Grn_MMN_1 
    AR_FAL50_avg_Bin15_Red_MMN_2 AR_FAL50_avg_Bin16_Grn_MMN_2 AR_FAL50_avg_Bin17_Red_Rule_MMN 
    AR_FAL50_avg_Bin18_Grn_Rule_MMN
  /STATISTICS=MEAN STDDEV MIN MAX.


/*######################################################################################.
/*######################################################################################.
/* Compute individual difference variables based on SURFACE LAPLACIAN data.
/*######################################################################################.
/*######################################################################################.

/*==============================.
/* AMPLITUDES.
/*==============================.


/* Signed Area amplitude, SL data, Red MMN 1 (Bin13).    
COMPUTE SL_SAA_avg_Bin13_Red_MMN_1=(SL_SAA_Oz_B13 + SL_SAA_POz_B13)/2.
EXECUTE.

/* Signed Area amplitude, SL data, Green MMN 1 (Bin14).    
COMPUTE SL_SAA_avg_Bin14_Grn_MMN_1=(SL_SAA_Oz_B14 + SL_SAA_POz_B14)/2.
EXECUTE.

/* Signed Area amplitude, SL data, Red MMN 2 (Bin15).    
COMPUTE SL_SAA_avg_Bin15_Red_MMN_2=(SL_SAA_Oz_B15 + SL_SAA_POz_B15)/2.
EXECUTE.


/* Signed Area amplitude, SL data, Green MMN 2 (Bin16).    
COMPUTE SL_SAA_avg_Bin16_Grn_MMN_2=(SL_SAA_Oz_B16 + SL_SAA_POz_B16)/2.
EXECUTE.

/* Signed Area amplitude, SL data, Red Rule MMN (Bin17).    
COMPUTE SL_SAA_avg_Bin17_Red_Rule_MMN=(SL_SAA_Oz_B17 + SL_SAA_POz_B17)/2.
EXECUTE.

/* Signed Area amplitude, SL data, Green Rule MMN (Bin18).    
COMPUTE SL_SAA_avg_Bin18_Grn_Rule_MMN=(SL_SAA_Oz_B18 + SL_SAA_POz_B18)/2.
EXECUTE.

/* no missing data! Means are generally negative.
DESCRIPTIVES VARIABLES=SL_SAA_avg_Bin13_Red_MMN_1 SL_SAA_avg_Bin14_Grn_MMN_1 
    SL_SAA_avg_Bin15_Red_MMN_2 SL_SAA_avg_Bin16_Grn_MMN_2 SL_SAA_avg_Bin17_Red_Rule_MMN 
    SL_SAA_avg_Bin18_Grn_Rule_MMN
  /STATISTICS=MEAN STDDEV MIN MAX.


/*==============================.
/* LATENCIES.
/*==============================.


/* Fractional Area Latency , SL data, Red MMN 1 (Bin13).    
COMPUTE SL_FAL50_avg_Bin13_Red_MMN_1=(SL_FAL50_Oz_B13 + SL_FAL50_POz_B13)/2.
EXECUTE.

/* Fractional Area Latency , SL data, Green MMN 1 (Bin14).    
COMPUTE SL_FAL50_avg_Bin14_Grn_MMN_1=(SL_FAL50_Oz_B14 + SL_FAL50_POz_B14)/2.
EXECUTE.

/* Fractional Area Latency, SL data, Red MMN 2 (Bin15).    
COMPUTE SL_FAL50_avg_Bin15_Red_MMN_2=(SL_FAL50_Oz_B15 + SL_FAL50_POz_B15)/2.
EXECUTE.


/* Fractional Area Latency, SL data, Green MMN 2 (Bin16).    
COMPUTE SL_FAL50_avg_Bin16_Grn_MMN_2=(SL_FAL50_Oz_B16 + SL_FAL50_POz_B16)/2.
EXECUTE.

/* Fractional Area Latency, SL data, Red Rule MMN (Bin17).    
COMPUTE SL_FAL50_avg_Bin17_Red_Rule_MMN=(SL_FAL50_Oz_B17 + SL_FAL50_POz_B17)/2.
EXECUTE.

/* Fractional Area Latency, SL data, Green Rule MMN (Bin18).    
COMPUTE SL_FAL50_avg_Bin18_Grn_Rule_MMN=(SL_FAL50_Oz_B18 + SL_FAL50_POz_B18)/2.
EXECUTE.

/* Lots of missing data. only n = 27 valid listwise. 
DESCRIPTIVES VARIABLES=SL_FAL50_avg_Bin13_Red_MMN_1 SL_FAL50_avg_Bin14_Grn_MMN_1 
    SL_FAL50_avg_Bin15_Red_MMN_2 SL_FAL50_avg_Bin16_Grn_MMN_2 SL_FAL50_avg_Bin17_Red_Rule_MMN 
    SL_FAL50_avg_Bin18_Grn_Rule_MMN
  /STATISTICS=MEAN STDDEV MIN MAX.


/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.
/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.
/* COMPUTE AVG AMPLITUDES, Average Reference. NEW DIFFERENCE WAVES

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.
/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.

COMPUTE AR_SAA_avg_Bin19_GminR_MMN_1=(AR_SAA_P3_B19 + AR_SAA_Pz_B19 + AR_SAA_P4_B19 + AR_SAA_O1_B19 
    + AR_SAA_Oz_B19 + AR_SAA_O2_B19 + AR_SAA_PO3_B19 + AR_SAA_POz_B19 + AR_SAA_PO4_B19)/9.
EXECUTE.

COMPUTE AR_SAA_avg_Bin20_GminR_MMN_2=(AR_SAA_P3_B20 + AR_SAA_Pz_B20 + AR_SAA_P4_B20 + AR_SAA_O1_B20 
    + AR_SAA_Oz_B20 + AR_SAA_O2_B20 + AR_SAA_PO3_B20 + AR_SAA_POz_B20 + AR_SAA_PO4_B20)/9.
EXECUTE.


COMPUTE AR_SAA_avg_Bin21_RminG_MMN_1=(AR_SAA_P3_B21 + AR_SAA_Pz_B21 + AR_SAA_P4_B21 + AR_SAA_O1_B21 
    + AR_SAA_Oz_B21 + AR_SAA_O2_B21 + AR_SAA_PO3_B21 + AR_SAA_POz_B21 + AR_SAA_PO4_B21)/9.
EXECUTE.

COMPUTE AR_SAA_avg_Bin22_RminG_MMN_2=(AR_SAA_P3_B22 + AR_SAA_Pz_B22 + AR_SAA_P4_B22 + AR_SAA_O1_B22 
    + AR_SAA_Oz_B22 + AR_SAA_O2_B22 + AR_SAA_PO3_B22 + AR_SAA_POz_B22 + AR_SAA_PO4_B22)/9.
EXECUTE.

COMPUTE AR_SAA_avg_Bin23_RminG_Rule=(AR_SAA_P3_B23 + AR_SAA_Pz_B23 + AR_SAA_P4_B23 + AR_SAA_O1_B23 
    + AR_SAA_Oz_B23 + AR_SAA_O2_B23 + AR_SAA_PO3_B23 + AR_SAA_POz_B23 + AR_SAA_PO4_B23)/9.
EXECUTE.

COMPUTE AR_SAA_avg_Bin24_GminR_Rule=(AR_SAA_P3_B24 + AR_SAA_Pz_B24 + AR_SAA_P4_B24 + AR_SAA_O1_B24 
    + AR_SAA_Oz_B24 + AR_SAA_O2_B24 + AR_SAA_PO3_B24 + AR_SAA_POz_B24 + AR_SAA_PO4_B24)/9.
EXECUTE.

DESCRIPTIVES VARIABLES=AR_SAA_avg_Bin19_GminR_MMN_1 AR_SAA_avg_Bin20_GminR_MMN_2 
    AR_SAA_avg_Bin21_RminG_MMN_1 AR_SAA_avg_Bin22_RminG_MMN_2 AR_SAA_avg_Bin23_RminG_Rule 
    AR_SAA_avg_Bin24_GminR_Rule
  /STATISTICS=MEAN STDDEV MIN MAX.

/*===================================================================================================.
/*===================================================================================================.
/* LATENCIES.
/*===================================================================================================.
/*===================================================================================================.

COMPUTE AR_FAL50_avg_Bin19_GminR_MMN_1=(AR_FAL50_P3_B19 + AR_FAL50_Pz_B19 + AR_FAL50_P4_B19 + AR_FAL50_O1_B19 
    + AR_FAL50_Oz_B19 + AR_FAL50_O2_B19 + AR_FAL50_PO3_B19 + AR_FAL50_POz_B19 + AR_FAL50_PO4_B19)/9.
EXECUTE.

COMPUTE AR_FAL50_avg_Bin20_GminR_MMN_2=(AR_FAL50_P3_B20 + AR_FAL50_Pz_B20 + AR_FAL50_P4_B20 + AR_FAL50_O1_B20 
    + AR_FAL50_Oz_B20 + AR_FAL50_O2_B20 + AR_FAL50_PO3_B20 + AR_FAL50_POz_B20 + AR_FAL50_PO4_B20)/9.
EXECUTE.


COMPUTE AR_FAL50_avg_Bin21_RminG_MMN_1=(AR_FAL50_P3_B21 + AR_FAL50_Pz_B21 + AR_FAL50_P4_B21 + AR_FAL50_O1_B21 
    + AR_FAL50_Oz_B21 + AR_FAL50_O2_B21 + AR_FAL50_PO3_B21 + AR_FAL50_POz_B21 + AR_FAL50_PO4_B21)/9.
EXECUTE.

COMPUTE AR_FAL50_avg_Bin22_RminG_MMN_2=(AR_FAL50_P3_B22 + AR_FAL50_Pz_B22 + AR_FAL50_P4_B22 + AR_FAL50_O1_B22 
    + AR_FAL50_Oz_B22 + AR_FAL50_O2_B22 + AR_FAL50_PO3_B22 + AR_FAL50_POz_B22 + AR_FAL50_PO4_B22)/9.
EXECUTE.

COMPUTE AR_FAL50_avg_Bin23_RminG_Rule=(AR_FAL50_P3_B23 + AR_FAL50_Pz_B23 + AR_FAL50_P4_B23 + AR_FAL50_O1_B23 
    + AR_FAL50_Oz_B23 + AR_FAL50_O2_B23 + AR_FAL50_PO3_B23 + AR_FAL50_POz_B23 + AR_FAL50_PO4_B23)/9.
EXECUTE.

COMPUTE AR_FAL50_avg_Bin24_GminR_Rule=(AR_FAL50_P3_B24 + AR_FAL50_Pz_B24 + AR_FAL50_P4_B24 + AR_FAL50_O1_B24 
    + AR_FAL50_Oz_B24 + AR_FAL50_O2_B24 + AR_FAL50_PO3_B24 + AR_FAL50_POz_B24 + AR_FAL50_PO4_B24)/9.
EXECUTE.

/* n = 40 valid listwise here.
DESCRIPTIVES VARIABLES=AR_FAL50_avg_Bin19_GminR_MMN_1 AR_FAL50_avg_Bin20_GminR_MMN_2 
    AR_FAL50_avg_Bin21_RminG_MMN_1 AR_FAL50_avg_Bin22_RminG_MMN_2 AR_FAL50_avg_Bin23_RminG_Rule 
    AR_FAL50_avg_Bin24_GminR_Rule
  /STATISTICS=MEAN STDDEV MIN MAX.

/*>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>.
/*>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>.
/* COMPUTE AVERAGE VARIABLES, LAPLACIAN DATA.
/*>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>.
/*>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>.

/*===================================.
/* AMPLITUDES.
/*===================================.

COMPUTE SL_SAA_avg_Bin19_GminR_MMN_1=(SL_SAA_Oz_B19 + SL_SAA_POz_B1)/2.
EXECUTE.

COMPUTE SL_SAA_avg_Bin20_GminR_MMN_2=(SL_SAA_Oz_B20 + SL_SAA_POz_B20)/2.
EXECUTE.


COMPUTE SL_SAA_avg_Bin21_RminG_MMN_1=(SL_SAA_Oz_B21 + SL_SAA_POz_B21)/2.
EXECUTE.

COMPUTE SL_SAA_avg_Bin22_RminG_MMN_2=(SL_SAA_Oz_B22 + SL_SAA_POz_B22)/2.
EXECUTE.

COMPUTE SL_SAA_avg_Bin23_RminG_Rule=(SL_SAA_Oz_B23 + SL_SAA_POz_B23)/2.
EXECUTE.

COMPUTE SL_SAA_avg_Bin24_GminR_Rule=(SL_SAA_Oz_B24 + SL_SAA_POz_B24)/2.
EXECUTE.


DESCRIPTIVES VARIABLES=SL_SAA_avg_Bin19_GminR_MMN_1 SL_SAA_avg_Bin20_GminR_MMN_2 
    SL_SAA_avg_Bin21_RminG_MMN_1 SL_SAA_avg_Bin22_RminG_MMN_2 SL_SAA_avg_Bin23_RminG_Rule 
    SL_SAA_avg_Bin24_GminR_Rule
  /STATISTICS=MEAN STDDEV MIN MAX.


/*===================================.
/* LATENCIES.
/*===================================.

COMPUTE SL_FAL50_avg_Bin19_GminR_MMN_1=(SL_FAL50_Oz_B19 + SL_FAL50_POz_B1)/2.
EXECUTE.

COMPUTE SL_FAL50_avg_Bin20_GminR_MMN_2=(SL_FAL50_Oz_B20 + SL_FAL50_POz_B20)/2.
EXECUTE.


COMPUTE SL_FAL50_avg_Bin21_RminG_MMN_1=(SL_FAL50_Oz_B21 + SL_FAL50_POz_B21)/2.
EXECUTE.

COMPUTE SL_FAL50_avg_Bin22_RminG_MMN_2=(SL_FAL50_Oz_B22 + SL_FAL50_POz_B22)/2.
EXECUTE.

COMPUTE SL_FAL50_avg_Bin23_RminG_Rule=(SL_FAL50_Oz_B23 + SL_FAL50_POz_B23)/2.
EXECUTE.

COMPUTE SL_FAL50_avg_Bin24_GminR_Rule=(SL_FAL50_Oz_B24 + SL_FAL50_POz_B24)/2.
EXECUTE.

/* Note - only n = 28 valid listwise!.
DESCRIPTIVES VARIABLES=SL_FAL50_avg_Bin19_GminR_MMN_1 SL_FAL50_avg_Bin20_GminR_MMN_2 
    SL_FAL50_avg_Bin21_RminG_MMN_1 SL_FAL50_avg_Bin22_RminG_MMN_2 SL_FAL50_avg_Bin23_RminG_Rule 
    SL_FAL50_avg_Bin24_GminR_Rule
  /STATISTICS=MEAN STDDEV MIN MAX.

 