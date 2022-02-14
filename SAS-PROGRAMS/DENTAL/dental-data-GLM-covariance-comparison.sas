*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Analysis of data from the Dental Study;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       dental-data-GLM-Covariance-Comparison.sas                                   
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
%setup(DENTAL-DATA-GLM-covariance-comparison,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767);

/******************************************************************************************/
/******************************************************************************************/
/******************************** Dataset Processing Code *********************************/
proc transpose data = dat2.dental out = dental;
 by id gender;
 var age8 age10 age12 age14;
run;

data dental;
 set dental;
  time = input(compress(_name_,'age'),best.);
  distance = col1;
  drop _: col1;
run;

option papersize=("8.5in","11.0in") topmargin=0.1in rightmargin=0.1in leftmargin=0.1in bottommargin=0.1in;
ods noptitle; ods graphics / reset noborder;


%macro cov(typeCov,groupCov=NONE);
		ods html select FitStatistics r rcorr;
		title1 "Covariance Structure = %upcase(&typecov.)";
		%if %upcase(&groupCov.)^=NONE %then %do;
			title2 "Covariance by %upcase(&groupCov.)";
		%end;
		ods output FitStatistics = %sysfunc(compress(&typeCov,()))_&groupCov.;
		proc mixed data = dental method=REML;
			class gender(ref='F') id;
			model distance = gender time time*gender  / solution;
			repeated / subject=id type=&typeCov. 
                       %if %upcase(&groupCov.)^=NONE %then %do; 
								group=&groupCov. 
					   %end; 
					   r rcorr; 
		run;
		quit;

		data %sysfunc(compress(&typeCov,()))_&groupCov.;
			set %sysfunc(compress(&typeCov,()))_&groupCov.;
			rename value = %sysfunc(compress(&typeCov,()))_&groupCov.;
			%if %upcase(&groupCov.)^=NONE %then %do; 
				label value = "%upcase(&typeCov) - %upcase(&groupCov.)";
			%end;
			%else %do;
				label value = "%upcase(&typeCov)";			
			%end;
		run;
%mend;



ods html path = "&outpath." file="Dental-General-Linear-Model-Linear-Covariance.html";
	%cov(typeCov=un);
	%cov(typeCov=cs);
	%cov(typeCov=csh);
	%cov(typeCov=ar(1));
	%cov(typeCov=toep(2));
	%cov(typeCov=cs,groupCov=gender);
	%cov(typeCov=csh,groupCov=gender);

	data FitStatistics;
		merge un_none
			  cs_none
			  csh_none
			  ar1_none
			  toep2_none
			  cs_gender
			  csh_gender;
		by descr;
	run;

	title "Overall Covariance Model Fit Statistics";
	proc print noobs label; run;
ods html close;

