*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Analyze data from the Schizophrenia Study;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       schizophrenia-data-prop-odds.sas                                   
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

data schiz;
 set dat2.schiz;
 where week not in (2,4,5);
 sqrtWeek = sqrt(week);
run;


/***** GENMOD -- GEE *****/
proc genmod data = schiz ;
	class id week(ref='0');
	model y = trt week trt*week /  dist=mult link=clogit;
	repeated subject=id ;

	contrast "Time Effect"     week 1 0 0 -1,     week 0 1 0 -1,     week 0 0 1 -1,
                           trt*week 1 0 0 -1, trt*week 0 1 0 -1, trt*week 0 0 1 -1;
	contrast "Treatment" trt 1, trt*week 1 0 0 -1, trt*week 0 1 0 -1, trt*week 0 0 1 -1;

run; 

ods html select none;
proc genmod data = schiz ;
	class id week(ref='0');
	model y = trt week trt*week /  dist=mult link=clogit;
	repeated subject=id ;
	output out=estimates pred=mean;
run; 
ods html select all;

proc sort data = estimates nodupkey;
 by week trt mean;
run;

proc transpose data = estimates 
                out = estimates2(drop=_:) prefix=Est delim=_;
 by week;
 id trt _level_;
 var mean;
run;

data probs;
 set estimates2;
  p01 = est0_1;
  p02 = est0_2 - est0_1;
  p03 = est0_3 - est0_2;
  p04 = 1-est0_3;

  p11 = est1_1;
  p12 = est1_2 - est1_1;
  p13 = est1_3 - est1_2;
  p14 = 1-est1_3;
run;

proc report data = probs;
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


data probs2;
 set probs;

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
proc sgpanel data = probs2 ;
 panelby Week / rows=1 columns=4;
 vbar level / response=prob stat=sum group=trt groupdisplay=cluster dataskin=sheen;
 label week = 'Study Week' level = 'Severity Level' trt = 'Treatment Group';
 rowaxis label = 'Probability';
run; 


/**** GLIMMIX - GLMM *****/

proc glimmix data = schiz method=quad(qpoints=10);
	class id week(ref='0');
	model y = trt week trt*week /  dist=mult link=clogit solution;
	output out=estimates_glmm pred(noblup ilink)=mean;

	random intercept /  subject=id ;

	contrast "Time Effect"     week 1 0 0 -1,     week 0 1 0 -1,     week 0 0 1 -1,
                           trt*week 1 0 0 -1, trt*week 0 1 0 -1, trt*week 0 0 1 -1;
	contrast "Treatment" trt 1, trt*week 1 0 0 -1, trt*week 0 1 0 -1, trt*week 0 0 1 -1;

run; 



proc sort data = estimates_glmm nodupkey;
 by week trt mean;
run;

proc transpose data = estimates_glmm 
                out = estimates_glmm2(drop=_:) prefix=Est delim=_;
 by week;
 id trt _level_;
 var mean;
run;

data probs_glmm;
 set estimates_glmm2;
  p01 = est0_1;
  p02 = est0_2 - est0_1;
  p03 = est0_3 - est0_2;
  p04 = 1-est0_3;

  p11 = est1_1;
  p12 = est1_2 - est1_1;
  p13 = est1_3 - est1_2;
  p14 = 1-est1_3;
run;

proc report data = probs_glmm;
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


data probs_glmm2;
 set probs_glmm;

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
proc sgpanel data = probs_glmm2 ;
 panelby Week / rows=1 columns=4;
 vbar level / response=prob stat=sum group=trt groupdisplay=cluster dataskin=sheen;
 label week = 'Study Week' level = 'Severity Level' trt = 'Treatment Group';
 rowaxis label = 'Probability';
run; 



/**** GLIMMIX - GLMM *****/

proc glimmix data = schiz method=quad(qpoints=10);
	class id ;
	model y = trt sqrtWeek trt*sqrtWeek /  dist=mult link=clogit solution;
	output out=estimates_glmmB pred(noblup ilink)=mean;

	random intercept sqrtWeek /  subject=id type=un;

	contrast "Time Effect"  sqrtWeek 1, trt*sqrtWeek 1;
	contrast "Treatment" trt 1, trt*sqrtWeek 1;

run; 

data estimates_glmmB;
 set estimates_glmmB;
 week = sqrtWeek**2;
run;

proc sort data = estimates_glmmB nodupkey;
 by week trt mean;
run;

proc transpose data = estimates_glmmB 
                out = estimates_glmmB2(drop=_:) prefix=Est delim=_;
 by week;
 id trt _level_;
 var mean;
run;

data probs_glmmB;
 set estimates_glmmB2;
  p01 = est0_1;
  p02 = est0_2 - est0_1;
  p03 = est0_3 - est0_2;
  p04 = 1-est0_3;

  p11 = est1_1;
  p12 = est1_2 - est1_1;
  p13 = est1_3 - est1_2;
  p14 = 1-est1_3;
run;

proc report data = probs_glmmB;
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


data probs_glmmB2;
 set probs_glmmB;

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
proc sgpanel data = probs_glmmB2 ;
 panelby Week / rows=1 columns=4;
 vbar level / response=prob stat=sum group=trt groupdisplay=cluster dataskin=sheen;
 label week = 'Study Week' level = 'Severity Level' trt = 'Treatment Group';
 rowaxis label = 'Probability';
run;
