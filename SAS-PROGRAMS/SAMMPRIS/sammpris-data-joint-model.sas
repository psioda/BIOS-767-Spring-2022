*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Analyze data from the SAMMPRIS Study;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       sammpris-data-joint-model.sas                                   
*  LANGUAGE:       SAS, VERSION 9.4                                  
*                                                                   
*  NAME:           Matthew Psioda                               
*  DATE COMPLETE:  2021-04-11                                           
*-------------------------------------------------------------------
*                                                                   
*  Modification History:       
*                                                                                                                         
*  NAME:                         << Insert Name of Primary Programmer >>                               
*  DATE COMPLETE:                << YYYY-MM-DD >>   
*  DESCRIPTION OF MODIFICATION:  << Please insert 2-3 sentences >>                                                               
********************************************************************;
%include "C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767\SAS-MACROS\SETUP.SAS";
%setup(SAMMPRIS-DATA-JOINT-MODEL,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767);

ods html newfile=proc;

data sammpris_bp;
 set dat2.sammpris_bp;
  if sbp> . then sbp140 = (sbp<140);
  if dbp> . then dbp90 = (dbp<90);
  age = (age-50)/10;
run;




/** Determine Initial Parameter Values **/
ods html select none;
ods output ParameterEstimates = PE_SBP(where=(estimate^=0)) covParms=CP_SBP;
proc glimmix data = sammpris_bp;
 class racec(ref='Black or African American') genderc(ref='Male');
 model sbp140(event='1') = racec genderc age months|months / solution dist=binary link=logit;
 random int / subject=pat_num;
run;

ods output ParameterEstimates = PE_DBP(where=(estimate^=0)) covParms=CP_DBP;
proc glimmix data = sammpris_bp;
 class racec(ref='Black or African American') genderc(ref='Male');
 model dbp90(event='1') = racec genderc age months|months / solution dist=binary link=logit;
 random int / subject=pat_num;
run;
ods html exclude none;

data input_parms;
 set pe_sbp(in=a) pe_dbp(in=b) CP_SBP(in=c) CP_DBP(in=d);

  retain prior_est;

  if a then parameter = compress(lowcase(cats('sbp_',effect)),'*');
  if b then parameter = compress(lowcase(cats('dbp_',effect)),'*');
  if c then do; parameter = 'r_int';   prior_est = estimate; end;
  if d then do; parameter = 'r_scale'; estimate = estimate/prior_est; end;

  parameter=tranwrd(parameter,'monthsmonths','monthsSQ');
  keep parameter estimate;
run; 



proc nlmixed data = sammpris_bp absgconv=1e-12 gconv=1e-12 method=Gauss qpoints=10 noad;

	/** declarative statements about parameters **/
	parms / data=input_parms;
	bounds r_int >= 0;

	/** programming statements **/
	logit1 = sbp_intercept + sbp_racec*(racec='White') + sbp_genderc*(genderc='Female') + 
	         sbp_age*age +  sbp_months*months +  sbp_monthsSQ*months**2 + b0;
	pi1    = exp(logit1)/(1+exp(logit1));

	logit2 = dbp_intercept + dbp_racec*(racec='White') + dbp_genderc*(genderc='Female') +
	         dbp_age*age + dbp_months*months +  dbp_monthsSQ*months**2 + r_scale*b0;
	pi2    = exp(logit2)/(1+exp(logit2));

	/** distributional statements **/
	random b0 ~ normal(0,r_int) subject=pat_num;
	model months ~ general(logpdf('bernoulli',sbp140,pi1) + logpdf('bernoulli',dbp90,pi2));

run;


