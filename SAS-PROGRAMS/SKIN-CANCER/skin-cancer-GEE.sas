*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Analyze data from the Skin Cancer Trial;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       skin-cancer-GEE.sas                                   
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
%setup(SKIN-CANCER-GEE,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767);



ods html newfile=proc;
proc genmod data=dat2.skincancer descending;
class id cYear;
model newcancer=treatment year treatment*year agecent skin 
           gender exposure exposure*exposure/d=bin ;
repeated subject=id/withinsubject= cYear logor=fullclust ;
/* gives generalized score statistic for testing treatment effect */
contrast 'treatment effect' treatment 1 , treatment*year 1 /e;
contrast 'exposure' exposure 1 , exposure*exposure 1/e;
output out = estimates p=estMean lower=lowEstMean upper=highEstMean;

run;

/*** make plot for notes ***/
data PlotData;
 set estimates;
 where treatment = 0 and skin = 0 and  gender=0 and exposure in (1,2,5);
run; 

proc sort data = PlotData nodupkey; by exposure year; run;

proc sgplot data = PlotData;
 label year = 'Year' exposure='Exposure' highEstMean = 'Estimated Probability';
 series x=year y=estMean / markers group=exposure markerattrs=(symbol=circleFilled);
 highlow x=year low=lowEstMean high=highEstMean / group=exposure highcap=serif lowcap=serif;
 yaxis values=(0.00 to 0.25 by 0.05);
run;


/*** Modeling count data ***/
proc genmod data=dat2.skincancer;
class id cYear;
model newcancer(event='1')=
  treatment year treatment*year agecent skin 
  gender exposure exposure*exposure / d=poisson link=log;
	repeated subject=id/withinsubject=cYear type=un covb ;
	contrast 'treatment effect' treatment 1 , treatment*year 1 /e;
	contrast 'exposure' exposure 1 , exposure*exposure 1/e;
run;

