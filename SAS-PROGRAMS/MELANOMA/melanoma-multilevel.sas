*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Analyze the Melanoma Data;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       melanoma-multilevel.sas                                   
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
%setup(MELANOMA-MULTILEVEL,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767);
/*
Region, County, Observed number of deaths due to malignant melanoma, 
expected number of deaths due to malignant melanoma, UVB exposure.
region county nDeath UVB
*/

data melanoma;
 set dat2.melanoma;
  log_eDeaths = log(eDeaths);
run;
ods html newfile=proc;

proc print data = melanoma(obs=20); run;

ods html newfile=proc;
ods trace  on;
ods output SolutionR = work.test;
proc glimmix data = melanoma method=quad(qpoints=50);
 model nDeaths = uvb / offset=log_eDeaths dist=poisson link=log solution;
 random int / subject=region solution;
run;





proc glimmix data = melanoma method=quad(qpoints=50);
 model nDeaths = uvb / offset=log_eDeaths dist=poisson solution;
 random int / subject=region;


 estimate "Typical Subject: +1SD versus -1SD" uvb 3 / exp cl;
 estimate "Subject 1: +1SD versus -1SD" uvb 3 | intercept 1  / subject 1 exp cl;
 estimate "Subject 2: +1SD versus -1SD" uvb 3 | intercept 1  / subject 0 1 exp cl;
run;





proc glimmix data = melanoma method=quad(qpoints=50);
 model nDeaths = uvb / offset=log_eDeaths dist=poisson solution cl;
 random int / subject=region;
 output out = estimates pred(noblup)=p1 lcl(noblup)=lower_p1 ucl(noblup)=upper_p1 
                        pred        =p2 lcl        =lower_p2 ucl        =upper_p2
						pred(noblup iLink)=p3 lcl(noblup iLink)=lower_p3 ucl(noblup iLink)=upper_p3;
run;

proc print data = estimates(obs=20); run;

data estimates;
 set estimates;
  y = catx('-',region,county);
 run;

ods graphics / height=6in width=4in noborder;
proc sgplot data = estimates noautolegend;
 highlow y=y low=lower_p3 high=upper_p3 / highcap=serif lowcap=serif;
 scatter y=y x=p3           / markerattrs=(symbol=diamondFilled);
 *refline 0                              / axis=x lineattrs=(pattern=2 color=black);

 yaxis type=discrete label='Region';
 xaxis type=log label="Region Specific Random Effect";
run;



ods output SolutionR = work.SolutionRandom;
proc glimmix data = melanoma method=quad(qpoints=50);
 model nDeaths = uvb / offset=log_eDeaths dist=poisson solution;
 random int / subject=region solution cl;
run;


proc print data = work.SolutionRandom; run;

proc sort data = work.SolutionRandom;
 by estimate;
run;


ods graphics / height=6in width=4in noborder;
proc sgplot data = work.SolutionRandom noautolegend;
 highlow y=subject low=lower high=upper / highcap=serif lowcap=serif;
 scatter y=subject x=estimate           / markerattrs=(symbol=diamondFilled);
 refline 0                              / axis=x lineattrs=(pattern=2 color=black);

 yaxis type=discrete label='Region';
 xaxis label="Region Specific Random Effect";
run;

