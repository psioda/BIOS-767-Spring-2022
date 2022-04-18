*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Analyze data from the Schizophrenia Study;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       schizophrenia-data-gen-logit.sas                                   
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
%setup(SCHIZOPHRENIA-DATA-GEN-LOGIT,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767);

ods html newfile=proc;


ods html newfile=proc;

data schiz;
 set dat2.schiz;
 where week not in (2,4,5);
 sqrtWeek = sqrt(week);
run; proc sort; by trt; run;


/*** proportional odds model in GLIMMIX ***/
proc glimmix data = schiz method=quad(qpoints=10);
	nloptions GCONV=1e-12;
	class id ;
	model y = sqrtWeek trt*sqrtWeek /  dist=mult link=clogit solution;
	output out=estimates_glmmB pred(noblup ilink)=mean;
	random intercept /  subject=id ;

	contrast "Time Effect"  sqrtWeek 1, trt*sqrtWeek 1;
	contrast "Treatment"    trt*sqrtWeek 1;
run; 



/*** proportional odds model in NLMIXED ***/
/** Step 1 -- Determine Initial Parameter Values **/
ods html select none;
ods output ParameterEstimates = PE;
proc logistic data = schiz;
 model y(ref='1') = trt*sqrtWeek sqrtWeek / link=clogit;
run;
ods html select all;

data input_parms;
 set pe;
  parameter = compress(cats(variable,classval0),'*');
  keep parameter estimate;
run; 
proc print data = input_parms noobs; run;

data input_parms2;
 set input_parms end=last;
  parameter = cats("parm_",parameter);
  output;
	if last;
	parameter='rInt_var';
	estimate = 4;
	output;
run;
proc print data = input_parms2 noobs; run;



proc nlmixed data = schiz absgconv=1e-12 gconv=1e-12 method=GAUSS qpoints=10;

	/** declarative statements about parameters **/
	parms / data=input_parms2;
	bounds rInt_var >= 0;

	/** programming statements ***/
	theta1 = exp(parm_intercept1 + parm_sqrtWeek*sqrtWeek + parm_trtsqrtWeek*sqrtWeek*trt + b0);
	theta2 = exp(parm_intercept2 + parm_sqrtWeek*sqrtWeek + parm_trtsqrtWeek*sqrtWeek*trt + b0);
	theta3 = exp(parm_intercept3 + parm_sqrtWeek*sqrtWeek + parm_trtsqrtWeek*sqrtWeek*trt + b0);

	pi1  = theta1 / (1+theta1);
	pi2  = theta2 / (1+theta2) - pi1;
	pi3  = theta3 / (1+theta3) - pi1-pi2;
	pi4  = (1-pi1-pi2-pi3);

	logLikelihood = (y=1)*log(pi1) + (y=2)*log(pi2) + (y=3)*log(pi3) + (y=4)*log(pi4);

	/** distribution statements**/
	random b0 ~ normal(0,rInt_var) subject=id;
	model y ~ general(logLikelihood);

	/** contrast statements **/
	contrast "Time Effect"  parm_sqrtWeek , parm_trtsqrtWeek ;
	contrast "Treatment"    parm_trtsqrtWeek ;
run;




/*** generalized logit model in NLMIXED ***/
/** Step 1 -- Determine Initial Parameter Values **/
ods html select none;
ods output ParameterEstimates = PE;
proc logistic data = schiz;
 model y(ref='1') = trt*sqrtWeek sqrtWeek / link=glogit;
run;
ods html exclude none;

data input_parms;
 set pe;
  parameter = compress(cats(variable,response),'*');
  keep response parameter estimate;
run; 


data input_parms2;
 set input_parms end=last;
  output;

  if last;

  parameter='rInt_var';
  estimate = 3;
  output;
run;


ods output AdditionalEstimates = estimates_glogit;
proc nlmixed data = schiz absgconv=1e-12 gconv=1e-12;

	/** declarative statements about parameters **/
	parms / data=input_parms2;
	bounds rInt_var >= 0;

	/** data-specific programming statements **/
	odds2 = exp(intercept2 + sqrtWeek2*sqrtWeek + trtsqrtWeek2*sqrtWeek*trt + b0);
	odds3 = exp(intercept3 + sqrtWeek3*sqrtWeek + trtsqrtWeek3*sqrtWeek*trt + b0);
	odds4 = exp(intercept4 + sqrtWeek4*sqrtWeek + trtsqrtWeek4*sqrtWeek*trt + b0);

	theta = odds2 + odds3 + odds4;
	pi1    = 1 / (1 + theta);
	pi2    = odds2*pi1;
	pi3    = odds3*pi1;
	pi4    = odds4*pi1;

	/** distributional statements **/
	random b0 ~ normal(0,rInt_var) subject=id;
	model y ~ general((y=1)*log(pi1) + (y=2)*log(pi2) + 
                      (y=3)*log(pi3) + (y=4)*log(pi4));

	/** Construct non-linear functions of the parameters to estimate.
		These cannot be based on variables in the input dataset. **/
	
	%macro est;
		option ls=120;
		option mprint;
		%do w = 0 %to 6;
		%do t  = 0 %to 1;
			%let sw  = %sysfunc(sqrt(&w.));
			c&w.&t._odds2 = exp(intercept2 + sqrtWeek2*&sw. + trtsqrtWeek2*&sw.*&t.);
			c&w.&t._odds3 = exp(intercept3 + sqrtWeek3*&sw. + trtsqrtWeek3*&sw.*&t.);
			c&w.&t._odds4 = exp(intercept4 + sqrtWeek4*&sw. + trtsqrtWeek4*&sw.*&t.);
			c&w.&t._theta = c&w.&t._odds2 + c&w.&t._odds3 + c&w.&t._odds4;
			c&w.&t._pi1    = 1 / (1 + c&w.&t._theta);
			c&w.&t._pi2    = c&w.&t._odds2*c&w.&t._pi1;
			c&w.&t._pi3    = c&w.&t._odds3*c&w.&t._pi1;
			c&w.&t._pi4    = c&w.&t._odds4*c&w.&t._pi1;
			estimate "y=1|week=&w.|trt=&t." c&w.&t._pi1;
			estimate "y=2|week=&w.|trt=&t." c&w.&t._pi2;
			estimate "y=3|week=&w.|trt=&t." c&w.&t._pi3;
			estimate "y=4|week=&w.|trt=&t." c&w.&t._pi4;
		%end;
		%end;
		option nomprint;
	%mend;
	%est;

run;



data estimates_glogit2;
 set estimates_glogit;

 y    = scan(scan(label,1,'|'),2,'=');
 week = input(scan(scan(label,2,'|'),2,'='),best.);
 trt  = input(scan(scan(label,3,'|'),2,'='),best.);
run;

proc sort data = estimates_glogit2 nodupkey;
 by week trt estimate;
run;

proc transpose data = estimates_glogit2 
                out = estimates_glogit3(drop=_:) prefix=p;
 by week;
 id trt y;
 var estimate;
run;

proc report data = estimates_glogit3;
 column( week ("Placebo" p01-p04) ("Treatment" p11-p14));

 define week / display "Study Week";
 define p01 / display "Pr(Normal\Borderline)";
 define p02 / display "Pr(Moderate)";
 define p03 / display "Pr(Marked)";
 define p04 / display "Pr(Severe\Extreme)";

 define p11 / display "Pr(Normal\Borderline)";
 define p12 / display "Pr(Moderate)";
 define p13 / display "Pr(Marked)";
 define p14 / display "Pr(Severe\Extreme)";

 format p0: p1: 6.3;
run;


data estimates_glogit4;
 set estimates_glogit3;

  array prb[2,4] p01-p04 p11-p14;
  do r = 1 to 2;
	  do c = 1 to 4;
		   level = c;
		   trt  = (r=2);
		   prob = prb[r,c];
		   output;
	  end;
  end;
  drop r c p01-p04 p11-p14;
run;

ods graphics / height=4in width=10in;
proc sgpanel data = estimates_glogit4 ;
 panelby Week / rows=1 columns=4;
 where week in (0,1,3,6);
 vbar level / response=prob stat=sum group=trt groupdisplay=cluster dataskin=sheen;
 label week = 'Study Week' level = 'Severity Level' trt = 'Treatment Group';
 rowaxis label = 'Probability';
run;
