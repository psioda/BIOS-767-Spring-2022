*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Analysis of data from the TLC Study;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       lead-data-GLM.sas                                   
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
%setup(LEAD-DATA-GLM,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767);

/******************************************************************************************/
/******************************************************************************************/
/******************************** Dataset Processing Code *********************************/

/*
ods html newfile=proc;
proc print data = dat2.tlc(obs=2) noobs; run;
*/

data lead;
  set dat2.tlc;
	array mn[4] y0 y1 y4 y6;
	do j = 1 to dim(mn);
		bloodlevel = mn[j];
		week       = 0*(j=1) + 
					 1*(j=2) + 
					 4*(j=3) + 
					 6*(j=4);
		output;
	end;
	drop j y:;
run;
/*
ods html newfile=proc;
proc print data = lead(obs=8) noobs; run;
*/
proc sort data=lead;
 by id week;
run;

data lead2;
 set lead;

  array aweek[3]  Week1  Week4  Week6;
  array sWeek[3] sWeek1 sWeek4 sWeek6;

  i = (week=1) + 2*(week=4) + 3*(week=6);
  do j = 1 to 3;
   aweek[j] = (i=j);
   sWeek[j] = (i=j)*(trt='A');
  end;
  drop i j week;
run;
/*
ods html newfile=proc;
proc print data = lead2(obs=8) noobs; run;
*/
option papersize=("8.5in","11.0in") topmargin=0.1in rightmargin=0.1in leftmargin=0.1in bottommargin=0.1in;
ods noptitle; ods graphics / reset noborder;

/********************************************************************************************************/
/********************************************************************************************************/
/********************************************************************************************************/
/***************************************** Statistical Analysis -- MLEs *********************************/

ods html path = "&outpath." file="LEAD-General-Linear-Model-Analysis1.html" nogtitle;
title1 j=c "Analysis of TLC Study Data -- Allow Difference Intercepts";
ods html select SolutionF Tests3 ;
proc mixed data = lead method=reml;
	class trt(ref='P') week(ref='0') id;
	model bloodlevel = trt week trt*week 
			/ solution chisq;
	repeated / subject=id type=un;
run;
quit;

title1 j=c "Analysis of TLC Study Data -- Enforce Common Intercept";
ods html select SolutionF Contrasts ;
proc mixed data = lead2 method=reml;
	class id;
	model bloodlevel = week1 week4 week6 sWeek1 sWeek4 sWeek6 
			/ solution chisq;
	repeated / subject=id type=un;
	contrast "Treatment x Time"
	      sWeek1 1, sWeek4 1, sWeek6 1 / chisq;
run;
quit;
ods html close;

