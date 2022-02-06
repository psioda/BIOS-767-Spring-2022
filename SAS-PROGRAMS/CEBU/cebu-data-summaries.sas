*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Summarize data from the CEBU Study;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       CEBU-data-summaries.sas                                   
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
%setup(CEBU-DATA-SUMMARIES,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767);


/** Table of Number of Visits for Participants **/
data cebu;
 set dat2.cebu;
  output;
  male = 2;
  output;
run;

proc freq data = cebu noprint;
	table male*id / out = numMeasures(drop=percent rename=(count=numMeasures));
run;
proc freq data = numMeasures noprint;
    by male;
	table numMeasures / out = distNumMeasures outcum;
run;

data table1;
 merge distNumMeasures(where=(male=0) rename=(count=countA percent=percentA cum_pct=cPercentA))
       distNumMeasures(where=(male=1) rename=(count=countB percent=percentB cum_pct=cPercentB))
	   distNumMeasures(where=(male=2) rename=(count=countC percent=percentC cum_pct=cPercentC));
 by numMeasures;
run;

ods escapechar='^';
option papersize=("5.5in","4.4in") topmargin=0.1in rightmargin=0.1in leftmargin=0.1in bottommargin=0.1in;
ods pdf file = "&outpath.&slash.CEBU-Table1.pdf" style=sasweb;
title1 "Number and Percentage of Assessments Completed";
proc report data = table1 split='^';
	column (numMeasures /*("Females" CountA PercentA cPercentA) 
                          ("Males" CountB PercentB cPercentB) */
                        /*("Overall"*/ CountC PercentC cPercentC /*)*/ );
	define numMeasures / "Number of^Assessments" group    format=2.  style={just=d cellwidth=1.1in};

/*	define CountA       / "Count"                  display  format=4.  style={just=d cellwidth=1in};*/
/*	define PercentA     / "Percent"                display  format=7.2 style={just=d cellwidth=1in};*/
/*	define cPercentA    / "Cumulative^Percent"     display  format=7.2 style={just=d cellwidth=1in};*/
/**/
/*	define CountB       / "Count"                  display  format=4.  style={just=d cellwidth=1in};*/
/*	define PercentB     / "Percent"                display  format=7.2 style={just=d cellwidth=1in};*/
/*	define cPercentB    / "Cumulative^Percent"     display  format=7.2 style={just=d cellwidth=1in};*/

	define CountC       / "Frequency"              display  format=4.  style={just=d cellwidth=1in};
	define PercentC     / "Percent"                display  format=7.2 style={just=d cellwidth=1in};
	define cPercentC    / "Cumulative^Percent"     display  format=7.2 style={just=d cellwidth=1in};

run;
ods pdf close;


/**** Spaghetti Plots *********************************************************/
proc sort data = dat2.cebu out = cebu; 
	by male id time; 
run;

proc freq data = cebu noprint;
	table male*id / out = numMeasures(drop=percent);
run;

proc surveyselect data = numMeasures(where=(count>2 and male in (0,1))) 
                   out = IDs(keep=male id) n=10 noprint seed=2;
 strata male;
run;
quit;

data cebu_selected;
 merge cebu(in=a) IDs(in=b);
 by male id;
  if a and b;
run;


proc format;
 value gend
  0 = 'Female'
  1 = 'Male';
run;

ods escapechar='^';
ods graphics / noborder height=4.3in width=8.3in;

option papersize=("8.5in","4.5in") topmargin=0.1in rightmargin=0.1in leftmargin=0.1in bottommargin=0.1in;
ods pdf file = "&outpath.&slash.CEBU-Figure1.pdf" style=sasweb;
title1 "Spaghetti Plot of Weight (g) versus Age (months) by Gender";
proc sgpanel data = cebu_selected noautolegend;
 panelby male / rows=1 novarname;
 series x=age y=weight / group=id lineattrs=(pattern=1);
 format male gend.;
 label weight = 'Weight (grams)'
 	   age    = 'Age (months)';
run;
ods pdf close;



/**** Distribution of Measurement Times *********************************************************/

data cebu_centered;
 set dat2.cebu;
  age_centered = age - 2*time;

   if age_centered<3 and age_centered>-3;
run;

ods escapechar='^';
ods graphics / noborder height=4.3in width=8.3in;

option papersize=("8.5in","4.5in") topmargin=0.1in rightmargin=0.1in leftmargin=0.1in bottommargin=0.1in;
ods pdf file = "&outpath.&slash.CEBU-Figure2.pdf" style=sasweb;
title1 "Boxplot of Assessment Time Deviations from Target Time";
proc sgplot data = cebu_centered noautolegend;
 vbox age_centered / category=time lineattrs=(pattern=1);
 label age_centered = 'Deviation (months) from Target Assessment Time'
       time = 'Visit';
run;
ods pdf close;
