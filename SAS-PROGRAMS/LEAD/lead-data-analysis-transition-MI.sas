*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Analysis of data from the TLC Study;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       lead-data-analysis-transition-MI.sas                                   
*  LANGUAGE:       SAS, VERSION 9.4                                  
*                                                                   
*  NAME:           Matthew Psioda                               
*  DATE COMPLETE:  2021-04-27                                           
*-------------------------------------------------------------------
*                                                                   
*  Modification History:       
*                                                                                                                         
*  NAME:                         << Insert Name of Primary Programmer >>                               
*  DATE COMPLETE:                << YYYY-MM-DD >>   
*  DESCRIPTION OF MODIFICATION:  << Please insert 2-3 sentences >>                                                               
********************************************************************;
%include "C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767\SAS-MACROS\SETUP.SAS";
%setup(LEAD-DATA-ANALYSIS-TRANSITION-MI,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767);
ods html newfile=proc;


/******************************************************************************************/
/******************************************************************************************/
/****************************** creating fake missing data ********************************/

data dat2.leadmiss;
	set dat2.tlc;
	call streaminit(546);
	file "&datpath2.\tlc-data-missing.txt";

	array r[4] r0 r1 r4 r6;
	array y[4] y0 y1 y4 y6;

	r[1] = 1;
	do j = 2 to 4;
		if r[j-1] = 0 then r[j] = 0;
		else do;
			pi   = logistic(3-y0/30);
			r[j] = rand('bernoulli',pi);
		end;
	end;

	do j = 1 to 4;
		if r[j] = 0 then y[j] = .;
	end;
	drop r: j pi;
	put id trt y0 y1 y4 y6;
run;

/******************************************************************************************/
/******************************************************************************************/
/****************************** perform actual analysis ********************************/

** impute outcomes using their continuous nature even though we will
   analyze the data using a dichotomous value;
proc mi data = dat2.leadmiss out=ImputedDatasets  seed=73474 nimpute=50;
   class trt;
	fcs reg(y1  = y0 y4 y6 trt y0*trt y4*trt y6*trt / details);
   	fcs reg(y4  = y0 y1 y6 trt y0*trt y1*trt y6*trt / details);
	fcs reg(y6  = y0 y1 y4 trt y0*trt y1*trt y4*trt / details);
   var trt y0 y1 y4 y6;
run;


** transform imputed data to long format and dichotomize outcome and lag outcome;
data lead;
  set ImputedDatasets;
	array mn[4] y0 y1 y4 y6;
	do j = 2 to dim(mn);
		succ       = (trt='A');
		lowLead    = (mn[j]<20);
		lagLowLead = (mn[j-1]<20);
		week       = 0*(j=1) + 
					 1*(j=2) + 
					 4*(j=3) + 
					 6*(j=4);
		output;
	end;
	drop j y:;
run;



** analyze imputed datasets with gee via PROC GENMOD;
ods html exclude all;
ods output GEEEmpPEst  = work.PE 
           GEERCov     = work.CV 
           Estimates   = work.Estimates ;
proc genmod data=lead;
    by _imputation_;
	where week > 0;
	class id;
	model lowlead(event='1') = succ week succ*week lagLowLead succ*lagLowLead
		/ dist=binomial link=logit scale=pearson aggregate;

	** this is just to serve as an example of one possible Lbeta value of interest;
	estimate "W1High" succ 1 succ*week 1 succ*lagLowLead 0 ;
	estimate "W1Low" succ 1 succ*week 1 succ*lagLowLead 1;

	repeated  subject=id / type=ind modelse ecovb;
run;
ods html exclude none;

** remap names of the parameters estimated;
data PE2;
 set PE;

	if Parm="Intercept"       then Parm='Prm1';
	if Parm="succ"            then Parm='Prm2';
	if Parm="week"            then Parm='Prm3';
	if Parm="succ*week"       then Parm='Prm4';
	if Parm="lagLowLead"      then Parm='Prm5';
	if Parm="succ*lagLowLead" then Parm='Prm6';
run;

proc mianalyze parms = PE2  covb=CV;
 modeleffects Prm1 Prm2 Prm3 Prm4 Prm5 Prm6;
 Dose: TEST Prm2=0,Prm4=0,Prm6 / mult; 
run; 


** this is to illustrate how one can compute estimates of functions of parameters using the
   estimate statement output from PROC GENMOD;
ods html exclude all;
ods output ParameterEstimates  = work.MIEstimates;
proc mianalyze parms = Estimates(rename=(Label=Parm LBetaEstimate=Estimate));
 modeleffects W1High W1Low;
run; 
ods html exclude none;

** if we want estimates and confidence intervals for quantities on the probability scale,
   remember to transform after computing the CI;
data work.MIEstimates2;
 set work.MIEstimates;
	prop = logistic(estimate);
	prop_lcl = logistic(lclmean);
	prop_ucl = logistic(uclmean);
run;
