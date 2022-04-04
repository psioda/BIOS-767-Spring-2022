*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Process data from the Schizophrenia Study;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       schizophrenia-data-visualization.sas                                   
*  LANGUAGE:       SAS, VERSION 9.4                                  
*                                                                   
*  NAME:           Matthew Psioda                               
*  DATE COMPLETE:  2020-12-30                                           
*-------------------------------------------------------------------
*                                                                   
*  Modification History:       
*                                                                                                                         
*  NAME:                         << Insert Name of Primary Programmer >>                               
*  DATE COMPLETE:                << YYYY-MM-DD >>   
*  DESCRIPTION OF MODIFICATION:  << Please insert 2-3 sentences >>                                                               
********************************************************************;
%include "C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767\SAS-MACROS\SETUP.SAS";
%setup(SCHIZOPHRENIA-DATA-VISUALIZATION,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767);

ods html close;
ods html newfile=none;





proc sort data = dat2.schiz out = temp;
 by trt week;
run;
proc freq data = temp noprint;
	by trt week;
	table modWorse / out = dist;
run;



data plotData;
 set dist;
 where week in (0,1,3,6) and modWorse = 1;

 p        = percent / 100;
 logOdds  = log(p/(1-p));
 sqrtweek = sqrt(week);
run;

proc format;
 value trt
  0 = 'Placebo'
  1 = 'Active';
run;

proc sgplot data = plotData;
 series x=week y=logOdds / markers group = trt markerattrs=(symbol=circleFilled);
 label logOdds = 'log(Odds)';
 label week = 'Time (Weeks)';
 label trt = 'Treatment Group';
 format trt trt.;
run;


proc sgplot data = plotData;
 series x=sqrtweek y=logOdds / markers group = trt markerattrs=(symbol=circleFilled);
 label logOdds = 'log(Odds)';
 label sqrtweek = 'Time (sqrt[Weeks])';
 label trt = 'Treatment Group';
 format trt trt.;
run;
