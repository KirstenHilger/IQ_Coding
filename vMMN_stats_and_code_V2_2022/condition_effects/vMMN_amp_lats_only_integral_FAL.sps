* Encoding: UTF-8.

/*=========================================================================================.
/* DESCRIPTIVE STATISTICS (all ERPs at electrode POz [maximal activity], pooling over red/green stimuli; avg ref).
/*=========================================================================================.

*/Start by identifying the cases with missing FAL values that will be exlcuded from ANOVAs.
 * /* Turns out there are two of the cases in the pooled simple/reverse ANOVA, and 3 *different* cases in the rule ANOVA.
 * /* Respectively, these are EKK13 and KDA22 in the pooled, and KSS11, CKE20, and CHA06 in the rule. 
 * MVA VARIABLES=BasicStd_1stpos_P3_AR_FAL50_Stef BasicStd_1stpos_Pz_AR_FAL50_Stef 
    BasicStd_1stpos_P4_AR_FAL50_Stef BasicStd_1stpos_PO3_AR_FAL50_Stef 
    BasicStd_1stpos_POz_AR_FAL50_Stef BasicStd_1stpos_PO4_AR_FAL50_Stef 
    BasicStd_1stpos_O1_AR_FAL50_Stef BasicStd_1stpos_Oz_AR_FAL50_Stef BasicStd_1stpos_O2_AR_FAL50_Stef 
    BasicStd_2ndpos_P3_AR_FAL50_Stef BasicStd_2ndpos_Pz_AR_FAL50_Stef BasicStd_2ndpos_P4_AR_FAL50_Stef 
    BasicStd_2ndpos_PO3_AR_FAL50_Stef BasicStd_2ndpos_POz_AR_FAL50_Stef 
    BasicStd_2ndpos_PO4_AR_FAL50_Stef BasicStd_2ndpos_O1_AR_FAL50_Stef BasicStd_2ndpos_Oz_AR_FAL50_Stef 
    BasicStd_2ndpos_O2_AR_FAL50_Stef BasicDev_1stpos_P3_AR_FAL50_Stef BasicDev_1stpos_Pz_AR_FAL50_Stef 
    BasicDev_1stpos_P4_AR_FAL50_Stef BasicDev_1stpos_PO3_AR_FAL50_Stef 
    BasicDev_1stpos_POz_AR_FAL50_Stef BasicDev_1stpos_PO4_AR_FAL50_Stef 
    BasicDev_1stpos_O1_AR_FAL50_Stef BasicDev_1stpos_Oz_AR_FAL50_Stef BasicDev_1stpos_O2_AR_FAL50_Stef 
    BasicDev_2ndpos_P3_AR_FAL50_Stef BasicDev_2ndpos_Pz_AR_FAL50_Stef BasicDev_2ndpos_P4_AR_FAL50_Stef 
    BasicDev_2ndpos_PO3_AR_FAL50_Stef BasicDev_2ndpos_POz_AR_FAL50_Stef 
    BasicDev_2ndpos_PO4_AR_FAL50_Stef BasicDev_2ndpos_O1_AR_FAL50_Stef BasicDev_2ndpos_Oz_AR_FAL50_Stef 
    BasicDev_2ndpos_O2_AR_FAL50_Stef RuleStd_2ndpos_P3_AR_FAL50_Stef RuleStd_2ndpos_Pz_AR_FAL50_Stef 
    RuleStd_2ndpos_P4_AR_FAL50_Stef RuleStd_2ndpos_PO3_AR_FAL50_Stef RuleStd_2ndpos_POz_AR_FAL50_Stef 
    RuleStd_2ndpos_PO4_AR_FAL50_Stef RuleStd_2ndpos_O1_AR_FAL50_Stef RuleStd_2ndpos_Oz_AR_FAL50_Stef 
    RuleStd_2ndpos_O2_AR_FAL50_Stef RuleDev_2ndpos_P3_AR_FAL50_Stef RuleDev_2ndpos_Pz_AR_FAL50_Stef 
    RuleDev_2ndpos_P4_AR_FAL50_Stef RuleDev_2ndpos_PO3_AR_FAL50_Stef RuleDev_2ndpos_POz_AR_FAL50_Stef 
    RuleDev_2ndpos_PO4_AR_FAL50_Stef RuleDev_2ndpos_O1_AR_FAL50_Stef RuleDev_2ndpos_Oz_AR_FAL50_Stef 
    RuleDev_2ndpos_O2_AR_FAL50_Stef 
  /ID=SID
  /MPATTERN.


/*Amplitudes (n = 50).
DESCRIPTIVES VARIABLES=BasicStd_1stpos_POz_AR_SAA_Stef BasicStd_2ndpos_POz_AR_SAA_Stef 
    BasicDev_1stpos_POz_AR_SAA_Stef BasicDev_2ndpos_POz_AR_SAA_Stef RuleStd_2ndpos_POz_AR_SAA_Stef 
    RuleDev_2ndpos_POz_AR_SAA_Stef
  /STATISTICS=MEAN STDDEV RANGE MIN MAX.

/* Exclude KDA22 and KSS11 for the pooled simple/reverse latency descriptives.
USE ALL.
COMPUTE filter_$=(MissingAnyPooledFAL = 0).
VARIABLE LABELS filter_$ 'MissingAnyPooledFAL = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.


/*Latencies for the n=48 with valid data in our ANOVA below.
DESCRIPTIVES VARIABLES=BasicStd_1stpos_POz_AR_FAL50_Stef BasicStd_2ndpos_POz_AR_FAL50_Stef 
    BasicDev_1stpos_POz_AR_FAL50_Stef BasicDev_2ndpos_POz_AR_FAL50_Stef    
  /STATISTICS=MEAN STDDEV RANGE MIN MAX.

/* select all cases.
FILTER OFF.
USE ALL.
EXECUTE.

/* exclude EKK13, CKE20 and CHA06 who have miissing Rule conditon FAL data. 
USE ALL.
COMPUTE filter_$=(MissingAnyRuleFAL = 0).
VARIABLE LABELS filter_$ 'MissingAnyRuleFAL = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.


DESCRIPTIVES VARIABLES=RuleStd_2ndpos_POz_AR_FAL50_Stef RuleDev_2ndpos_POz_AR_FAL50_Stef
  /STATISTICS=MEAN STDDEV MIN MAX.


 * DESCRIPTIVES VARIABLES=B1_good B2_good B3_good B4_good B5_good B6_good B7_good B8_good B9_good 
    B10_good B11_good B12_good B13_good B14_good B15_good B16_good B17_good B18_good B1_rej B2_rej 
    B3_rej B4_rej B5_rej B6_rej B7_rej B8_rej B9_rej B10_rej B11_rej B12_rej B13_rej B14_rej B15_rej 
    B16_rej B17_rej B18_rej
  /STATISTICS=MEAN STDDEV RANGE MIN MAX.

/* select all cases.
FILTER OFF.
USE ALL.
EXECUTE.

DESCRIPTIVES VARIABLES=MinGoodTrls MinPrctGoodTrls
  /STATISTICS=MEAN STDDEV RANGE MIN MAX.

DESCRIPTIVES VARIABLES=apm sex age IC RT
  /STATISTICS=MEAN STDDEV RANGE MIN MAX.

/*=========================================================================================.
/* AMPLITUDES.
/*====================================================.
/*  /* SIMPLE/REVERSE CONDITIONS (n = 50). .
/*====================================================.

/* This is the massive 4-way ANOVA with the main effects of interest.  
GLM BasicStd_1stpos_P3_AR_SAA_Stef BasicStd_1stpos_Pz_AR_SAA_Stef BasicStd_1stpos_P4_AR_SAA_Stef
    BasicStd_1stpos_PO3_AR_SAA_Stef BasicStd_1stpos_POz_AR_SAA_Stef BasicStd_1stpos_PO4_AR_SAA_Stef
    BasicStd_1stpos_O1_AR_SAA_Stef BasicStd_1stpos_Oz_AR_SAA_Stef BasicStd_1stpos_O2_AR_SAA_Stef
    BasicDev_1stpos_P3_AR_SAA_Stef BasicDev_1stpos_Pz_AR_SAA_Stef BasicDev_1stpos_P4_AR_SAA_Stef
    BasicDev_1stpos_PO3_AR_SAA_Stef BasicDev_1stpos_POz_AR_SAA_Stef BasicDev_1stpos_PO4_AR_SAA_Stef
    BasicDev_1stpos_O1_AR_SAA_Stef BasicDev_1stpos_Oz_AR_SAA_Stef BasicDev_1stpos_O2_AR_SAA_Stef
    BasicStd_2ndpos_P3_AR_SAA_Stef BasicStd_2ndpos_Pz_AR_SAA_Stef BasicStd_2ndpos_P4_AR_SAA_Stef
    BasicStd_2ndpos_PO3_AR_SAA_Stef BasicStd_2ndpos_POz_AR_SAA_Stef BasicStd_2ndpos_PO4_AR_SAA_Stef
    BasicStd_2ndpos_O1_AR_SAA_Stef BasicStd_2ndpos_Oz_AR_SAA_Stef BasicStd_2ndpos_O2_AR_SAA_Stef
    BasicDev_2ndpos_P3_AR_SAA_Stef BasicDev_2ndpos_Pz_AR_SAA_Stef BasicDev_2ndpos_P4_AR_SAA_Stef
    BasicDev_2ndpos_PO3_AR_SAA_Stef BasicDev_2ndpos_POz_AR_SAA_Stef BasicDev_2ndpos_PO4_AR_SAA_Stef
    BasicDev_2ndpos_O1_AR_SAA_Stef BasicDev_2ndpos_Oz_AR_SAA_Stef BasicDev_2ndpos_O2_AR_SAA_Stef
    /WSFACTOR=position 2 Polynomial deviance 2 Polynomial anteriority 3 Polynomial hemisphere 3
    Polynomial
    /METHOD=SSTYPE(3)
    /PLOT=PROFILE(Deviance*Anteriority Anteriority*Deviance Deviance*Hemisphere Hemisphere*Deviance) TYPE=LINE ERRORBAR=NO MEANREFERENCE=NO YAXIS=AUTO
    /EMMEANS=TABLES(OVERALL)
    /EMMEANS=TABLES(Deviance*Anteriority) COMPARE (Deviance) ADJ(BONFERRONI)
    /EMMEANS=TABLES(Deviance*Anteriority) COMPARE (Anteriority) ADJ(BONFERRONI)
    /EMMEANS=TABLES(Deviance*Hemisphere) COMPARE (Deviance) ADJ(BONFERRONI)
    /EMMEANS=TABLES(Deviance*Hemisphere) COMPARE (Hemisphere) ADJ(BONFERRONI)
    /PRINT=DESCRIPTIVE ETASQ
    /CRITERIA=ALPHA(.05)
    /WSDESIGN=position deviance anteriority hemisphere position*deviance position*anteriority
    deviance*anteriority position*deviance*anteriority position*hemisphere deviance*hemisphere
    position*deviance*hemisphere anteriority*hemisphere position*anteriority*hemisphere
    deviance*anteriority*hemisphere position*deviance*anteriority*hemisphere.

/*=========================================================================================================.
/* To decompose the intxn of POS, ANT, and HEM we need to average over levels of DEVIANCE
/* and examined the efects of ANT and HEM at each position. 
/*=========================================================================================================.
/*==========================================================.
/* New vars averaging over Deviance. 
/*==========================================================.

 * COMPUTE Basic_1stpos_P3_AR_SAA=(BasicStd_1stpos_P3_AR_SAA_Stef + BasicDev_1stpos_P3_AR_SAA_Stef)/2.
 * EXECUTE.

 * COMPUTE Basic_1stpos_Pz_AR_SAA=(BasicStd_1stpos_Pz_AR_SAA_Stef + BasicDev_1stpos_Pz_AR_SAA_Stef)/2.
 * EXECUTE.

 * COMPUTE Basic_1stpos_P4_AR_SAA=(BasicStd_1stpos_P4_AR_SAA_Stef + BasicDev_1stpos_P4_AR_SAA_Stef)/2.
 * EXECUTE.

 * COMPUTE Basic_1stpos_PO3_AR_SAA=(BasicStd_1stpos_PO3_AR_SAA_Stef + BasicDev_1stpos_PO3_AR_SAA_Stef)/2.
 * EXECUTE.

 * COMPUTE Basic_1stpos_POz_AR_SAA=(BasicStd_1stpos_POz_AR_SAA_Stef + BasicDev_1stpos_POz_AR_SAA_Stef)/2.
 * EXECUTE.

 * COMPUTE Basic_1stpos_PO4_AR_SAA=(BasicStd_1stpos_PO4_AR_SAA_Stef + BasicDev_1stpos_PO4_AR_SAA_Stef)/2.
 * EXECUTE.

 * COMPUTE Basic_1stpos_O1_AR_SAA=(BasicStd_1stpos_O1_AR_SAA_Stef + BasicDev_1stpos_O1_AR_SAA_Stef)/2.
 * EXECUTE.

 * COMPUTE Basic_1stpos_Oz_AR_SAA=(BasicStd_1stpos_Oz_AR_SAA_Stef + BasicDev_1stpos_Oz_AR_SAA_Stef)/2.
 * EXECUTE.

 * COMPUTE Basic_1stpos_O2_AR_SAA=(BasicStd_1stpos_O2_AR_SAA_Stef + BasicDev_1stpos_O2_AR_SAA_Stef)/2.
 * EXECUTE.

 * /* Second-position stim.
 * COMPUTE Basic_2ndpos_P3_AR_SAA=(BasicStd_2ndpos_P3_AR_SAA_Stef + BasicDev_2ndpos_P3_AR_SAA_Stef)/2.
 * EXECUTE.

 * COMPUTE Basic_2ndpos_Pz_AR_SAA=(BasicStd_2ndpos_Pz_AR_SAA_Stef + BasicDev_2ndpos_Pz_AR_SAA_Stef)/2.
 * EXECUTE.

 * COMPUTE Basic_2ndpos_P4_AR_SAA=(BasicStd_2ndpos_P4_AR_SAA_Stef + BasicDev_2ndpos_P4_AR_SAA_Stef)/2.
 * EXECUTE.

 * COMPUTE Basic_2ndpos_PO3_AR_SAA=(BasicStd_2ndpos_PO3_AR_SAA_Stef + BasicDev_2ndpos_PO3_AR_SAA_Stef)/2.
 * EXECUTE.

 * COMPUTE Basic_2ndpos_POz_AR_SAA=(BasicStd_2ndpos_POz_AR_SAA_Stef + BasicDev_2ndpos_POz_AR_SAA_Stef)/2.
 * EXECUTE.

 * COMPUTE Basic_2ndpos_PO4_AR_SAA=(BasicStd_2ndpos_PO4_AR_SAA_Stef + BasicDev_2ndpos_PO4_AR_SAA_Stef)/2.
 * EXECUTE.

 * COMPUTE Basic_2ndpos_O1_AR_SAA=(BasicStd_2ndpos_O1_AR_SAA_Stef + BasicDev_2ndpos_O1_AR_SAA_Stef)/2.
 * EXECUTE.

 * COMPUTE Basic_2ndpos_Oz_AR_SAA=(BasicStd_2ndpos_Oz_AR_SAA_Stef + BasicDev_2ndpos_Oz_AR_SAA_Stef)/2.
 * EXECUTE.

 * COMPUTE Basic_2ndpos_O2_AR_SAA=(BasicStd_2ndpos_O2_AR_SAA_Stef + BasicDev_2ndpos_O2_AR_SAA_Stef)/2.
 * EXECUTE.
/*==========================================================.

/* Effect of Hemisphere and Anteriority in first-position stimuli.
GLM Basic_1stpos_P3_AR_SAA Basic_1stpos_Pz_AR_SAA Basic_1stpos_P4_AR_SAA Basic_1stpos_PO3_AR_SAA 
    Basic_1stpos_POz_AR_SAA Basic_1stpos_PO4_AR_SAA Basic_1stpos_O1_AR_SAA Basic_1stpos_Oz_AR_SAA 
    Basic_1stpos_O2_AR_SAA
  /WSFACTOR=Ant_pos1 3 Polynomial Hem_pos1 3 Polynomial 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(Ant_pos1*Hem_pos1 Hem_pos1*Ant_pos1) TYPE=LINE ERRORBAR=NO MEANREFERENCE=NO YAXIS=AUTO
  /EMMEANS=TABLES(Ant_pos1*Hem_pos1) COMPARE (Ant_pos1) ADJ(BONFERRONI)
    /EMMEANS=TABLES(Ant_pos1*Hem_pos1) COMPARE (Hem_pos1) ADJ(BONFERRONI)
  /PRINT=DESCRIPTIVE ETASQ 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Ant_pos1 Hem_pos1 Ant_pos1*Hem_pos1.


/* Effect of Hemisphere and Anteriority in second-position stimuli.
GLM Basic_2ndpos_P3_AR_SAA Basic_2ndpos_Pz_AR_SAA Basic_2ndpos_P4_AR_SAA Basic_2ndpos_PO3_AR_SAA 
    Basic_2ndpos_POz_AR_SAA Basic_2ndpos_PO4_AR_SAA Basic_2ndpos_O1_AR_SAA Basic_2ndpos_Oz_AR_SAA 
    Basic_2ndpos_O2_AR_SAA
  /WSFACTOR=Ant_pos2 3 Polynomial Hem_pos2 3 Polynomial 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(Ant_pos2*Hem_pos2 Hem_pos2*Ant_pos2) TYPE=LINE ERRORBAR=NO MEANREFERENCE=NO YAXIS=AUTO
  /EMMEANS=TABLES(Ant_pos2*Hem_pos2) COMPARE (Ant_pos2) ADJ(BONFERRONI)
    /EMMEANS=TABLES(Ant_pos2*Hem_pos2) COMPARE (Hem_pos2) ADJ(BONFERRONI)
  /PRINT=DESCRIPTIVE ETASQ 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Ant_pos2 Hem_pos2 Ant_pos2*Hem_pos2.


 * /* Paired t-tests comparing hem at each level of anteriority.
/* [Good for understanding the effect but based on the wrong standard error].
 * T-TEST PAIRS=Basic_2ndpos_POz_AR_SAA Basic_2ndpos_POz_AR_SAA Basic_2ndpos_Pz_AR_SAA 
    Basic_2ndpos_Pz_AR_SAA Basic_2ndpos_Oz_AR_SAA Basic_2ndpos_Oz_AR_SAA WITH Basic_2ndpos_PO3_AR_SAA 
    Basic_2ndpos_PO4_AR_SAA Basic_2ndpos_P3_AR_SAA Basic_2ndpos_P4_AR_SAA Basic_2ndpos_O1_AR_SAA 
    Basic_2ndpos_O2_AR_SAA (PAIRED)
  /CRITERIA=CI(.9500)
  /MISSING=ANALYSIS.

/*=====================================================================================.
/* RULE CONDITION. (no main effects or intxns with deviance are sig. :(   (n = 50).
/*=====================================================================================.

/* Full model tests main effects of deviance, anteriority, and hem, plus intxns.
GLM RuleStd_2ndpos_P3_AR_SAA_Stef RuleStd_2ndpos_Pz_AR_SAA_Stef RuleStd_2ndpos_P4_AR_SAA_Stef 
    RuleStd_2ndpos_PO3_AR_SAA_Stef RuleStd_2ndpos_POz_AR_SAA_Stef RuleStd_2ndpos_PO4_AR_SAA_Stef 
    RuleStd_2ndpos_O1_AR_SAA_Stef RuleStd_2ndpos_Oz_AR_SAA_Stef RuleStd_2ndpos_O2_AR_SAA_Stef 
    RuleDev_2ndpos_P3_AR_SAA_Stef RuleDev_2ndpos_Pz_AR_SAA_Stef RuleDev_2ndpos_P4_AR_SAA_Stef 
    RuleDev_2ndpos_PO3_AR_SAA_Stef RuleDev_2ndpos_POz_AR_SAA_Stef RuleDev_2ndpos_PO4_AR_SAA_Stef 
    RuleDev_2ndpos_O1_AR_SAA_Stef RuleDev_2ndpos_Oz_AR_SAA_Stef RuleDev_2ndpos_O2_AR_SAA_Stef
  /WSFACTOR=deviance 2 Polynomial anteriority 3 Polynomial hemisphere 3 Polynomial 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(anteriority*hemisphere) TYPE=LINE ERRORBAR=NO MEANREFERENCE=NO YAXIS=AUTO
  /EMMEANS=TABLES(hemisphere*anteriority) COMPARE (hemisphere) ADJ(BONFERRONI)
  /EMMEANS=TABLES(anteriority*hemisphere) COMPARE (anteriority) ADJ(BONFERRONI)
  /PRINT=DESCRIPTIVE ETASQ 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=deviance anteriority hemisphere deviance*anteriority deviance*hemisphere anteriority*hemisphere 
    deviance*anteriority*hemisphere.

/*=======================================================================.
/*Compute new Rule variables to collapse over irrelevant dimension of stimulus type.

 * COMPUTE Rule_2ndpos_All_P3_AR_SAA=(RuleStd_2ndpos_P3_AR_SAA_Stef + RuleDev_2ndpos_P3_AR_SAA_Stef) /  2.
 * EXECUTE.
 * COMPUTE Rule_2ndpos_All_Pz_AR_SAA=(RuleStd_2ndpos_Pz_AR_SAA_Stef + RuleDev_2ndpos_Pz_AR_SAA_Stef) /  2.
 * EXECUTE.
 * COMPUTE Rule_2ndpos_All_P4_AR_SAA=(RuleStd_2ndpos_P4_AR_SAA_Stef + RuleDev_2ndpos_P4_AR_SAA_Stef) /  2.
 * EXECUTE.

 * COMPUTE Rule_2ndpos_All_PO3_AR_SAA=(RuleStd_2ndpos_PO3_AR_SAA_Stef + RuleDev_2ndpos_PO3_AR_SAA_Stef) /  2.
 * EXECUTE.
 * COMPUTE Rule_2ndpos_All_POz_AR_SAA=(RuleStd_2ndpos_POz_AR_SAA_Stef + RuleDev_2ndpos_POz_AR_SAA_Stef) /  2.
 * EXECUTE.
 * COMPUTE Rule_2ndpos_All_PO4_AR_SAA=(RuleStd_2ndpos_PO4_AR_SAA_Stef + RuleDev_2ndpos_PO4_AR_SAA_Stef) /  2.
 * EXECUTE.


 * COMPUTE Rule_2ndpos_All_O1_AR_SAA=(RuleStd_2ndpos_O1_AR_SAA_Stef + RuleDev_2ndpos_O1_AR_SAA_Stef) /  2.
 * EXECUTE.
 * COMPUTE Rule_2ndpos_All_Oz_AR_SAA=(RuleStd_2ndpos_Oz_AR_SAA_Stef + RuleDev_2ndpos_Oz_AR_SAA_Stef) /  2.
 * EXECUTE.
 * COMPUTE Rule_2ndpos_All_O2_AR_SAA=(RuleStd_2ndpos_O2_AR_SAA_Stef + RuleDev_2ndpos_O2_AR_SAA_Stef) /  2.
 * EXECUTE.


/* Intxn should reflect the diff in t-values btwn POz and PO3/PO4 vs. same comparisons for Pz and Oz.
/* Relevant MSe from the anteriority by hem intxn is .016 from the above ANOVA.
T-TEST PAIRS=Rule_2ndpos_All_POz_AR_SAA Rule_2ndpos_All_POz_AR_SAA Rule_2ndpos_All_Pz_AR_SAA 
    Rule_2ndpos_All_Pz_AR_SAA Rule_2ndpos_All_Oz_AR_SAA Rule_2ndpos_All_Oz_AR_SAA WITH 
    Rule_2ndpos_All_PO3_AR_SAA Rule_2ndpos_All_PO4_AR_SAA Rule_2ndpos_All_P3_AR_SAA 
    Rule_2ndpos_All_P4_AR_SAA Rule_2ndpos_All_O1_AR_SAA Rule_2ndpos_All_O2_AR_SAA (PAIRED)
  /CRITERIA=CI(.9500)
  /MISSING=ANALYSIS.

/*=====================================================================================.
/*=====================================================================================.
/* LATENCIES.
/*=====================================================================================.
/*=====================================================================================.

/* SIMPLE/REVERSE CONDITIONS; (n = 48). 
GLM BasicStd_1stpos_P3_AR_FAL50_Stef BasicStd_1stpos_Pz_AR_FAL50_Stef BasicStd_1stpos_P4_AR_FAL50_Stef 
    BasicStd_1stpos_PO3_AR_FAL50_Stef BasicStd_1stpos_POz_AR_FAL50_Stef BasicStd_1stpos_PO4_AR_FAL50_Stef 
    BasicStd_1stpos_O1_AR_FAL50_Stef BasicStd_1stpos_Oz_AR_FAL50_Stef BasicStd_1stpos_O2_AR_FAL50_Stef 
    BasicDev_1stpos_P3_AR_FAL50_Stef BasicDev_1stpos_Pz_AR_FAL50_Stef BasicDev_1stpos_P4_AR_FAL50_Stef 
    BasicDev_1stpos_PO3_AR_FAL50_Stef BasicDev_1stpos_POz_AR_FAL50_Stef BasicDev_1stpos_PO4_AR_FAL50_Stef 
    BasicDev_1stpos_O1_AR_FAL50_Stef BasicDev_1stpos_Oz_AR_FAL50_Stef BasicDev_1stpos_O2_AR_FAL50_Stef 
    BasicStd_2ndpos_P3_AR_FAL50_Stef BasicStd_2ndpos_Pz_AR_FAL50_Stef BasicStd_2ndpos_P4_AR_FAL50_Stef 
    BasicStd_2ndpos_PO3_AR_FAL50_Stef BasicStd_2ndpos_POz_AR_FAL50_Stef BasicStd_2ndpos_PO4_AR_FAL50_Stef 
    BasicStd_2ndpos_O1_AR_FAL50_Stef BasicStd_2ndpos_Oz_AR_FAL50_Stef BasicStd_2ndpos_O2_AR_FAL50_Stef 
    BasicDev_2ndpos_P3_AR_FAL50_Stef BasicDev_2ndpos_Pz_AR_FAL50_Stef BasicDev_2ndpos_P4_AR_FAL50_Stef 
    BasicDev_2ndpos_PO3_AR_FAL50_Stef BasicDev_2ndpos_POz_AR_FAL50_Stef BasicDev_2ndpos_PO4_AR_FAL50_Stef 
    BasicDev_2ndpos_O1_AR_FAL50_Stef BasicDev_2ndpos_Oz_AR_FAL50_Stef BasicDev_2ndpos_O2_AR_FAL50_Stef
  /WSFACTOR=position 2 Polynomial deviance 2 Polynomial anteriority 3 Polynomial hemisphere 3 
    Polynomial 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(position*deviance position*hemisphere anteriority*hemisphere hemisphere*anteriority) 
    TYPE=LINE ERRORBAR=NO MEANREFERENCE=NO
  /EMMEANS=TABLES(position*deviance) COMPARE(position) ADJ(BONFERRONI)
    /EMMEANS=TABLES(position*deviance) COMPARE(deviance) ADJ(BONFERRONI)
  /EMMEANS=TABLES(position*hemisphere) COMPARE(position) ADJ(BONFERRONI)
    /EMMEANS=TABLES(position*hemisphere) COMPARE(hemisphere) ADJ(BONFERRONI)
    /EMMEANS=TABLES(anteriority*hemisphere) COMPARE(hemisphere) ADJ(BONFERRONI)    
    /EMMEANS=TABLES(anteriority*hemisphere) COMPARE(anteriority) ADJ(BONFERRONI)    
  /PRINT=DESCRIPTIVE ETASQ 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=position deviance anteriority hemisphere position*deviance position*anteriority 
    deviance*anteriority position*deviance*anteriority position*hemisphere deviance*hemisphere 
    position*deviance*hemisphere anteriority*hemisphere position*anteriority*hemisphere 
    deviance*anteriority*hemisphere position*deviance*anteriority*hemisphere.

/*=====================================================================================.
/*=====================================================================================.

/* RULE CONDITION  (n = 47).
GLM RuleStd_2ndpos_P3_AR_FAL50_Stef RuleStd_2ndpos_Pz_AR_FAL50_Stef RuleStd_2ndpos_P4_AR_FAL50_Stef 
    RuleStd_2ndpos_PO3_AR_FAL50_Stef RuleStd_2ndpos_POz_AR_FAL50_Stef RuleStd_2ndpos_PO4_AR_FAL50_Stef 
    RuleStd_2ndpos_O1_AR_FAL50_Stef RuleStd_2ndpos_Oz_AR_FAL50_Stef RuleStd_2ndpos_O2_AR_FAL50_Stef 
    RuleDev_2ndpos_P3_AR_FAL50_Stef RuleDev_2ndpos_Pz_AR_FAL50_Stef RuleDev_2ndpos_P4_AR_FAL50_Stef 
    RuleDev_2ndpos_PO3_AR_FAL50_Stef RuleDev_2ndpos_POz_AR_FAL50_Stef RuleDev_2ndpos_PO4_AR_FAL50_Stef 
    RuleDev_2ndpos_O1_AR_FAL50_Stef RuleDev_2ndpos_Oz_AR_FAL50_Stef RuleDev_2ndpos_O2_AR_FAL50_Stef
  /WSFACTOR=deviance 2 Polynomial anteriority 3 Polynomial hemisphere 3 Polynomial 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(deviance*anteriority*hemisphere) TYPE=LINE ERRORBAR=NO MEANREFERENCE=NO YAXIS=AUTO
    /PLOT=PROFILE(anteriority*hemisphere*deviance) TYPE=LINE ERRORBAR=NO MEANREFERENCE=NO YAXIS=AUTO
      /PLOT=PROFILE(deviance*hemisphere*anteriority) TYPE=LINE ERRORBAR=NO MEANREFERENCE=NO YAXIS=AUTO
  /EMMEANS=TABLES(hemisphere) COMPARE ADJ(BONFERRONI)
  /PRINT=DESCRIPTIVE ETASQ 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=deviance anteriority hemisphere deviance*anteriority deviance*hemisphere anteriority*hemisphere 
    deviance*anteriority*hemisphere.


/* exclude EKK13, CKE20 and CHA06 who have miissing Rule conditon FAL data. 
USE ALL.
COMPUTE filter_$=(MissingAnyRuleFAL = 0).
VARIABLE LABELS filter_$ 'MissingAnyRuleFAL = 0 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.


/* 2-way examining the inxtn of Ant and Hem at Std stimuli.
GLM RuleStd_2ndpos_P3_AR_FAL50_Stef RuleStd_2ndpos_Pz_AR_FAL50_Stef RuleStd_2ndpos_P4_AR_FAL50_Stef 
    RuleStd_2ndpos_PO3_AR_FAL50_Stef RuleStd_2ndpos_POz_AR_FAL50_Stef RuleStd_2ndpos_PO4_AR_FAL50_Stef 
    RuleStd_2ndpos_O1_AR_FAL50_Stef RuleStd_2ndpos_Oz_AR_FAL50_Stef RuleStd_2ndpos_O2_AR_FAL50_Stef
  /WSFACTOR=Ant_std 3 Polynomial Hem_Std 3 Polynomial 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(Ant_Std*Hem_std) TYPE=LINE ERRORBAR=NO MEANREFERENCE=NO YAXIS=AUTO
  /EMMEANS=TABLES(Hem_std*Ant_Std) 
  /PRINT=DESCRIPTIVE ETASQ 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Hem_std Ant_Std Hem_std*Ant_Std.

/* 2-way examining the inxtn of Ant and Hem at Deviant stimuli.
GLM RuleDev_2ndpos_P3_AR_FAL50_Stef RuleDev_2ndpos_Pz_AR_FAL50_Stef RuleDev_2ndpos_P4_AR_FAL50_Stef 
    RuleDev_2ndpos_PO3_AR_FAL50_Stef RuleDev_2ndpos_POz_AR_FAL50_Stef RuleDev_2ndpos_PO4_AR_FAL50_Stef 
    RuleDev_2ndpos_O1_AR_FAL50_Stef RuleDev_2ndpos_Oz_AR_FAL50_Stef RuleDev_2ndpos_O2_AR_FAL50_Stef
  /WSFACTOR=Ant_dev 3 Polynomial Hem_dev 3 Polynomial 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(Ant_dev*Hem_dev) TYPE=LINE ERRORBAR=NO MEANREFERENCE=NO YAXIS=AUTO
  /EMMEANS=TABLES(Ant_dev*Hem_dev) 
  /PRINT=DESCRIPTIVE ETASQ 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Hem_dev Ant_dev Ant_dev*Hem_dev.

/*==========================================================================.
/* These are for exploring the effects quickly. T-tests using pooled SEs are in the excel file.
/*==========================================================================.

/* compare the diference between Pz/P3 and Pz/P4 at each level of deviance.
T-TEST PAIRS=RuleStd_2ndpos_Pz_AR_FAL50_Stef RuleStd_2ndpos_Pz_AR_FAL50_Stef 
    RuleDev_2ndpos_Pz_AR_FAL50_Stef RuleDev_2ndpos_Pz_AR_FAL50_Stef WITH 
    RuleStd_2ndpos_P3_AR_FAL50_Stef RuleStd_2ndpos_P4_AR_FAL50_Stef RuleDev_2ndpos_P3_AR_FAL50_Stef 
    RuleDev_2ndpos_P4_AR_FAL50_Stef (PAIRED)
  /CRITERIA=CI(.9500)
  /MISSING=ANALYSIS.

/* compare the diference between POz/PO3 and POz/PO4 at each level of deviance.
T-TEST PAIRS=RuleStd_2ndpos_POz_AR_FAL50_Stef RuleStd_2ndpos_POz_AR_FAL50_Stef 
    RuleDev_2ndpos_POz_AR_FAL50_Stef RuleDev_2ndpos_POz_AR_FAL50_Stef WITH 
    RuleStd_2ndpos_PO3_AR_FAL50_Stef RuleStd_2ndpos_PO4_AR_FAL50_Stef RuleDev_2ndpos_PO3_AR_FAL50_Stef 
    RuleDev_2ndpos_PO4_AR_FAL50_Stef (PAIRED)
  /CRITERIA=CI(.9500)
  /MISSING=ANALYSIS.

/* compare the diference between Oz/O1 and Oz/O2 at each level of deviance.
T-TEST PAIRS=RuleStd_2ndpos_Oz_AR_FAL50_Stef RuleStd_2ndpos_Oz_AR_FAL50_Stef 
    RuleDev_2ndpos_Oz_AR_FAL50_Stef RuleDev_2ndpos_Oz_AR_FAL50_Stef WITH 
    RuleStd_2ndpos_O1_AR_FAL50_Stef RuleStd_2ndpos_O2_AR_FAL50_Stef RuleDev_2ndpos_O1_AR_FAL50_Stef 
    RuleDev_2ndpos_O2_AR_FAL50_Stef (PAIRED)
  /CRITERIA=CI(.9500)
  /MISSING=ANALYSIS.

T-TEST PAIRS=RuleStd_2ndpos_POz_AR_FAL50_Stef RuleStd_2ndpos_POz_AR_FAL50_Stef 
    RuleDev_2ndpos_POz_AR_FAL50_Stef RuleDev_2ndpos_POz_AR_FAL50_Stef WITH 
    RuleStd_2ndpos_Pz_AR_FAL50_Stef RuleStd_2ndpos_Oz_AR_FAL50_Stef RuleDev_2ndpos_Pz_AR_FAL50_Stef 
    RuleDev_2ndpos_Oz_AR_FAL50_Stef (PAIRED)
  /CRITERIA=CI(.9500)
  /MISSING=ANALYSIS.

T-TEST PAIRS=RuleStd_2ndpos_POz_AR_FAL50_Stef RuleStd_2ndpos_POz_AR_FAL50_Stef 
    RuleStd_2ndpos_Pz_AR_FAL50_Stef RuleDev_2ndpos_POz_AR_FAL50_Stef RuleDev_2ndpos_POz_AR_FAL50_Stef 
    RuleDev_2ndpos_Pz_AR_FAL50_Stef WITH RuleStd_2ndpos_Pz_AR_FAL50_Stef 
    RuleStd_2ndpos_Oz_AR_FAL50_Stef RuleStd_2ndpos_Oz_AR_FAL50_Stef RuleDev_2ndpos_Pz_AR_FAL50_Stef 
    RuleDev_2ndpos_Oz_AR_FAL50_Stef RuleDev_2ndpos_Oz_AR_FAL50_Stef (PAIRED)
  /CRITERIA=CI(.9500)
  /MISSING=ANALYSIS.

T-TEST PAIRS=RuleStd_2ndpos_P3_AR_FAL50_Stef RuleStd_2ndpos_P3_AR_FAL50_Stef 
    RuleStd_2ndpos_Pz_AR_FAL50_Stef RuleDev_2ndpos_P3_AR_FAL50_Stef RuleDev_2ndpos_P3_AR_FAL50_Stef 
    RuleDev_2ndpos_Pz_AR_FAL50_Stef WITH RuleStd_2ndpos_P4_AR_FAL50_Stef 
    RuleStd_2ndpos_Pz_AR_FAL50_Stef RuleStd_2ndpos_P4_AR_FAL50_Stef RuleDev_2ndpos_P4_AR_FAL50_Stef 
    RuleDev_2ndpos_Pz_AR_FAL50_Stef RuleDev_2ndpos_P4_AR_FAL50_Stef (PAIRED)
  /CRITERIA=CI(.9500)
  /MISSING=ANALYSIS.

T-TEST PAIRS=RuleStd_2ndpos_PO3_AR_FAL50_Stef RuleDev_2ndpos_PO3_AR_FAL50_Stef WITH 
    RuleStd_2ndpos_PO4_AR_FAL50_Stef RuleDev_2ndpos_PO4_AR_FAL50_Stef (PAIRED)
  /CRITERIA=CI(.9500)
  /MISSING=ANALYSIS.


