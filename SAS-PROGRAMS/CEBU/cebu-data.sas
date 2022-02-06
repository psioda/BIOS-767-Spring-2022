*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Process data from the CEBU Study;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       cebu-data.sas                                   
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
%setup(CEBU-DATA,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767);

/** code to write CSV files from SAS **/
data dat2.cebu;
 infile "&datPath2.&slash.cebu.dat" dlm=' ' missover;
 length id $20 ;
 input id time age weight height brstfeed momht rural male ;
run;
