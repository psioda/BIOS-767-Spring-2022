*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Process data from the Schizophrenia Study;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       schizophrenia-data-glmm.sas                                   
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
%setup(SCHIZOPHRENIA-DATA-GLMM,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767);

ods html close;
ods html newfile=none;


data schiz;
 set dat2.schiz;
 sqrtWeek = sqrt(week);
run;

proc glimmix data = schiz method=quad(qpoints=5) noclprint ;
	class id;
	model modWorse(event='1') = trt sqrtWeek trt*sqrtWeek  
     / solution dist=binary link=logit ;
	random intercept / subject=id;
run; 

/* *** random slopes model ***;
proc glimmix data = schiz method=quad(qpoints=5) noclprint ;
	class id;
	model modWorse(event='1') = trt sqrtWeek trt*sqrtWeek  
     / solution dist=binary link=logit;
	random intercept sqrtWeek / subject=id;
run; 
*/

/*** For Typical Subject Plots ***/
ods html exclude all;
ods output Estimates = work.Estimates;
proc glimmix data = schiz method=quad(qpoints=5) noclprint ;
	class id;
	model modWorse(event='1') = trt sqrtWeek trt*sqrtWeek  
     / solution dist=binary link=logit;
	random intercept / subject=id;
	%macro e;
	 %do trt = 0 %to 1;
	 %do w   = 0 %to 60;
	 	%let wk   = %sysevalf((&w./10));
		%let swk  = %sysevalf(&wk**0.5);
		%let tswk = %sysevalf(&swk.*&trt.);
		estimate "&trt - &swk. - &wk." intercept 1 trt &trt. sqrtWeek &swk. trt*sqrtWeek &tswk.;
	 %end;
	 %end;
	%mend;
	%e;
run; 
ods html exclude none;

data work.plotData;
 set work.estimates;
	 trt = scan(label,1,'-');
	 swk = input(scan(label,2,'-'),best.);
	 wk  = input(scan(label,3,'-'),best.);
	 prob = logistic(estimate);

	 label trt      = 'Treatment Group'
	 	   swk      = 'Time (sqrt[Weeks])'
		   wk       = 'Time (Weeks)'
		   prob     = 'Probability'
		   estimate = 'Logit(Probability');
run;

ods html close;
ods html newfile=none;
ods layout start rows=2 columns=2 ;
ods region;
	proc sgplot data = work.plotData;
	 series x=swk y=estimate / group=trt;
	run;
ods region;
	proc sgplot data = work.plotData;
	 series x=wk y=estimate / group=trt;
	run;
ods region;
	proc sgplot data = work.plotData;
	 series x=swk y=prob / group=trt;
	run;
ods region;
	proc sgplot data = work.plotData;
	 series x=wk y=prob / group=trt;
	run;
ods layout end;
ods html close;



/*** For Subject-Specific Subject Plots ***/
ods html exclude all;
ods output Estimates = work.Estimates SolutionR=work.RandEffects;
proc glimmix data = schiz method=quad(qpoints=5) noclprint ;
	class id;
	model modWorse(event='1') = trt sqrtWeek trt*sqrtWeek  
     / solution dist=binary link=logit;
	random intercept / subject=id solution cl;
	%macro e;
	 %do trt = 0 %to 1;
	 %do w   = 0 %to 60;
	 	%let wk   = %sysevalf((&w./10));
		%let swk  = %sysevalf(&wk**0.5);
		%let tswk = %sysevalf(&swk.*&trt.);
		estimate "&trt - &swk. - &wk." intercept 1 trt &trt. sqrtWeek &swk. trt*sqrtWeek &tswk.;
	 %end;
	 %end;
	%mend;
	%e;
run; 
ods html exclude none;

proc SQL noprint;
 create table work.randEffects2 as
 	select a.id,a.trt,b.estimate as bi
 	from work.schiz as a left join work.randEffects as b
 	on a.id = scan(b.subject,2,' ')
	order by trt;
quit;

proc surveyselect data = work.randEffects2 out = work.randEffects3  
                  n=15 method=srs noprint seed=2;
 strata trt;
run;

data work.plotData;
 set work.estimates;
	 trt = input(scan(label,1,'-'),best.);
	 swk = input(scan(label,2,'-'),best.);
	 wk  = input(scan(label,3,'-'),best.);
	 drop label;
run;

proc SQL noprint;
 create table work.plotData2 as
 	select a.*,b.bi,b.id 
 	from work.plotData as a left join work.randEffects3 as b
 	on a.trt = b.trt
	order by trt,id,wk;
quit;

data work.plotData3;
 set work.plotData2;

 estimate = estimate + bi;
 prob     = logistic(estimate);

	 label trt      = 'Treatment Group'
	 	   swk      = 'Time (sqrt[Weeks])'
		   wk       = 'Time (Weeks)'
		   prob     = 'Probability'
		   estimate = 'Logit(Probability');
run;

ods html close;
ods html newfile=none;
ods layout start rows=2 columns=2;
ods region;
	proc sgpanel data = work.plotData3 noautolegend;
	 panelby trt;
	 series x=swk y=estimate / group=id lineattrs=(color=lightblue pattern=1);
	run;
ods region;
	proc sgpanel data = work.plotData3 noautolegend;
	 panelby trt;
	 series x=wk y=estimate / group=id lineattrs=(color=lightblue pattern=1);
	run;
ods region;
	proc sgpanel data = work.plotData3 noautolegend;
	 panelby trt;
	 series x=swk y=prob / group=id lineattrs=(color=lightblue pattern=1);
	run;
ods region;
	proc sgpanel data = work.plotData3 noautolegend;
	 panelby trt;
	 series x=wk y=prob / group=id lineattrs=(color=lightblue pattern=1);
	run;
ods layout end;
ods html close;


/*** caterpillar plot ***/
ods html close;
ods html newfile=none;
proc sort data = work.RandEffects out = work.PlotData;
 by estimate;
run;

ods graphics / height=6in width=4in;
proc sgplot data = work.PlotData noautolegend;
 highlow y=subject low=lower high=upper ;
 series y=subject x=estimate / lineattrs=(thickness=3 color=red);
 yaxis display=(noticks novalues) label = 'Subject';
 xaxis label='Random Intercept';
run;





/*** compare estimation methods ***/
ods html close;
ods html newfile=none;

ods html select ParameterEstimates ModelInfo ;
/** Equivalent to one quadrature point **/
proc glimmix data = schiz method=laplace noclprint ;
	class id;
	model modWorse(event='1') = trt sqrtWeek trt*sqrtWeek  
     / solution dist=binary link=logit;
	random intercept / subject=id;
run; 

ods html select ParameterEstimates ModelInfo ;
proc glimmix data = schiz method=quad(qpoints=1) noclprint ;
	class id;
	model modWorse(event='1') = trt sqrtWeek trt*sqrtWeek  
     / solution dist=binary link=logit;
	random intercept / subject=id;
run; 


ods html select ParameterEstimates ModelInfo ;
proc glimmix data = schiz method=quad(qpoints=50) noclprint ;
	class id;
	model modWorse(event='1') = trt sqrtWeek trt*sqrtWeek  
     / solution dist=binary link=logit;
	random intercept / subject=id;
run;
 
ods html select ParameterEstimates ModelInfo ;
/** default = Residual Pseudo Likelihood **/
proc glimmix data = schiz noclprint ;
	class id;
	model modWorse(event='1') = trt sqrtWeek trt*sqrtWeek  
     / solution dist=binary link=logit;
	random intercept / subject=id;
run; 

ods html close;


/*** compare quadrature points ***/
%macro qPoints(qMax=5);
ods html close;
ods html newfile=none;

	proc datasets library=work noprint;
		delete PE;
	run;
	quit;

	%do q = 1 %to &qMax.;
		ods html exclude all;
		ods output ParameterEstimates = PE&q.;
		proc glimmix data = schiz method=quad(qpoints=&q.) noclprint ;
			class id;
			model modWorse(event='1') = trt sqrtWeek trt*sqrtWeek  
		     / solution dist=binary link=logit;
			random intercept / subject=id;
		run;
		ods html exclude none;

		data PE&q.;
		 set PE&q.;
		  qPoints = &q.;
		run;

		proc append data = PE&q. base=PE force; run; quit;
	%end;
	
	
	proc sgplot data = PE;
	 series x=qPoints y=Estimate / group=effect;
	run;
ods html close;
%mend;

%qPoints(qMax=8);
