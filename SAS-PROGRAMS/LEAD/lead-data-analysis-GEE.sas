*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Analysis of data from the TLC Study;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       lead-data-analysis-GEE.sas                                   
*  LANGUAGE:       SAS, VERSION 9.4                                  
*                                                                   
*  NAME:           Matthew Psioda                               
*  DATE COMPLETE:  2021-03-20                                           
*-------------------------------------------------------------------
*                                                                   
*  Modification History:       
*                                                                                                                         
*  NAME:                         << Insert Name of Primary Programmer >>                               
*  DATE COMPLETE:                << YYYY-MM-DD >>   
*  DESCRIPTION OF MODIFICATION:  << Please insert 2-3 sentences >>                                                               
********************************************************************;
%include "C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767\SAS-MACROS\SETUP.SAS";
%setup(LEAD-DATA-ANALYSIS-GEE,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767);


/******************************************************************************************/
/******************************************************************************************/
/******************************** Dataset Processing Code *********************************/

data lead;
  set dat2.tlc;
	array mn[4] y0 y1 y4 y6;
	do j = 1 to dim(mn);
		bloodlevel = mn[j];
		if bloodlevel > . then lowLead    = (bloodlevel<20);
		week       = 0*(j=1) + 
					 1*(j=2) + 
					 4*(j=3) + 
					 6*(j=4);
		cWeek = put(week,z4.);
		output;
	end;
	drop j y:;
run;


proc sort data=lead;
 by trt week id ;
run;

/*

proc freq data = lead noprint;
 by trt week  ;
 table lowLead / out = dist;
run;

data dist;
 set dist;
 prop        = percent / 100;
 logitProp = log(prop/(1-prop));
run;

proc format;
 value $ trt
  'A' = 'Succimer'
  'P' = 'Placebo';
run;

ods html newfile=proc;
proc sgplot data = dist;
 where lowLead=1 and week>0;
 scatter x=week y=prop / group=trt markerattrs=(symbol=circleFilled size=10);
	yaxis label = 'Pr(Lead Level < 20)';
	xaxis label = 'Weeks';
	format trt $trt.;
	label trt = 'Treatment Group';
run;

ods html newfile=proc;
proc sgplot data = dist;
 where lowLead=1 and week>0;
 scatter x=week y=logitProp / group=trt markerattrs=(symbol=circleFilled size=10);
	yaxis label = 'logit[Pr(Lead Level < 20)]';
	xaxis label = 'Weeks';
	format trt $trt.;
	label trt = 'Treatment Group';
run;

*/






proc sort data=lead;
	by id week;
run;


/*** Simple GEE Code /w Diagnostic Plots ***/
/*** Produce model-based covariance estimates ***/
/*** Estimate overdispersion parameter for model-based covariance ***/
ods html newfile=proc;
proc genmod data=lead plots=(all) ;
	where week > 0;
	class id trt(ref='P') cWeek;
	model lowlead(event='1') = trt week trt*week 
		/ dist=binomial link=logit scale=pearson aggregate;
	repeated subject=id / within=cWeek type=exch corrw modelse;
run;



/*** Simple GEE Code /w diagnostic dataset creation ***/
proc genmod data=lead plots=(none);
	where week > 0 cWeek;
	class id trt(ref='P');
	model lowlead(event='1') = trt week trt*week 
		/ dist=binomial link=logit;
	repeated subject=id / within=cWeek type=exch;

	output out = gee_diagnostics 
	cooksd=cooksd     clustercooksd=clustercooksd 
    leverage=leverage cleverage=cleverage;
run;



proc sort data = gee_diagnostics;
 by descending clustercooksd;
run;

title "Largest Cluster Cook's Distances Values";
proc print data = gee_diagnostics(obs=12) noobs; run;



proc sort data = gee_diagnostics;
 by descending cooksd;
run;
title "Largest Cook's Distances Values";
proc print data = gee_diagnostics(obs=12) noobs; run;




/*** Simple GEE Code using OR to Model Covariance ***/
proc genmod data=lead plots=(none) ;
	where week > 0;
	class id trt(ref='P') cWeek;
	model lowlead(event='1') = trt week trt*week 
		/ dist=binomial link=logit scale=pearson aggregate;
	repeated subject=id / within=cWeek logor=fullclust covb;
run;


proc genmod data=lead plots=(none) ;
	where week > 0;
	class id trt(ref='P') cWeek;
	model lowlead(event='1') = trt week trt*week 
		/ dist=binomial link=logit scale=pearson aggregate;
	repeated subject=id / within=cWeek logor=logorvar(trt) covb ;
run;

 
