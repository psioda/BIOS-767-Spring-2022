*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Analysis of data from the Dental Study;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       dental-data-repeated-measures-anova.sas                                   
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
%setup(DENTAL-DATA-REPEATED-MEASURES-ANOVA,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767);

option papersize=("8.5in","11.0in") topmargin=0.1in rightmargin=0.1in leftmargin=0.1in bottommargin=0.1in;



/*************************************************************************************
 *************************************************************************************
 *************************************************************************************
 *************************************************************************************
 ************************************************************************************/
ods noptitle;
ods html path = "&outpath." file="Dental-URMA-Analysis1.html";
	title1 j=c "Analysis of Dental Study Data -- Univariate Repeated Measures ANOVA";
	proc glm data = dat2.dental;
		class gender;
		model age8 age10 age12 age14 = gender / nouni;
		repeated age / printe nom;
	run;
	quit;
ods html close;


/*************************************************************************************
 *************************************************************************************
 *************************************************************************************
 *************************************************************************************
 ************************************************************************************/
title1 j=c "Analysis of Dental Study Data -- Univariate Repeated Measures ANOVA";
title2 j=c "Test Gender Effect Equality at Two Points";

ods noptitle;
ods html path = "&outpath." file="Dental-URMA-Analysis2.html";
	proc glm data = dat2.dental;
		class gender;
		model age8 age10 age12 age14 = gender / nouni ;
		repeated age contrast(4) / summary  nom;
	run;
	quit;
ods html close;



/*************************************************************************************
 *************************************************************************************
 *************************************************************************************
 *************************************************************************************
 ************************************************************************************/
title1 j=c "Analysis of Dental Study Data -- Univariate Repeated Measures ANOVA";
title2 j=c "Test Gender Effect at each Time Point";

ods noptitle;
ods html path = "&outpath." file="Dental-URMA-Analysis3.html";
	proc glm data = dat2.dental;
		class gender;
		model age8 age10 age12 age14 = gender / nouni ;
		repeated age identity / summary  nom;
	run;
	quit;

	proc ttest data = dat2.dental plots=(none);
		class gender;
		var age8 age10 age12 age14;
	run;
	quit;
ods html close;


/*************************************************************************************
 *************************************************************************************
 *************************************************************************************
 *************************************************************************************
 ************************************************************************************/
title1 j=c "Analysis of Dental Study Data -- Univariate Repeated Measures ANOVA";
title2 j=c "Test Gender Effect Equality at Consecutive Points";

ods noptitle;
ods html path = "&outpath." file="Dental-URMA-Analysis4.html";
	proc glm data = dat2.dental;
		class gender;
		model age8 age10 age12 age14 = gender / nouni ;
		repeated age profile / summary  nom;
	run;
	quit;
ods html close;
