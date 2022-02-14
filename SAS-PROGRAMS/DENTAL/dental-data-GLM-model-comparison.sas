*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Analysis of data from the Dental Study;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       dental-data-GLM-model-comparison.sas                                   
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
%setup(DENTAL-DATA-GLM-model-comparison,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767);

/******************************************************************************************/
/******************************************************************************************/
/******************************** Dataset Processing Code *********************************/
data dental;
	set dat2.dental end=last;

	array age[4] age8 age10 age12 age14;
	do j = 1 to dim(age);
		time     = 6 + 2*j;
		timeLSP  = max(time-10,0);
		distance = age[j];
		output;
	end;

	if last;
	do gender = 'F','M';
		do time = 8 to 14 by 0.05;
		  timeLSP  = max(time-10,0);
		  distance=.;
		  output;
		end;
	end;
	
	drop age: j;
run;

proc sort data=dental;
 by id time;
run;


option papersize=("8.5in","11.0in") topmargin=0.1in rightmargin=0.1in leftmargin=0.1in bottommargin=0.1in;
ods noptitle; ods graphics / reset noborder;

/*****************************************
		Linear Splines
 *****************************************/
ods html path = "&outpath." file="Dental-General-Linear-Model-Linear-Spline-Analysis.html" nogtitle;

title1 j=c "Analysis of Dental Study Data -- ML via PROC MIXED using Linear Splines";
ods output FitStatistics = FIT_LSP;
proc mixed data = dental method=ML;
	class gender(ref='F') id;
	model distance = gender time time*gender 
                            timeLSP timeLSP*gender / solution outpm=estMeansLSP;
	repeated / subject=id type=cs; 
run;
quit;
ods html close;

proc sort data = estMeansLSP out = estMeansLSP(keep = gender time pred Lower Upper) nodupkey;
 by gender time;
run;

ods html path = "&outpath." file="Dental-General-Linear-Model-Linear-Spline-Analysis2.html" nogtitle;

title1 j=c "Analysis of Dental Study Data -- ML via PROC GLIMMIX using Linear Splines";
proc glimmix data = dental method=MSPL;
	class gender(ref='F') id;
	model distance = gender  time time*gender 
                             timeLSP timeLSP*gender  /  solution;
	random _residual_ / subject=id type=cs; 
run;
quit;

ods html close;

/*****************************************
		Natural Cubic Spline 
 *****************************************/
ods html path = "&outpath." file="Dental-General-Linear-Model-Natural-Cubic-Spline-Analysis.html" nogtitle;
	title1 j=c "Analysis of Dental Study Data -- ML via GLIMMIX using Natural Cubic Splines";
	ods output FitStatistics = FIT_NCSP;
	proc glimmix data = dental method=MSPL;
		class gender(ref='F') id;
		effect tspline1 = spline(time/basis=TPF naturalcubic );
		effect tspline2 = spline(time/basis=TPF naturalcubic );
		model distance = gender tspline1 tspline2*gender / noint solution;
		random _residual_ / subject=id type=cs; 
		output out = estMeansNCSP pred=pred lcl=lower ucl=upper;
	run;
	quit;
ods html close;

proc sort data = estMeansNCSP out = estMeansNCSP(keep = gender time pred Lower Upper) nodupkey;
 by gender time;
run;


/*****************************************
		Linear Polynomial
 *****************************************/
ods html path = "&outpath." file="Dental-General-Linear-Model-Linear-Polynomial.html" nogtitle;

title1 j=c "Analysis of Dental Study Data -- ML via PROC MIXED using Linear Polynomial";
ods output FitStatistics = FIT_LP;
proc mixed data = dental method=ML;
	class gender(ref='F') id;
	model distance = gender time time*gender / solution outpm=estMeansLP;
	repeated / subject=id type=cs; 
run;
quit;

ods html close;

proc sort data = estMeansLP out = estMeansLP(keep = gender time pred Lower Upper) nodupkey;
 by gender time;
run;


/*****************************************
		Quadratic Polynomial
 *****************************************/
ods html path = "&outpath." file="Dental-General-Linear-Model-Quadratic-Polynomial.html" nogtitle;

title1 j=c "Analysis of Dental Study Data -- ML via PROC MIXED using Quadratic Polynomial";
ods output FitStatistics = FIT_QP;
proc mixed data = dental method=ML;
	class gender(ref='F') id;
	model distance = gender time time*gender 
                            time*time time*time*gender / solution outpm=estMeansQP;
	repeated / subject=id type=cs; 
run;
quit;

ods html close;

proc sort data = estMeansQP out = estMeansQP(keep = gender time pred Lower Upper) nodupkey;
 by gender time;
run;


/*****************************************
		Cubic Polynomial
 *****************************************/
ods html path = "&outpath." file="Dental-General-Linear-Model-Cubic-Polynomial.html" nogtitle;

title1 j=c "Analysis of Dental Study Data -- ML via PROC MIXED using Cubic Polynomial";
ods output FitStatistics = FIT_CP;
proc mixed data = dental method=ML;
	class gender(ref='F') id;
	model distance = gender time time*gender 
                            time*time time*time*gender
                            time*time*time time*time*time*gender/ solution outpm=estMeansCP;
	repeated / subject=id type=cs; 
run;
quit;

ods html close;

proc sort data = estMeansCP out = estMeansCP(keep = gender time pred Lower Upper) nodupkey;
 by gender time;
run;


/*****************************************
		Saturated Model
 *****************************************/
ods html path = "&outpath." file="Dental-General-Linear-Model-Saturated.html" nogtitle;

title1 j=c "Analysis of Dental Study Data -- ML via PROC MIXED using Saturated Model";
ods output FitStatistics = FIT_SAT;
proc mixed data = dental method=ML;
    where distance > .;
	class gender time id;
	model distance = gender*time / noint solution outpm=estMeansSAT;
	repeated / subject=id type=cs; 
run;
quit;

ods html close;

proc sort data = estMeansSAT out = estMeansSAT(keep = gender time pred Lower Upper) nodupkey;
 by gender time;
run;

/*****************************************
	Produce Table of Fit Statistics
 *****************************************/
/*
 data fit;
	 set 	FIT_LSP(in=a)
	 		FIT_NCSP(in=b)
			FIT_LP(in=c)
			FIT_QP(in=d)
			FIT_CP(in=e)
	        FIT_SAT(in=f);
	if a then do; Model = '4:Linear Spline       '; p = '6 + 2'; end;
	if b then do; Model = '5:Natural Cubic Spline'; p = '6 + 2'; end;
	if c then do; Model = '1:Linear Polynomial   '; P = '4 + 2'; end;
	if d then do; Model = '2:Quadratic Polynomial'; p = '6 + 2'; end;
	if e then do; Model = '3:Cubic Polynomial    '; p = '8 + 2'; end;
	if f then do; Model = '6:Saturated Model     '; p = '8 + 2'; end;

	length Crit $20;
	select(upcase(Descr));
	 when('-2 LOG LIKELIHOOD')         do; Crit='n2LL'; end;
	 when('AIC (SMALLER IS BETTER)')   do; Crit='AIC';  end;
	 when('AICC (SMALLER IS BETTER)')  do; Crit='AICC'; end;
	 when('BIC (SMALLER IS BETTER)')   do; Crit='BIC';  end;
	 otherwise delete;
	end;
run;

proc sort data=fit;
 by Model p Crit Descr ;
run;

proc transpose data=fit out = fit2(drop=_:);
 by Model p;
 id Crit;
 idlabel Descr;
 var value;
run;

ods html path = "&outpath." file="Dental-General-Linear-Model-Comparision.html";
	title1 j=c "Analysis of Dental Study Data -- ML via PROC MIXED using Saturated Model";
	proc print data = fit2 noobs label; 
		label p = 'Number of Parameters';
		format n2LL AIC AICC BIC 8.2;
	run;
ods html close;
*/



/*****************************************
	Produce Graphs of Fitted Curves
 *****************************************/

data curves;
 set 	estMeansLSP(in=a)
 		estMeansNCSP(in=b)
		estMeansLP(in=c)
		estMeansQP(in=d)
		estMeansCP(in=e)
        estMeansSAT(in=f);
	if a then Model = '4:Linear Spline       ';
	if b then Model = '5:Natural Cubic Spline';
	if c then Model = '1:Linear Polynomial   ';
	if d then Model = '2:Quadratic Polynomial';
	if e then Model = '3:Cubic Polynomial    ';
	if f then Model = '6:Saturated Model     ';

run;

proc sort data=curves nodupkey;
 by Model time gender;
run;



proc format;
 value $ gend
  'F' = 'Female'
  'M' = 'Male';
run;

option papersize=("8.2in","8.2in") topmargin=0.1in rightmargin=0.1in leftmargin=0.1in bottommargin=0.1in;
ods graphics / height=8in width=8in;

title;
ods pdf file = "&outpath.&slash.Dental-General-Linear-Model-Model-Comparision-Graphic.pdf" nogtitle dpi=200;

 proc sgpanel data = curves;

	panelby Model / novarname;
	series x=time y=pred / group=gender lineattrs=(thickness=2);
	band x=time upper=upper lower=lower / group=gender transparency=0.5 lineattrs=(thickness=2);

	rowaxis label="Mean Distance" grid;
	colaxis label='Age (years)' grid;

	format gender $gend.;
	label gender = 'Gender';
 run;

ods pdf close;
