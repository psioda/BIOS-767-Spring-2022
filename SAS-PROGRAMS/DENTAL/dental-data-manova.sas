*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Analysis of data from the Dental Study;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       dental-data-manova.sas                                   
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
%setup(DENTAL-DATA-MANOVA,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767);

option papersize=("8.5in","11.0in") topmargin=0.1in rightmargin=0.1in leftmargin=0.1in bottommargin=0.1in;



/*************************************************************************************
 *************************************************************************************
 *************************************************************************************
 *************************************************************************************
 ************************************************************************************/
ods noptitle;
ods html path = "&outpath." file="dental-MANOVA-Analysis1.html";
	title1 j=c "Analysis of Dental Study Data -- Parallelism";

	proc glm data = dat2.dental;
		class gender;
		model age8 age10 age12 age14 = gender / nouni;
		manova h=gender m=(1 -1  0  0,
                           1  0 -1  0,
                           1  0  0 -1 ) / mstat=exact;
	run;
	quit;

ods html close;

ods noptitle;
ods html path = "&outpath." file="dental-MANOVA-Analysis2.html";
	title1 j=c "Analysis of Dental Study Data -- Same Profiles";


proc glm data = dat2.dental;
    class gender;
    model age8 age10 age12 age14 = gender / nouni noint;

    contrast "sex" gender 1 -1;

    manova  m=(1 0 0 0,
               0 1 0 0,
               0 0 1 0,
               0 0 0 1);

    manova  m=(0.25 0.25 0.25 0.25);
run;
quit;

ods html close;


ods noptitle;
ods html path = "&outpath." file="dental-MANOVA-Analysis3.html";
	title1 j=c "Analysis of Dental Study Data -- No Time Effect";

	proc glm data = dat2.dental;
		class gender;
		model age8 age10 age12 age14 = gender / nouni noint;

        contrast "gender" gender 1 0,
                          gender 0 1;
		manova  m=(1 -1  0  0,
                   1  0 -1  0,
                   1  0  0 -1 ) / printh;

		contrast "ave.gender" gender 0.5 0.5;
		manova  m=(1 -1  0  0,
                   1  0 -1  0,
                   1  0  0 -1 );
	run;
	quit;

ods html close;
