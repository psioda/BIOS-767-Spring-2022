*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Process the Melanoma Data;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       melanoma-data.sas                                   
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
%include "C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-767-PROGRAMMING\MACROS\SETUP.SAS";
%setup(MELANOMA-DATA,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-767-PROGRAMMING);

/*
Region, County, Observed number of deaths due to malignant melanoma, 
expected number of deaths due to malignant melanoma, UVB exposure.
*/


/** code to read in text files in SAS **/
data dat2.melanoma;
 infile "&datPath2.&slash.melanoma-data.txt" dlm=' '  missover firstobs=1;
 input region county nDeaths eDeaths UVB;
run;

