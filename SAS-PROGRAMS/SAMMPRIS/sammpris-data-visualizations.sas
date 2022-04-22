*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Visualize data from the SAMMPRIS Study;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       sammpris-data-visualizations.sas                                   
*  LANGUAGE:       SAS, VERSION 9.4                                  
*                                                                   
*  NAME:           Matthew Psioda                               
*  DATE COMPLETE:  2021-04-11                                           
*-------------------------------------------------------------------
*                                                                   
*  Modification History:       
*                                                                                                                         
*  NAME:                         << Insert Name of Primary Programmer >>                               
*  DATE COMPLETE:                << YYYY-MM-DD >>   
*  DESCRIPTION OF MODIFICATION:  << Please insert 2-3 sentences >>                                                               
********************************************************************;
%include "C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767\SAS-MACROS\SETUP.SAS";
%setup(SAMMPRIS-DATA-VISUALIZATIONS,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767);

ods html newfile=proc;

data sammpris_bp;
 set dat2.sammpris_bp;
 by pat_num;
  if first.pat_num;

  if sbp> . then sbp140 = (sbp<140);
  if dbp> . then dbp90 = (dbp<90);
run;

ods html select histogram;
proc univariate data = sammpris_bp;
 histogram base_:;
run;
