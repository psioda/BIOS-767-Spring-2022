*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Basic analysis with GLMs;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       GLM-REVIEW.sas                                   
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
%setup(GLM-REVIEW,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767);
ods html newfile=proc;

/*** Code to type in data ***/
data work.cell;
infile datalines;
input nDiff TNF IFN;

datalines;
11 0 0
18 0 4
20 0 20
39 0 100
22 1 0
38 1 4
52 1 20
69 1 100
31 10 0
68 10 4
69 10 20
128 10 100
102 100 0
171 100 4
180 100 20
193 100 100
;
run;

proc genmod data = work.cell;
 model nDiff = tnf ifn tnf*ifn /  dist=poisson link=log;
run;
quit;



/** Analysis of Deviance **/
ods html exclude all;
ods output Modelfit  = work.Full;
proc genmod data = work.cell;
 model nDiff = tnf ifn tnf*ifn /  dist=poisson link=log;
run;
quit;

ods output Modelfit  = work.Reduced;
proc genmod data = work.cell;
 model nDiff = tnf ifn  /  dist=poisson link=log;
run;
quit;
ods html exclude none;

data work.AoD;
 merge work.Full(rename=(value=full df=dfFull))
       work.Reduced(rename=(value=redu df=dfRedu));
 by criterion;
 where criterion = 'Scaled Deviance';
 	lrt = redu-full;
	pv  = sdf('chisq',lrt,1);

	keep full redu df: lrt pv;
run;

title "Likelihood Ratio Test";
proc print data = work.AoD noobs; run;
title;

/*** Making a Plot ***/
proc genmod data = work.cell;
 model nDiff = tnf ifn tnf*ifn /  dist=poisson link=log;
 effectplot contour(x=tnf y=ifn);
 output out = estimates pred=est lower=lower upper=upper;
run;
quit;

title "TNF x IFN Effect Estimates with 95% CIs";
proc sgplot data = work.estimates;
 series x=tnf y=est / group=ifn lineattrs=(thickness=2);
 highlow x=tnf low=lower high=upper / lineattrs=(thickness=2)
		group=ifn highcap=serif lowcap=serif;
 yaxis type=log label='Number of Differentiated Cells';
run;
title;


/*** quasi-likelihood ***/
proc genmod data = work.cell;
 model nDiff = tnf ifn tnf*ifn /  
	dist=poisson link=log scale=pearson;
run;
quit;












/*** Model Selection ***/
data work.simData;
 call streaminit(1);

 array beta[30] _temporary_;
 array x[30] x1-x30;

 do p = 1 to 30;
 	if p in (21 22 23 24 25) then beta[p] = (p-20)/2;
	else beta[p] = 0; 
 end;

 do s = 1 to 150;
 	linPred = -0.5;
	do p = 1 to 30;
	 x[p] = rand('normal',0,1);
	 linPred + beta[p]*x[p];
	end;
	y = rand('bernoulli',logistic(linPred));
	output;
 end;

 drop linPred p;
run;


data _null_;
 set work.simData;
 file "&datPath2.\simDat.dat" dlm=',';
 put s y x1--x30;
run;


proc hpgenselect data = work.simData;
 model y(event='1') = x1-x30 /  dist=binary link=logit;
 selection method=stepwise(choose=aic);
run;
quit;

proc hpgenselect data = work.simData;
 model y(event='1') = x1-x30 /  dist=binary link=logit;
 selection method=backward(choose=aic);
run;
quit;

proc hpgenselect data = work.simData;
 model y(event='1') = x1-x30 /  dist=binary link=logit;
 selection method=forward(choose=aic);
run;
quit;

proc hpgenselect data = work.simData;
 model y(event='1') = x1-x30 /  dist=binary link=logit;
 selection method=lasso(choose=bic) details=all;
 performance details;
run;
quit;



/*** compare various models ***/
ods html select ParameterEstimates;
proc genmod data = work.simData;
 model y(event='1') = x12 x21 x22 x23 x24 x25         /  dist=bin link=logit;
run;
ods html select ParameterEstimates;
proc genmod data = work.simData;
 model y(event='1') = x12 x19 x21 x22 x23 x24 x25 x27 /  dist=bin link=logit;
run;
ods html select ParameterEstimates;
proc genmod data = work.simData;
 model y(event='1') = x21 x22 x23 x24 x25             /  dist=bin link=logit;
run;
