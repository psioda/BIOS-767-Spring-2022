*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Analysis of data from the Dental Study;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       dental-data-GLM-Part2.sas                                   
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
%setup(DENTAL-DATA-GLM-PART2,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767);

/******************************************************************************************/
/******************************************************************************************/
/******************************** Dataset Processing Code *********************************/
data dental;
	set dat2.dental;

	array age[4] age8 age10 age12 age14;
	do j = 1 to dim(age);
		time = 6 + 2*j;
		distance = age[j];
		output;
	end;
	
	drop age: j;
run;

proc sort data=dental;
 by id time;
run;

option papersize=("8.5in","11.0in") topmargin=0.1in rightmargin=0.1in leftmargin=0.1in bottommargin=0.1in;
ods noptitle; ods graphics / reset noborder;

/********************************************************************************************************/
/********************************************************************************************************/
/********************************************************************************************************/
/***************************************** Statistical Analysis -- MLEs *********************************/

ods html path = "&outpath." file="Dental-General-Linear-Model-Part2-Analysis1.html" nogtitle;
title1 j=c "Analysis of Dental Study Data -- Reference Cell Coding Scheme";
ods html select SolutionF Tests3 ;
proc mixed data = dental method=reml;
	class gender(ref='F') time(ref='8') id;
	model distance = gender time gender*time 
			/ solution chisq;
	repeated / subject=id type=un;
run;
quit;

title1 j=c "Analysis of Dental Study Data -- Cell Means Coding Scheme";
ods html select SolutionF Contrasts  Tests3 ;
proc mixed data = dental method=reml;
	class gender time id;
	model distance = time*gender 
			/ noint solution chisq;
	repeated / subject=id type=un;
	contrast "Time x Gender"  
	 time*gender 1 -1  0  0 -1  1  0  0,
	 time*gender 1  0 -1  0 -1  0  1  0,
	 time*gender 1  0  0 -1 -1  0  0  1 / chisq;
run;
quit;

ods html close;


ods html path = "&outpath." file="Dental-General-Linear-Model-Part2-Analysis2.html" nogtitle;
title1 j=c "Analysis of Dental Study Data -- Reference Cell Coding Scheme";

ods html select SolutionF Tests3 ;
proc mixed data = dental method=reml;
	class gender(ref='F') time(ref='8') id;
	model distance = gender time gender*time 
			/ solution chisq;
	repeated / subject=id type=cs;
run;
quit;

title1 j=c "Analysis of Dental Study Data -- Cell Means Coding Scheme";
ods html select ModelANOVA;
proc glm data = dat2.dental;
	class gender id;
	model age8 age10 age12 age14 = gender 
			/ nouni solution;
	repeated age /nom;
run;
quit;

ods html close;


