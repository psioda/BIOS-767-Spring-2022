*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Analysis of data from the Dental Study;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       dental-data-ttests.sas                                   
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
%setup(DENTAL-DATA-TTESTS,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767);


/***************************************** Statistical Analysis -- ADHOC *********************************/
option papersize=("5.5in","2.3in") topmargin=0.1in rightmargin=0.1in leftmargin=0.1in bottommargin=0.1in;
ods noptitle;
ods pdf file = "&outpath.&slash.Dental-tTest-Analysis.pdf" nogtitle dpi=200 startpage=no;
ods graphics / reset noborder;
title1 j=c "Cross-Sectional Analysis of Gender Effects by Age";

ods pdf exclude all;
ods output ParameterEstimates = PE;
proc glm data = dat2.dental plots=all;
 class gender(ref='M');
 model age8 age10 age12 age14 = gender / solution;
run;
quit;
ods pdf exclude none;

data PE;
 length Effect $20;
 set PE;
 where Parameter = 'GENDER    F';
 dependent = substr(dependent,4);
 effect = 'Female - Male';

run;

proc multtest inpvalues(probt)=PE out = Adjustedp holm noprint; run;

proc print data = Adjustedp(drop=Parameter Biased) label noobs split='^'; 
	label Probt = 'Unadjusted P-value'
          dependent = 'Age (Years)';
run;
ods pdf close;


