*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Process data from the Contraception Study;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       contra-data.sas                                   
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
%setup(CONTRA-DATA,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767);


/*
data fitz.dental(rename=(y1=age8 y2=age10 y3=age12 y4=age14));
 set fitz.dental;
run;
*/

/** code to write CSV files from SAS **/
data Contra;
 infile "&datPath2.&slash.amenorrhea-data.txt" dlm=' ';
 input ID HighDose Occasion Amenorrhea;
run;
