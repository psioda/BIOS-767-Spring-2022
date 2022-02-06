*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Analyze data from the CEBU Study;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       cebu-data-analysis-GLM.sas                                  
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
%setup(CEBU-DATA-ANALYSIS-GLM,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-767-PROGRAMMING);


data cebu;
 set dat2.cebu;
  weight = weight/1000;
  age    = age / 12;
run;

ods html path = "&outpath." file="CEBU-General-Linear-Model-Analysis1.html" nogtitle;
title1 j=c "Analysis of CEBU Study Data -- REML (Unstructured Covariance)";
proc mixed data = cebu method=reml noclprint plots=(none);
	class male(ref='0') id;
	model weight = time time*time male / solution ;
	repeated / subject=id type=un rcorr=(1) r=(1);
run;
quit;

title1 j=c "Analysis of CEBU Study Data -- REML/Sandwich (Unstructured Covariance)";
proc mixed data = cebu empirical method=reml noclprint plots=(none);
	class male(ref='0') id;
	model weight = time time*time male / solution ;
	repeated / subject=id type=un rcorr=(1);
run;
quit;

title1 j=c "Analysis of CEBU Study Data -- REML (CS Covariance)";
proc mixed data = cebu method=reml noclprint plots=(none);
	class male(ref='0') id;
	model weight = time time*time male / solution ;
	repeated / subject=id type=cs rcorr=(1);
run;
quit;

title1 j=c "Analysis of CEBU Study Data -- REML/Sandwich (CS Covariance)";
proc mixed data = cebu empirical method=reml noclprint plots=(none);
	class male(ref='0') id;
	model weight = time time*time male / solution ;
	repeated / subject=id type=cs rcorr=(1);
run;
quit;
ods html close;


data cebu2;
 set cebu;
  visit  = time;
run;

ods html path = "&outpath." file="CEBU-General-Linear-Model-Analysis2.html" nogtitle;
title1 j=c "Analysis of CEBU Study Data -- REML (Ordering Observations)";
data cebu2;
 set cebu;
  visit  = time;
run;

proc mixed data = cebu method=reml noclprint plots=(none);
	class male(ref='0') id;
	model weight = time time*time male / solution ;
	repeated / subject=id type=un rcorr=(1) ;
run;
quit;


proc mixed data = cebu2 method=reml noclprint plots=(none);
	class male(ref='0') visit id;
	model weight = time time*time male / solution ;
	repeated visit / subject=id type=un rcorr=(1);
run;
quit;
ods html close;
