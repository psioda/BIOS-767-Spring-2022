*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Summarize data from the Dental Study;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       dental-data-IML-cov.sas                                   
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
%setup(DENTAL-DATA-IML-COV,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767);


ods html newfile=proc;
proc IML ;
/* read in dental data to matrix Y */
use dat2.dental(where=(gender="F"));
	read all var {age8 age10} into y;
close dat2.dental;

/* compute column means, covariance, correlation*/
mean = y[:,];
cov  = cov(y);
corr = corr(y);

/* print sample statistics*/
print mean[L="Sample Mean Vector" f=6.2], 
      cov[L="Sample Covariance Matrix" f=6.2],
      corr[L="Sample Correlation Matrix" f =6.2];
quit;
