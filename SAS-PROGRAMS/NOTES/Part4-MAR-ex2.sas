*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: A simulation study to illustrate the loss
*                       of efficiency that can occur when ignoring
*                       a missing data mechanism that contains information
*                       on the parameters of interest;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       Part4-MAR-ex2.sas                                   
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
%setup(PART4-MAR-EX2,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767);

ods html close;
ods html newfile=none;
data sim;
	call streaminit(1);

	array mu[2]  (10 -10);
	array psi[1] (0);
	sd    = 20;

	do simStudy = 1 to 1000;
		do subject = 1 to 100;
			y1 = rand('normal',mu[1],sd);
			y2 = rand('normal',y1 + mu[2],sd);
			r2 = rand('bernoulli',logistic(psi[1] + (y1 - mu[1])/sd));
			output;
		end;
	end;
 drop mu: psi: sd;
run;

/** suppress notes in SAS LOG**/
option nonotes;


/** analysis that does not model the missing data mechanism **/
ods html exclude all;
ods output ParameterEstimates = PE1;
proc nlmixed data = sim absconv=1e-9 gconv=1e-9 absgconv=1e-9;
	by simStudy;
	parms mu1 150 mu2 -10 sd 20;
	bounds sd >0;
	
	logLike = logPDF('normal',y1,mu1,sd);
	if r2 = 0 then logLike = logLike + logPDF('normal',y2,y1 + mu2,sd);


	model y1 ~ general(logLike);
run;
ods html exclude none;

/** analysis that does model the missing data mechanism (correctly) - estimating intercept **/
ods html exclude all;
ods output ParameterEstimates = PE2;
proc nlmixed data = sim absconv=1e-9 gconv=1e-9 absgconv=1e-9;
	by simStudy;
	parms mu1 10 mu2 -10 psi1 0 sd 20;
	bounds sd >0;
	
					logLike =           logPDF('normal',y1,mu1,sd);
	if r2 = 0 then 	logLike = logLike + logPDF('normal',y2,y1 + mu2,sd);
					logLike = logLike + logPDF('bernoulli',r2,logistic(psi1 + (y1 - mu1)/sd  ));


	model y1 ~ general(logLike);
run;
ods html exclude none;
/** reinstate notes in SAS LOG**/
option notes;

/** analysis that does model the missing data mechanism (correctly) - known intercept = 0**/
ods html exclude all;
ods output ParameterEstimates = PE3;
proc nlmixed data = sim absconv=1e-9 gconv=1e-9 absgconv=1e-9;
	by simStudy;
	parms mu1 10 mu2 -10 sd 20;
	bounds sd >0;
	
					logLike =           logPDF('normal',y1,mu1,sd);
	if r2 = 0 then 	logLike = logLike + logPDF('normal',y2,y1 + mu2,sd);
					logLike = logLike + logPDF('bernoulli',r2,logistic((y1 - mu1)/sd  ));


	model y1 ~ general(logLike);
run;
ods html exclude none;
/** reinstate notes in SAS LOG**/
option notes;


ods html close;
ods html newfile=none;
ods noproctitle;

title1 "Summary Statistics";
proc means data = sim nway;
 var y1 y2 r2;
run;

title1 "Estimator Properties from Analysis that Ignores the Missing Data Mechanism";
proc means data = PE1 nway nolabels;
 class Parameter;
 where upcase(Parameter) =: "MU";
 var Estimate;
run;

title1 "Estimator Properties from Analysis that Correctly Models the Missing Data Mechanism";
title2 "Estimating Intercept";
proc means data = PE2 nway nolabels;
 class Parameter;
 where upcase(Parameter) =: "MU";
 var Estimate;
run;

title1 "Estimator Properties from Analysis that Correctly Models the Missing Data Mechanism";
title2 "Known Intercept = 0";
proc means data = PE3 nway nolabels;
 class Parameter;
 where upcase(Parameter) =: "MU";
 var Estimate;
run;
