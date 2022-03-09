*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Analysis of data from the Dental Study;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       DENTAL-LMM-COMPARE-TO-R.sas                                   
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
%setup(DENTAL-LMM-COMPARE-TO-R,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767);

ods html newfile=proc;
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

/**** LRT ****/
title1 j=c "Random Intercept Model";
ods output FitStatistics = work.RandInt;
proc mixed data = dental method=reml noclprint;
	class gender(ref='F') cTime id;
	model distance = gender time*gender / noint solution ;
	random intercept / subject=id;
	repeated cTime / subject=id group=gender;
run;
quit;

title1 j=c "Random Intercept/Slope Model";
ods output FitStatistics = work.RandIntSlp;
proc mixed data = dental method=reml noclprint;
	class gender(ref='F') cTime id;
	model distance = gender time*gender / noint solution ;
	random intercept time / type=un subject=id;
	repeated cTime / subject=id group=gender;
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



/**** Covariance Matrices ****/
proc mixed data = dental method=reml noclprint;
	class gender(ref='F') cTime id;
	model distance = gender time*gender / noint solution ;
	random intercept time / type=un subject=id v=(1 20) g ;
	repeated cTime / subject=id group=gender r;
run;
quit;



ods html close;
ods html newfile=none;


/**** Scaled Residuals ****/
proc mixed data = dental method=reml noclprint;
	class gender(ref='F') cTime id;
	model distance = gender time*gender / noint solution vciry residual outpm=work.resid outpred=work.resid2;
	random intercept time / type=un subject=id ;
	repeated cTime / subject=id group=gender;
run;
quit;

proc print data = resid(obs=12); run;
proc print data = resid2(obs=12); run;

proc sgplot data = resid;
 scatter x=scaledDep y=scaledResid;
run;



%macro zero(n);
	%do i=1 %to &n; 
		0 
    %end;
%mend;
%put %zero(5);

option mprint;
ods output Estimates = work.Est;
proc mixed data = dental method=reml noclprint;
	class gender(ref='F') cTime id;
	model distance = gender time*gender / noint solution;
	random intercept time / type=un subject=id ;
	repeated cTime / subject=id group=gender;


	%macro write_est;
	    %do t = 8 %to 14 %by 2;
		%do s = 1 %to 11;
			estimate "eBlup - subject=&s - time=&t" gender 0 1 time*gender 0 &t | intercept 1 time &t / 
      		sub %zero(%eval(&s-1)) 1 cl;
		%end;
		%do s = 11 %to 27;
			estimate "eBlup - subject=&s - time=&t" gender 1 0 time*gender &t 0 | intercept 1 time &t / 
      		sub %zero(%eval(&s-1)) 1 cl;
		%end;
		%end;
	%mend; 
	%write_est;
run;
quit;
