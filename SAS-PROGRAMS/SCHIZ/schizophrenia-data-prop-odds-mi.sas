*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Analyze data from the Schizophrenia Study;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       schizophrenia-data-prop-odds-mi.sas                                   
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
%setup(SCHIZOPHRENIA-DATA-PROP-ODDS,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767);

ods html newfile=proc;

/*
(1=normal or borderline mentally ill, 
2=mildly or moderately ill, 
3=markedly ill, and 
4=severely or among the most extremely ill)
*/

ods html newfile=proc;

** remove data for unscheduled visits;
data schiz;
 set dat2.schiz;
 where week not in (2,4,5);
run;

** transpose data to wide format;
proc transpose data = schiz out = schiz_vert prefix=outcome;
 by id trt;
 id week;
 var y;
run;

** Note: due to computational issues, the imputation model for outcome1
   is restricted to only treatment;
proc mi data = schiz_vert out=ImputedDatasets  seed=13951639 nimpute=100;
   where outcome0>.;
   class outcome0 outcome1 outcome3 outcome6;
	fcs logistic(outcome1 = trt                       / details);
	fcs logistic(outcome3 = outcome1  outcome6 trt    / details);
	fcs logistic(outcome6 = outcome3  outcome1 trt    / details);
   var trt outcome0 outcome1 outcome3 outcome6 ;
run;	

** transform imputed datasets to long format;
data schiz_vert2;
	set ImputedDatasets;
		array out[3] outcome1 outcome3 outcome6;
		do x  = 1 to 3;
			week = (x=1) + 3*(x=2) + 6*(x=3);
			cweek = week;
			y = out[x];
			output;
		end;
	drop outcome1 outcome3 outcome6 x;
run;

** analyze imputed datasets with GEE;
ods html select none;
ods output GEEEmpPEst  = PE GEERCov=CV;
proc genmod data = schiz_vert2 ;
   by _imputation_;
	class id week(ref='1') outcome0(ref='1') cweek;
	model y = trt week trt*week outcome0 /  dist=mult link=clogit;
	repeated subject=id / within=cweek ecovb;
run; 

** remove refernce level parameter estimates and map
   parm values to match work.CV;
data PE2;
 set PE;
 where z ^= .;

  parm = compress(cats(parm,level1),'*');
  select(parm);
  	when("trt")       parm="Prm1";
  	when("week3")     parm="Prm2";
  	when("week6")     parm="Prm3";
  	when("trtweek3")  parm="Prm5";
  	when("trtweek6")  parm="Prm6";
	when("outcome02") parm="Prm8";
	when("outcome03") parm="Prm9";
	when("outcome04") parm="Prm10";
	otherwise;
  end;
run;

ods html close;
ods html newfile=none;

** transpose non-imputed data to long format
   to perform available data analysis that
   uses baseline as a covariate;
data schiz_vert3;
	set schiz_vert;
		array out[3] outcome1 outcome3 outcome6;
		do x  = 1 to 3;
			week = (x=1) + 3*(x=2) + 6*(x=3);
			cweek = week;
			y = out[x];
			output;
		end;
	drop outcome1 outcome3 outcome6 x;
run;

** combined results from multiple imputation analysis;
ods html select ParameterEstimates TestMultStat;
proc mianalyze parms = PE2 covb=CV;
 modeleffects Intercept1 Intercept2 Intercept3 Prm1 Prm2 Prm3 Prm5 Prm6 Prm8 Prm9 Prm10;
 Treatment: TEST Prm1=0,Prm5=0,Prm6=0 / mult; 
run;

** perform standard GEE (valid under MCAR);
ods html select GEEEmpPEst Contrasts;
proc genmod data = schiz_vert3;
	class id week(ref='1') outcome0(ref='1');
	model y = trt week trt*week outcome0/  dist=mult link=clogit;
	repeated subject=id / ecovb;
	contrast "Treatment" trt 1, trt*week 1 00 -1, trt*week 0 1  -1;
run;  
