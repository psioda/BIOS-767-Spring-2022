*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Analysis of data from the Dental Study;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       dental-data-random-effects.sas                                   
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
%setup(DENTAL-DATA-RANDOM-EFFECTS,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767);

/******************************************************************************************/
/******************************************************************************************/
/******************************** Dataset Processing Code *********************************/
data dental;
	set dat2.dental;

	array age[4] age8 age10 age12 age14;
	do j = 1 to dim(age);
		time = 6 + 2*j;
		cTime = put(time,z3.);
		distance = age[j];
		output;
	end;
	
	drop age: j;
run;

proc sort data=dental;
 by id time;
run;



/******************************************************************************************/
/******************************************************************************************/
/******************************** Testing Random Slopes *********************************/

ods noptitle; ods graphics / reset noborder;
ods html path = "&outpath." file="Dental-Mixed-Effects-Model-Analysis1.html" nogtitle;

title1 j=c "Random Intercept Model";
ods output FitStatistics = work.RandInt;
proc mixed data = dental method=reml noclprint;
	class gender(ref='F') cTime id;
	model distance = gender time*gender / noint solution ;
	random intercept / subject=id g gcorr v vcorr;
	repeated cTime / subject=id group=gender r rcorr;
run;
quit;

title1 j=c "Random Intercept/Slope Model";
ods output FitStatistics = work.RandIntSlp;
proc mixed data = dental method=reml noclprint;
	class gender(ref='F') cTime id;
	model distance = gender time*gender / noint solution ;
	random intercept time / type=un subject=id g gcorr v vcorr;
	repeated cTime / subject=id group=gender r rcorr;
run;
quit;

data LRT;
 merge work.RandInt(rename=(Value=RandInt))
	   work.RandIntSlp(rename=(Value=RandSlp));
 by descr;
 if descr = '-2 Res Log Likelihood' then do;
   LRT         = RandInt - RandSlp;
   CritValue   = 5.14;
   RejectNull  = (LRT>CritValue);
 end;
run;

title1 j=c "Random Effects Model Selection Results";
proc print data = LRT noobs; 
run;

ods html close;


/******************************************************************************************/
/******************************************************************************************/
/******************************** Comparing Models *********************************/ 
%macro model_select_RE;
	ods exclude all;
	ods output FitStatistics = work.&name.;
	proc mixed data = dental method=reml noclprint;
		class gender cTime id;
		model distance = gender time*gender / noint;
		&random.;
		&repeated.;
	run;
	quit;
	ods exclude none;
%mend;

%let name     = Model1;
%let random   = random intercept time / subject=id type=un;
%let repeated = repeated cTime        / subject=id type=vc group=gender;
%model_select_RE;

%let name     = Model2;
%let random   = random intercept time / subject=id type=un;
%let repeated = repeated cTime        / subject=id type=vc;
%model_select_RE;

%let name     = Model3;
%let random   = random intercept time / subject=id type=un ;
%let repeated = repeated cTime        / subject=id type=ar(1);
%model_select_RE;

%let name     = Model4;
%let random   = random intercept time / subject=id type=un group=gender ;
%let repeated = repeated cTime        / subject=id type=vc group=gender;
%model_select_RE;

%let name     = Model5;
%let random   = random intercept time / subject=id type=un;
%let repeated = repeated cTime        / subject=id local type=ar(1);
%model_select_RE;


/******************************************************************************************/
/******************************************************************************************/
/*************************************** BLUP Estimation *********************************/



ods noptitle; ods graphics / reset noborder;
ods html path = "&outpath." file="Dental-Mixed-Effects-Model-Analysis2.html" nogtitle;

ods output Estimates = work.blups1;
proc mixed data = dental method=reml noclprint;
	class gender(ref='F') cTime id;
	model distance = gender time*gender / noint solution outpred=blupsAll ;
	random intercept time / subject=id type=un;
	repeated cTime   / subject=id type=vc group=gender;

	estimate 'Sub=1;Sex=F;Time=0'  gender 0 1 time*gender 0 8  | intercept 1 time  8 / subject 1 cl;
	estimate 'Sub=1;Sex=F;Time=0'  gender 0 1 time*gender 0 9  | intercept 1 time  9 / subject 1 cl;
	estimate 'Sub=1;Sex=F;Time=0'  gender 0 1 time*gender 0 10 | intercept 1 time 10 / subject 1 cl;
	estimate 'Sub=1;Sex=F;Time=0'  gender 0 1 time*gender 0 11 | intercept 1 time 11 / subject 1 cl;
	estimate 'Sub=1;Sex=F;Time=0'  gender 0 1 time*gender 0 12 | intercept 1 time 12 / subject 1 cl;
	estimate 'Sub=1;Sex=F;Time=0'  gender 0 1 time*gender 0 13 | intercept 1 time 13 / subject 1 cl;
	estimate 'Sub=1;Sex=F;Time=0'  gender 0 1 time*gender 0 14 | intercept 1 time 14 / subject 1 cl;
run;
quit;

title "Empirical BLUPs";
proc print data = Blups1 noobs;
	var label estimate lower upper;
run;

proc print data = blupsAll(obs=4) noobs;
	var id gender time pred lower upper;
run;

ods html close;



/*** making plots by using the OUTPM and OUTPRED options ***/

** create dataset with extra observations to compute estimated means;
data dental_mean;
 set dental end=last;
 
 output;

 if last=1 then do;
	distance = .;
	do gender = 'M', 'F';
	do time = 8 to 12 by 0.1;
		output;
	end;
	end;

 end;
run;

proc mixed data = dental_mean method=reml noclprint;
	class gender(ref='F') cTime id;
	model distance = gender time*gender / noint solution outpm=means_all;
	random intercept time / subject=id type=un;
	repeated cTime   / subject=id type=vc group=gender;
run;
quit;

** remove duplicates;
proc sort data = means_all out = means_all2(keep=gender time pred lower upper) nodupkey;
 by gender time;
run;

proc format;
 value $ gend
  'M' = 'Male'
  'F' = 'Female';
run;

** make simple plot;
proc sgplot data = means_all2;
 format gender $gend.;
 label gender = 'Gender';
 series x=time y=pred / group=gender markerattrs=(symbol=circleFilled);
 band   x=time lower=lower upper=upper / group=gender transparency=0.3;
 xaxis label='Time (years)';
 yaxis label='Estimated Mean';
run;

** create dataset with extra observations to compute predicted means;
data dental_pred;
 set dental(rename=(time=t));
 by id;

 time=t;
 output;

    ctime='999';
	distance = .;
	do time = t+0.1 to t+1.9 by 0.1;
		output;
	end;

 drop t;
run;
proc mixed data = dental_pred method=reml noclprint;
	class gender(ref='F') cTime id;
	model distance = gender time*gender / noint solution outpred=pred_all;
	random intercept time / subject=id type=un;
	repeated cTime   / subject=id type=vc group=gender;
run;
quit;


** remove duplicates;
proc sort data = pred_all out = pred_all2(keep=id gender time pred lower upper) nodupkey;
 by id gender time;
run;

proc format;
 value $ gend
  'M' = 'Male'
  'F' = 'Female';
run;

** make simple plot;
proc sgpanel data = pred_all2 noautolegend;
 format gender $gend.;
 label gender = 'Gender';
 panelby gender;
 series x=time y=pred / group=id lineattrs=(pattern=1) markerattrs=(symbol=circleFilled);
 colaxis label='Time (years)';
 rowaxis label='Estimated Mean';
run;
