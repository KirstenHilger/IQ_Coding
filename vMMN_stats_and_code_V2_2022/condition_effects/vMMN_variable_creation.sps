* Encoding: UTF-8.

DATASET ACTIVATE DataSet1.

/* =========================================.
/*. POOLING ACROSS COLORS
/* =========================================.
/* =========================================.
/* AMPLITUDES.
/* =========================================.
/* =========================================.


/* ======================================================.
/* Pool the colors to replicate Stefanics et al.'s approach.
/* ======================================================.

/* Simple/Reverse Standard stimuli, first position (Bins 1 and 5).
COMPUTE BasicStd_1stpos_P3_AR_SAA_Stef=(P3_B1_AR_SAA_Stef + P3_B5_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE BasicStd_1stpos_Pz_AR_SAA_Stef=(Pz_B1_AR_SAA_Stef + Pz_B5_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE BasicStd_1stpos_P4_AR_SAA_Stef=(P4_B1_AR_SAA_Stef + P4_B5_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE BasicStd_1stpos_PO3_AR_SAA_Stef=(PO3_B1_AR_SAA_Stef + PO3_B5_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE BasicStd_1stpos_POz_AR_SAA_Stef=(POz_B1_AR_SAA_Stef + POz_B5_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE BasicStd_1stpos_PO4_AR_SAA_Stef=(PO4_B1_AR_SAA_Stef + PO4_B5_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE BasicStd_1stpos_O1_AR_SAA_Stef=(O1_B1_AR_SAA_Stef + O1_B5_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE BasicStd_1stpos_Oz_AR_SAA_Stef=(Oz_B1_AR_SAA_Stef + Oz_B5_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE BasicStd_1stpos_O2_AR_SAA_Stef=(O2_B1_AR_SAA_Stef + O2_B5_AR_SAA_Stef)/2.
EXECUTE.

/* Simple/Reverse Standard stimuli, second position (Bins 2 and 6).
COMPUTE BasicStd_2ndpos_P3_AR_SAA_Stef=(P3_B2_AR_SAA_Stef + P3_B6_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE BasicStd_2ndpos_Pz_AR_SAA_Stef=(Pz_B2_AR_SAA_Stef + Pz_B6_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE BasicStd_2ndpos_P4_AR_SAA_Stef=(P4_B2_AR_SAA_Stef + P4_B6_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE BasicStd_2ndpos_PO3_AR_SAA_Stef=(PO3_B2_AR_SAA_Stef + PO3_B6_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE BasicStd_2ndpos_POz_AR_SAA_Stef=(POz_B2_AR_SAA_Stef + POz_B6_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE BasicStd_2ndpos_PO4_AR_SAA_Stef=(PO4_B2_AR_SAA_Stef + PO4_B6_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE BasicStd_2ndpos_O1_AR_SAA_Stef=(O1_B2_AR_SAA_Stef + O1_B6_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE BasicStd_2ndpos_Oz_AR_SAA_Stef=(Oz_B2_AR_SAA_Stef + Oz_B6_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE BasicStd_2ndpos_O2_AR_SAA_Stef=(O2_B2_AR_SAA_Stef + O2_B6_AR_SAA_Stef)/2.
EXECUTE.


/* Simple/Reverse Deviant stimuli, first position (Bins 3 and 7).
COMPUTE BasicDev_1stpos_P3_AR_SAA_Stef=(P3_B3_AR_SAA_Stef + P3_B7_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE BasicDev_1stpos_Pz_AR_SAA_Stef=(Pz_B3_AR_SAA_Stef + Pz_B7_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE BasicDev_1stpos_P4_AR_SAA_Stef=(P4_B3_AR_SAA_Stef + P4_B7_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE BasicDev_1stpos_PO3_AR_SAA_Stef=(PO3_B3_AR_SAA_Stef + PO3_B7_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE BasicDev_1stpos_POz_AR_SAA_Stef=(POz_B3_AR_SAA_Stef + POz_B7_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE BasicDev_1stpos_PO4_AR_SAA_Stef=(PO4_B3_AR_SAA_Stef + PO4_B7_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE BasicDev_1stpos_O1_AR_SAA_Stef=(O1_B3_AR_SAA_Stef + O1_B7_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE BasicDev_1stpos_Oz_AR_SAA_Stef=(Oz_B3_AR_SAA_Stef + Oz_B7_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE BasicDev_1stpos_O2_AR_SAA_Stef=(O2_B3_AR_SAA_Stef + O2_B7_AR_SAA_Stef)/2.
EXECUTE.

/* Simple/Reverse Deviant stimuli, second position (Bins 4 and 8).
COMPUTE BasicDev_2ndpos_P3_AR_SAA_Stef=(P3_B4_AR_SAA_Stef + P3_B8_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE BasicDev_2ndpos_Pz_AR_SAA_Stef=(Pz_B4_AR_SAA_Stef + Pz_B8_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE BasicDev_2ndpos_P4_AR_SAA_Stef=(P4_B4_AR_SAA_Stef + P4_B8_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE BasicDev_2ndpos_PO3_AR_SAA_Stef=(PO3_B4_AR_SAA_Stef + PO3_B8_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE BasicDev_2ndpos_POz_AR_SAA_Stef=(POz_B4_AR_SAA_Stef + POz_B8_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE BasicDev_2ndpos_PO4_AR_SAA_Stef=(PO4_B4_AR_SAA_Stef + PO4_B8_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE BasicDev_2ndpos_O1_AR_SAA_Stef=(O1_B4_AR_SAA_Stef + O1_B8_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE BasicDev_2ndpos_Oz_AR_SAA_Stef=(Oz_B4_AR_SAA_Stef + Oz_B8_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE BasicDev_2ndpos_O2_AR_SAA_Stef=(O2_B4_AR_SAA_Stef + O2_B8_AR_SAA_Stef)/2.
EXECUTE.

/* Rule Standard stimuli, (all) second position (Bins 9 and 10).
COMPUTE RuleStd_2ndpos_P3_AR_SAA_Stef=(P3_B9_AR_SAA_Stef + P3_B10_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE RuleStd_2ndpos_Pz_AR_SAA_Stef=(Pz_B9_AR_SAA_Stef + Pz_B10_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE RuleStd_2ndpos_P4_AR_SAA_Stef=(P4_B9_AR_SAA_Stef + P4_B10_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE RuleStd_2ndpos_PO3_AR_SAA_Stef=(PO3_B9_AR_SAA_Stef + PO3_B10_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE RuleStd_2ndpos_POz_AR_SAA_Stef=(POz_B9_AR_SAA_Stef + POz_B10_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE RuleStd_2ndpos_PO4_AR_SAA_Stef=(PO4_B9_AR_SAA_Stef + PO4_B10_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE RuleStd_2ndpos_O1_AR_SAA_Stef=(O1_B9_AR_SAA_Stef + O1_B10_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE RuleStd_2ndpos_Oz_AR_SAA_Stef=(Oz_B9_AR_SAA_Stef + Oz_B10_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE RuleStd_2ndpos_O2_AR_SAA_Stef=(O2_B9_AR_SAA_Stef + O2_B10_AR_SAA_Stef)/2.
EXECUTE.

/*  Rule Deviant stimuli, (all)  second position (Bins 11 and 12).
COMPUTE RuleDev_2ndpos_P3_AR_SAA_Stef=(P3_B11_AR_SAA_Stef + P3_B12_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE RuleDev_2ndpos_Pz_AR_SAA_Stef=(Pz_B11_AR_SAA_Stef + Pz_B12_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE RuleDev_2ndpos_P4_AR_SAA_Stef=(P4_B11_AR_SAA_Stef + P4_B12_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE RuleDev_2ndpos_PO3_AR_SAA_Stef=(PO3_B11_AR_SAA_Stef + PO3_B12_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE RuleDev_2ndpos_POz_AR_SAA_Stef=(POz_B11_AR_SAA_Stef + POz_B12_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE RuleDev_2ndpos_PO4_AR_SAA_Stef=(PO4_B11_AR_SAA_Stef + PO4_B12_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE RuleDev_2ndpos_O1_AR_SAA_Stef=(O1_B11_AR_SAA_Stef + O1_B12_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE RuleDev_2ndpos_Oz_AR_SAA_Stef=(Oz_B11_AR_SAA_Stef + Oz_B12_AR_SAA_Stef)/2.
EXECUTE.
COMPUTE RuleDev_2ndpos_O2_AR_SAA_Stef=(O2_B11_AR_SAA_Stef + O2_B12_AR_SAA_Stef)/2.
EXECUTE.

/* ======================================================.
/* ======================================================.
/* AVERAGING OVER ELECTRODES FOR CORRELATION ANALYSES.
/* ======================================================.
/* ======================================================.

/* ======================================================.
/* Stefanics  - average reference - averaging over 9 chans - SAA
/* ======================================================.

COMPUTE AR_SAA_StefAvg9_B13=(P3_B13_AR_SAA_Stef + Pz_B13_AR_SAA_Stef + P4_B13_AR_SAA_Stef + 
    O1_B13_AR_SAA_Stef + Oz_B13_AR_SAA_Stef + O2_B13_AR_SAA_Stef + PO3_B13_AR_SAA_Stef + 
    POz_B13_AR_SAA_Stef + PO4_B13_AR_SAA_Stef) / 9.
EXECUTE.

COMPUTE AR_SAA_StefAvg9_B14=(P3_B14_AR_SAA_Stef + Pz_B14_AR_SAA_Stef + P4_B14_AR_SAA_Stef + 
    O1_B14_AR_SAA_Stef + Oz_B14_AR_SAA_Stef + O2_B14_AR_SAA_Stef + PO3_B14_AR_SAA_Stef + 
    POz_B14_AR_SAA_Stef + PO4_B14_AR_SAA_Stef) / 9.
EXECUTE.

COMPUTE AR_SAA_StefAvg9_B15=(P3_B15_AR_SAA_Stef + Pz_B15_AR_SAA_Stef + P4_B15_AR_SAA_Stef + 
    O1_B15_AR_SAA_Stef + Oz_B15_AR_SAA_Stef + O2_B15_AR_SAA_Stef + PO3_B15_AR_SAA_Stef + 
    POz_B15_AR_SAA_Stef + PO4_B15_AR_SAA_Stef) / 9.
EXECUTE.

COMPUTE AR_SAA_StefAvg9_B16=(P3_B16_AR_SAA_Stef + Pz_B16_AR_SAA_Stef + P4_B16_AR_SAA_Stef + 
    O1_B16_AR_SAA_Stef + Oz_B16_AR_SAA_Stef + O2_B16_AR_SAA_Stef + PO3_B16_AR_SAA_Stef + 
    POz_B16_AR_SAA_Stef + PO4_B16_AR_SAA_Stef) / 9.
EXECUTE.

COMPUTE AR_SAA_StefAvg9_B17=(P3_B17_AR_SAA_Stef + Pz_B17_AR_SAA_Stef + P4_B17_AR_SAA_Stef + 
    O1_B17_AR_SAA_Stef + Oz_B17_AR_SAA_Stef + O2_B17_AR_SAA_Stef + PO3_B17_AR_SAA_Stef + 
    POz_B17_AR_SAA_Stef + PO4_B17_AR_SAA_Stef) / 9.
EXECUTE.

COMPUTE AR_SAA_StefAvg9_B18=(P3_B18_AR_SAA_Stef + Pz_B18_AR_SAA_Stef + P4_B18_AR_SAA_Stef + 
    O1_B18_AR_SAA_Stef + Oz_B18_AR_SAA_Stef + O2_B18_AR_SAA_Stef + PO3_B18_AR_SAA_Stef + 
    POz_B18_AR_SAA_Stef + PO4_B18_AR_SAA_Stef) / 9.
EXECUTE.

/* =========================================================.
/* Sample-specific - surface laplacian - averaging over 2 chans - SAA
/* =========================================================.

COMPUTE SL_SAA_SLAvg2_B13=(POz_B13_SL_SAA_SS + Oz_B13_SL_SAA_SS) / 2.
EXECUTE.

COMPUTE SL_SAA_SLAvg2_B14=(POz_B14_SL_SAA_SS + Oz_B14_SL_SAA_SS) / 2.
EXECUTE.

COMPUTE SL_SAA_SLAvg2_B15=(POz_B15_SL_SAA_SS + Oz_B15_SL_SAA_SS) / 2.
EXECUTE.

COMPUTE SL_SAA_SLAvg2_B16=(POz_B16_SL_SAA_SS + Oz_B16_SL_SAA_SS) / 2.
EXECUTE.

COMPUTE SL_SAA_SLAvg2_B17=(POz_B17_SL_SAA_SS + Oz_B17_SL_SAA_SS) / 2.
EXECUTE.

COMPUTE SL_SAA_SLAvg2_B18=(POz_B18_SL_SAA_SS + Oz_B18_SL_SAA_SS) / 2.
EXECUTE.



/* =========================================================.
/* =========================================================.


/* =========================================.
/* =========================================.
/* POOLING OVER COLORS -- LATENCIES
/* =========================================.
/* =========================================.


/* Simple/Reverse Standard stimuli, first position (Bins 1 and 5).
COMPUTE BasicStd_1stpos_P3_AR_FAL50_Stef=(P3_B1_AR_FAL50_Stef + P3_B5_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE BasicStd_1stpos_Pz_AR_FAL50_Stef=(Pz_B1_AR_FAL50_Stef + Pz_B5_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE BasicStd_1stpos_P4_AR_FAL50_Stef=(P4_B1_AR_FAL50_Stef + P4_B5_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE BasicStd_1stpos_PO3_AR_FAL50_Stef=(PO3_B1_AR_FAL50_Stef + PO3_B5_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE BasicStd_1stpos_POz_AR_FAL50_Stef=(POz_B1_AR_FAL50_Stef + POz_B5_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE BasicStd_1stpos_PO4_AR_FAL50_Stef=(PO4_B1_AR_FAL50_Stef + PO4_B5_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE BasicStd_1stpos_O1_AR_FAL50_Stef=(O1_B1_AR_FAL50_Stef + O1_B5_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE BasicStd_1stpos_Oz_AR_FAL50_Stef=(Oz_B1_AR_FAL50_Stef + Oz_B5_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE BasicStd_1stpos_O2_AR_FAL50_Stef=(O2_B1_AR_FAL50_Stef + O2_B5_AR_FAL50_Stef)/2.
EXECUTE.

/* Simple/Reverse Standard stimuli, second position (Bins 2 and 6).
COMPUTE BasicStd_2ndpos_P3_AR_FAL50_Stef=(P3_B2_AR_FAL50_Stef + P3_B6_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE BasicStd_2ndpos_Pz_AR_FAL50_Stef=(Pz_B2_AR_FAL50_Stef + Pz_B6_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE BasicStd_2ndpos_P4_AR_FAL50_Stef=(P4_B2_AR_FAL50_Stef + P4_B6_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE BasicStd_2ndpos_PO3_AR_FAL50_Stef=(PO3_B2_AR_FAL50_Stef + PO3_B6_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE BasicStd_2ndpos_POz_AR_FAL50_Stef=(POz_B2_AR_FAL50_Stef + POz_B6_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE BasicStd_2ndpos_PO4_AR_FAL50_Stef=(PO4_B2_AR_FAL50_Stef + PO4_B6_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE BasicStd_2ndpos_O1_AR_FAL50_Stef=(O1_B2_AR_FAL50_Stef + O1_B6_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE BasicStd_2ndpos_Oz_AR_FAL50_Stef=(Oz_B2_AR_FAL50_Stef + Oz_B6_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE BasicStd_2ndpos_O2_AR_FAL50_Stef=(O2_B2_AR_FAL50_Stef + O2_B6_AR_FAL50_Stef)/2.
EXECUTE.


/* Simple/Reverse Deviant stimuli, first position (Bins 3 and 7).
COMPUTE BasicDev_1stpos_P3_AR_FAL50_Stef=(P3_B3_AR_FAL50_Stef + P3_B7_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE BasicDev_1stpos_Pz_AR_FAL50_Stef=(Pz_B3_AR_FAL50_Stef + Pz_B7_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE BasicDev_1stpos_P4_AR_FAL50_Stef=(P4_B3_AR_FAL50_Stef + P4_B7_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE BasicDev_1stpos_PO3_AR_FAL50_Stef=(PO3_B3_AR_FAL50_Stef + PO3_B7_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE BasicDev_1stpos_POz_AR_FAL50_Stef=(POz_B3_AR_FAL50_Stef + POz_B7_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE BasicDev_1stpos_PO4_AR_FAL50_Stef=(PO4_B3_AR_FAL50_Stef + PO4_B7_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE BasicDev_1stpos_O1_AR_FAL50_Stef=(O1_B3_AR_FAL50_Stef + O1_B7_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE BasicDev_1stpos_Oz_AR_FAL50_Stef=(Oz_B3_AR_FAL50_Stef + Oz_B7_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE BasicDev_1stpos_O2_AR_FAL50_Stef=(O2_B3_AR_FAL50_Stef + O2_B7_AR_FAL50_Stef)/2.
EXECUTE.

/* Simple/Reverse Deviant stimuli, second position (Bins 4 and 8).
COMPUTE BasicDev_2ndpos_P3_AR_FAL50_Stef=(P3_B4_AR_FAL50_Stef + P3_B8_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE BasicDev_2ndpos_Pz_AR_FAL50_Stef=(Pz_B4_AR_FAL50_Stef + Pz_B8_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE BasicDev_2ndpos_P4_AR_FAL50_Stef=(P4_B4_AR_FAL50_Stef + P4_B8_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE BasicDev_2ndpos_PO3_AR_FAL50_Stef=(PO3_B4_AR_FAL50_Stef + PO3_B8_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE BasicDev_2ndpos_POz_AR_FAL50_Stef=(POz_B4_AR_FAL50_Stef + POz_B8_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE BasicDev_2ndpos_PO4_AR_FAL50_Stef=(PO4_B4_AR_FAL50_Stef + PO4_B8_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE BasicDev_2ndpos_O1_AR_FAL50_Stef=(O1_B4_AR_FAL50_Stef + O1_B8_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE BasicDev_2ndpos_Oz_AR_FAL50_Stef=(Oz_B4_AR_FAL50_Stef + Oz_B8_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE BasicDev_2ndpos_O2_AR_FAL50_Stef=(O2_B4_AR_FAL50_Stef + O2_B8_AR_FAL50_Stef)/2.
EXECUTE.

/* Rule Standard stimuli, (all) second position (Bins 9 and 10).
COMPUTE RuleStd_2ndpos_P3_AR_FAL50_Stef=(P3_B9_AR_FAL50_Stef + P3_B10_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE RuleStd_2ndpos_Pz_AR_FAL50_Stef=(Pz_B9_AR_FAL50_Stef + Pz_B10_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE RuleStd_2ndpos_P4_AR_FAL50_Stef=(P4_B9_AR_FAL50_Stef + P4_B10_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE RuleStd_2ndpos_PO3_AR_FAL50_Stef=(PO3_B9_AR_FAL50_Stef + PO3_B10_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE RuleStd_2ndpos_POz_AR_FAL50_Stef=(POz_B9_AR_FAL50_Stef + POz_B10_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE RuleStd_2ndpos_PO4_AR_FAL50_Stef=(PO4_B9_AR_FAL50_Stef + PO4_B10_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE RuleStd_2ndpos_O1_AR_FAL50_Stef=(O1_B9_AR_FAL50_Stef + O1_B10_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE RuleStd_2ndpos_Oz_AR_FAL50_Stef=(Oz_B9_AR_FAL50_Stef + Oz_B10_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE RuleStd_2ndpos_O2_AR_FAL50_Stef=(O2_B9_AR_FAL50_Stef + O2_B10_AR_FAL50_Stef)/2.
EXECUTE.

/*  Rule Deviant stimuli, (all)  second position (Bins 11 and 12).
COMPUTE RuleDev_2ndpos_P3_AR_FAL50_Stef=(P3_B11_AR_FAL50_Stef + P3_B12_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE RuleDev_2ndpos_Pz_AR_FAL50_Stef=(Pz_B11_AR_FAL50_Stef + Pz_B12_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE RuleDev_2ndpos_P4_AR_FAL50_Stef=(P4_B11_AR_FAL50_Stef + P4_B12_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE RuleDev_2ndpos_PO3_AR_FAL50_Stef=(PO3_B11_AR_FAL50_Stef + PO3_B12_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE RuleDev_2ndpos_POz_AR_FAL50_Stef=(POz_B11_AR_FAL50_Stef + POz_B12_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE RuleDev_2ndpos_PO4_AR_FAL50_Stef=(PO4_B11_AR_FAL50_Stef + PO4_B12_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE RuleDev_2ndpos_O1_AR_FAL50_Stef=(O1_B11_AR_FAL50_Stef + O1_B12_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE RuleDev_2ndpos_Oz_AR_FAL50_Stef=(Oz_B11_AR_FAL50_Stef + Oz_B12_AR_FAL50_Stef)/2.
EXECUTE.
COMPUTE RuleDev_2ndpos_O2_AR_FAL50_Stef=(O2_B11_AR_FAL50_Stef + O2_B12_AR_FAL50_Stef)/2.
EXECUTE.




/* =========================================================.
/* =========================================================.



/* =========================================.
/* Stefanics averaging over 9 chans - FAL50.
/* =========================================.

COMPUTE AR_FAL50_StefAvg9_B13=(P3_B13_AR_FAL50_Stef + Pz_B13_AR_FAL50_Stef + P4_B13_AR_FAL50_Stef + 
    O1_B13_AR_FAL50_Stef + Oz_B13_AR_FAL50_Stef + O2_B13_AR_FAL50_Stef + PO3_B13_AR_FAL50_Stef + 
    POz_B13_AR_FAL50_Stef + PO4_B13_AR_FAL50_Stef) / 9.
EXECUTE.

COMPUTE AR_FAL50_StefAvg9_B14=(P3_B14_AR_FAL50_Stef + Pz_B14_AR_FAL50_Stef + P4_B14_AR_FAL50_Stef + 
    O1_B14_AR_FAL50_Stef + Oz_B14_AR_FAL50_Stef + O2_B14_AR_FAL50_Stef + PO3_B14_AR_FAL50_Stef + 
    POz_B14_AR_FAL50_Stef + PO4_B14_AR_FAL50_Stef) / 9.
EXECUTE.

COMPUTE AR_FAL50_StefAvg9_B15=(P3_B15_AR_FAL50_Stef + Pz_B15_AR_FAL50_Stef + P4_B15_AR_FAL50_Stef + 
    O1_B15_AR_FAL50_Stef + Oz_B15_AR_FAL50_Stef + O2_B15_AR_FAL50_Stef + PO3_B15_AR_FAL50_Stef + 
    POz_B15_AR_FAL50_Stef + PO4_B15_AR_FAL50_Stef) / 9.
EXECUTE.

COMPUTE AR_FAL50_StefAvg9_B16=(P3_B16_AR_FAL50_Stef + Pz_B16_AR_FAL50_Stef + P4_B16_AR_FAL50_Stef + 
    O1_B16_AR_FAL50_Stef + Oz_B16_AR_FAL50_Stef + O2_B16_AR_FAL50_Stef + PO3_B16_AR_FAL50_Stef + 
    POz_B16_AR_FAL50_Stef + PO4_B16_AR_FAL50_Stef) / 9.
EXECUTE.

COMPUTE AR_FAL50_StefAvg9_B17=(P3_B17_AR_FAL50_Stef + Pz_B17_AR_FAL50_Stef + P4_B17_AR_FAL50_Stef + 
    O1_B17_AR_FAL50_Stef + Oz_B17_AR_FAL50_Stef + O2_B17_AR_FAL50_Stef + PO3_B17_AR_FAL50_Stef + 
    POz_B17_AR_FAL50_Stef + PO4_B17_AR_FAL50_Stef) / 9.
EXECUTE.

COMPUTE AR_FAL50_StefAvg9_B18=(P3_B18_AR_FAL50_Stef + Pz_B18_AR_FAL50_Stef + P4_B18_AR_FAL50_Stef + 
    O1_B18_AR_FAL50_Stef + Oz_B18_AR_FAL50_Stef + O2_B18_AR_FAL50_Stef + PO3_B18_AR_FAL50_Stef + 
    POz_B18_AR_FAL50_Stef + PO4_B18_AR_FAL50_Stef) / 9.
EXECUTE.


/* =========================================================.
/* Sample-specific - surface laplacian - averaging over 2 chans - FAL50
/* =========================================================.

COMPUTE SL_FAL50_SLAvg2_B13=(POz_B13_SL_FAL50_SS + Oz_B13_SL_FAL50_SS) / 2.
EXECUTE.

COMPUTE SL_FAL50_SLAvg2_B14=(POz_B14_SL_FAL50_SS + Oz_B14_SL_FAL50_SS) / 2.
EXECUTE.

COMPUTE SL_FAL50_SLAvg2_B15=(POz_B15_SL_FAL50_SS + Oz_B15_SL_FAL50_SS) / 2.
EXECUTE.

COMPUTE SL_FAL50_SLAvg2_B16=(POz_B16_SL_FAL50_SS + Oz_B16_SL_FAL50_SS) / 2.
EXECUTE.

COMPUTE SL_FAL50_SLAvg2_B17=(POz_B17_SL_FAL50_SS + Oz_B17_SL_FAL50_SS) / 2.
EXECUTE.

COMPUTE SL_FAL50_SLAvg2_B18=(POz_B18_SL_FAL50_SS + Oz_B18_SL_FAL50_SS) / 2.
EXECUTE.

/* ====================================================================.
/* ====================================================================.
/* SEM - Stefanics  - average reference - averaging over 9 chans - SAA, 1st 12 conds
/* ====================================================================.
/* ====================================================================.

COMPUTE AR_SEM_SAA_StefAvg9_B1=(P3_B1_AR_SEM_Stef + Pz_B1_AR_SEM_Stef + P4_B1_AR_SEM_Stef + 
    O1_B1_AR_SEM_Stef + Oz_B1_AR_SEM_Stef + O2_B1_AR_SEM_Stef + 
    PO3_B1_AR_SEM_Stef + POz_B1_AR_SEM_Stef + PO4_B1_AR_SEM_Stef)/9.
EXECUTE.

COMPUTE AR_SEM_SAA_StefAvg9_B2=(P3_B2_AR_SEM_Stef + Pz_B2_AR_SEM_Stef + 
P4_B2_AR_SEM_Stef + O1_B2_AR_SEM_Stef + Oz_B2_AR_SEM_Stef + O2_B2_AR_SEM_Stef + 
PO3_B2_AR_SEM_Stef + POz_B2_AR_SEM_Stef + PO4_B2_AR_SEM_Stef)/9.
EXECUTE.

COMPUTE AR_SEM_SAA_StefAvg9_B3=(P3_B3_AR_SEM_Stef + Pz_B3_AR_SEM_Stef + P4_B3_AR_SEM_Stef + 
O1_B3_AR_SEM_Stef + Oz_B3_AR_SEM_Stef + O2_B3_AR_SEM_Stef + PO3_B3_AR_SEM_Stef + 
POz_B3_AR_SEM_Stef + PO4_B3_AR_SEM_Stef)/9.
EXECUTE.

COMPUTE AR_SEM_SAA_StefAvg9_B4=(P3_B4_AR_SEM_Stef + Pz_B4_AR_SEM_Stef + P4_B4_AR_SEM_Stef + 
O1_B4_AR_SEM_Stef + Oz_B4_AR_SEM_Stef + O2_B4_AR_SEM_Stef + PO3_B4_AR_SEM_Stef + 
POz_B4_AR_SEM_Stef + PO4_B4_AR_SEM_Stef)/9.
EXECUTE.

COMPUTE AR_SEM_SAA_StefAvg9_B5=(P3_B5_AR_SEM_Stef + Pz_B5_AR_SEM_Stef + P4_B5_AR_SEM_Stef 
+ O1_B5_AR_SEM_Stef + Oz_B5_AR_SEM_Stef + O2_B5_AR_SEM_Stef + PO3_B5_AR_SEM_Stef + 
POz_B5_AR_SEM_Stef + PO4_B5_AR_SEM_Stef)/9.
EXECUTE.

COMPUTE AR_SEM_SAA_StefAvg9_B6=(P3_B6_AR_SEM_Stef + Pz_B6_AR_SEM_Stef + P4_B6_AR_SEM_Stef + 
O1_B6_AR_SEM_Stef + Oz_B6_AR_SEM_Stef + O2_B6_AR_SEM_Stef + PO3_B6_AR_SEM_Stef + 
POz_B6_AR_SEM_Stef + PO4_B6_AR_SEM_Stef)/9.
EXECUTE.

COMPUTE AR_SEM_SAA_StefAvg9_B7=(P3_B7_AR_SEM_Stef + Pz_B7_AR_SEM_Stef + P4_B7_AR_SEM_Stef + 
O1_B7_AR_SEM_Stef + Oz_B7_AR_SEM_Stef + O2_B7_AR_SEM_Stef + PO3_B7_AR_SEM_Stef + 
POz_B7_AR_SEM_Stef + PO4_B7_AR_SEM_Stef)/9.
EXECUTE.

COMPUTE AR_SEM_SAA_StefAvg9_B8=(P3_B8_AR_SEM_Stef + Pz_B8_AR_SEM_Stef + P4_B8_AR_SEM_Stef 
+ O1_B8_AR_SEM_Stef + Oz_B8_AR_SEM_Stef + O2_B8_AR_SEM_Stef + PO3_B8_AR_SEM_Stef + 
POz_B8_AR_SEM_Stef + PO4_B8_AR_SEM_Stef)/9.
EXECUTE.

COMPUTE AR_SEM_SAA_StefAvg9_B9=(P3_B9_AR_SEM_Stef + Pz_B9_AR_SEM_Stef + P4_B9_AR_SEM_Stef + 
O1_B9_AR_SEM_Stef + Oz_B9_AR_SEM_Stef + O2_B9_AR_SEM_Stef + PO3_B9_AR_SEM_Stef + 
POz_B9_AR_SEM_Stef + PO4_B9_AR_SEM_Stef)/9.
EXECUTE.

COMPUTE AR_SEM_SAA_StefAvg9_B10=(P3_B10_AR_SEM_Stef + Pz_B10_AR_SEM_Stef + P4_B10_AR_SEM_Stef + 
    O1_B10_AR_SEM_Stef + Oz_B10_AR_SEM_Stef + O2_B10_AR_SEM_Stef + PO3_B10_AR_SEM_Stef + 
    POz_B10_AR_SEM_Stef + PO4_B10_AR_SEM_Stef)/9.
EXECUTE.


COMPUTE AR_SEM_SAA_StefAvg9_B11=(P3_B11_AR_SEM_Stef + Pz_B11_AR_SEM_Stef + P4_B11_AR_SEM_Stef + 
    O1_B11_AR_SEM_Stef + Oz_B11_AR_SEM_Stef + O2_B11_AR_SEM_Stef + PO3_B11_AR_SEM_Stef + 
    POz_B11_AR_SEM_Stef + PO4_B11_AR_SEM_Stef)/9.
EXECUTE.

COMPUTE AR_SEM_SAA_StefAvg9_B12=(P3_B12_AR_SEM_Stef + Pz_B12_AR_SEM_Stef + P4_B12_AR_SEM_Stef + 
O1_B12_AR_SEM_Stef + Oz_B12_AR_SEM_Stef + O2_B12_AR_SEM_Stef + PO3_B12_AR_SEM_Stef + 
POz_B12_AR_SEM_Stef + PO4_B12_AR_SEM_Stef)/9.
EXECUTE.

