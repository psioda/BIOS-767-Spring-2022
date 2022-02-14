*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Process data from the Treatment of Lead-
*                       Exposed Children (TLC) Trial;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       lead-data.sas                                   
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
%setup(LEAD-DATA,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767);
/** code to read in text files in SAS **/
data tlc;
 infile "&datPath2.&slash.tlc-data.txt";
 input id trt $ y0 y1 y4 y6;
run;

