*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Analysis of data from the Dental Study;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       dental-data-GLM.sas                                   
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
%setup(DENTAL-DATA-GLM,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767);

/******************************************************************************************/
/******************************************************************************************/
/******************************** Dataset Processing Code *********************************/
proc print data = dat2.dental(obs=5); run;

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

proc print data = dental(obs=8); run;



option papersize=("8.5in","11.0in") topmargin=0.1in rightmargin=0.1in leftmargin=0.1in bottommargin=0.1in;
ods noptitle; ods graphics / reset noborder;

/********************************************************************************************************/
/********************************************************************************************************/
/********************************************************************************************************/
/***************************************** Statistical Analysis -- MLEs *********************************/

ods html path = "&outpath." file="Dental-General-Linear-Model-Analysis1.html" nogtitle;
/* Analysis assumes independent observations */
title1 j=c "Analysis of Dental Study Data -- Analysis with Maximum Likelihood (Independence)";
proc mixed data = dental method=ml;
	class gender(ref='F') id;
	model distance = gender time*gender / noint solution ;
run;
quit;

/* Analysis assumes unstructed covariance */
title1 j=c "Analysis of Dental Study Data -- Analysis with Maximum Likelihood (Unstructured Covariance)";
proc mixed data = dental method=ml;
	class gender(ref='F') id;
	model distance = gender time*gender / noint solution;
	repeated / subject=id type=un;
run;
quit;

/* REML - Analysis assumes unstructed covariance */
title1 j=c "Analysis of Dental Study Data -- Analysis with REML (Unstructured Covariance)";
proc mixed data = dental method=reml;
	class gender(ref='F') id;
	model distance = gender time*gender / noint solution;
	repeated / subject=id type=un;
run;
quit;
ods html close;


/********************************************************************************************************/
/********************************************************************************************************/
/*************************************** Testing Parallelism ********************************************/
ods html path = "&outpath." file="Dental-General-Linear-Model-Analysis2.html" nogtitle;
title1 j=c "Analysis of Dental Study Data -- Test of Parallelism (MLE Approach)";
proc mixed data = dental method=reml;
	class gender(ref='F') id;
	model distance = gender time*gender / noint solution;
	contrast "Parallelism" time*gender 1 -1;
	repeated / subject=id type=un;
run;
quit;
proc mixed data = dental method=reml;
	class gender(ref='F') id;
	model distance = gender|time / solution;
	repeated / subject=id type=un;
run;
quit;
ods html close;



/********************************************************************************************************/
/********************************************************************************************************/
/*************************************** DDFM ********************************************/
ods html path = "&outpath." file="Dental-General-Linear-Model-Analysis2-DDFM.html" nogtitle;
title1 j=c "Illustration for DDFM";

proc mixed data = dental method=reml;
	class gender(ref='F') id;
	model distance = gender time*gender  / noint solution;
	contrast "Parallelism" time*gender 1 -1;
	repeated / subject=id type=cs;
run;
quit;

ods html close;


/********************************************************************************************************/
/********************************************************************************************************/
/*************************************** Testing Parallelism ********************************************/
ods html path = "&outpath." file="Dental-General-Linear-Model-Analysis3.html" nogtitle;
title1 j=c "Analysis of Dental Study Data -- -- Test of Parallelism (LRT Approach)";

title2 j=c "Full Model Log-Likelihood";
ods html select FitStatistics;
ods output FitStatistics = FullModel;
proc mixed data = dental method=ml;
	class gender(ref='F') id;
	model distance = gender time*gender / noint solution;
	repeated / subject=id type=un;
run;
quit;

title2 j=c "Reduced Model Log-Likelihood";
ods html select FitStatistics;
ods output FitStatistics = ReducedModel;
proc mixed data = dental method=ml;
	class gender(ref='F') id;
	model distance = gender time / solution;
	repeated / subject=id type=un;
run;
quit;

data BothModels;
 merge FullModel(rename=(value=full))
       ReducedModel(rename=(value=reduced));
 by descr;
 where upcase(descr) = '-2 LOG LIKELIHOOD';

  LRT_stat = reduced-full;
  pValue   = sdf('chisquare',LRT_stat,1);

  full = -0.5*full;
  reduced = -0.5*reduced;
  drop descr;
run;

title2 j=c "Likelihood Ratio Test";
proc print data = BothModels split="^" noobs;
 label LRT_stat = "Likelihood^Ratio^Statistic"
       pValue   = "LRT P-value"
	   full     = "Full^Model^Log-Likelihood"
	   reduced  = "Reduced^Model^Log-Likelihood";
 format LRT_stat full reduced 6.4  pValue pvalue6.4;
run;
ods html close;




/********************************************************************************************************/
/********************************************************************************************************/
/*************************************** Testing Parallelism ********************************************/
ods html path = "&outpath." file="Dental-General-Linear-Model-Analysis4.html" nogtitle;
title1 j=c "Analysis of Dental Study Data -- Analysis with REML (Group Compound Symmetry)";
proc mixed data = dental method=reml;
	class gender(ref='F') id;
	model distance = gender time*gender / noint solution;
	repeated / subject=id type=cs group=gender r=(1 20) rcorr=(1 20);
run;
quit;
ods html close;


/********************************************************************************************************/
/********************************************************************************************************/
/****************************************** Interpoloation** ********************************************/
ods html path = "&outpath." file="Dental-General-Linear-Model-Analysis5.html" nogtitle;
title1 j=c "Analysis of Dental Study Data -- Interpolation";
proc mixed data = dental method=reml;
	class gender(ref='F') id;
	model distance = gender time*gender / noint solution;
	repeated / subject=id type=cs group=gender;

	estimate "Interpolation -- Male @ 11 years" gender   1 0 time*gender 11  0 / cl;
	estimate "Interpolation -- Female @ 11 years" gender 0 1 time*gender  0 11 / cl;
run;
quit;
ods html close;


/********************************************************************************************************/
/********************************************************************************************************/
/***************************************** Sandwhich Estimator ******************************************/
ods html path = "&outpath." file="Dental-General-Linear-Model-Analysis6.html" nogtitle;
title1 j=c "Analysis of Dental Study Data -- Sandwhich Estimator";
proc mixed data = dental method=reml;
	class gender(ref='F') id;
	model distance = gender time*gender / noint solution;
	repeated / subject=id type=cs group=gender;

	estimate "Male @ 11 years" gender   1 0 time*gender 11  0 / cl;
	estimate "Female @ 11 years" gender 0 1 time*gender  0 11 / cl;
run;
quit;

proc mixed data = dental empirical method=reml;
	class gender(ref='F') id;
	model distance = gender time*gender / noint solution;
	repeated / subject=id type=cs group=gender;

	estimate "Male @ 11 years" gender   1 0 time*gender 11  0 / cl;
	estimate "Female @ 11 years" gender 0 1 time*gender  0 11 / cl;
run;
quit;
ods html close;
