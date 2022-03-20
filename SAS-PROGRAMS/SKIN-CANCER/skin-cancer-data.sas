*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Process data from the Skin Cancer Trial;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       skin-cancer-data.sas                                   
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
%setup(SKIN-CANCER-DATA,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767);


/** code to read in text files in SAS **/
data dat2.skincancer;
 infile "&datPath2.&slash.skincancer.txt" dlm=' '  missover;
 length id $20 ;
 input id site age skin gender exposure newcancers treatment year;
run;

proc SQL noprint;
 select mean(age) into :meanAge from dat2.skincancer;
quit;

data dat2.skincancer;
 set dat2.skincancer;
 cYear     = put(year,z2.);
 agecent   = age-&meanAge.;
 newcancer = (newcancers>0);
run;

