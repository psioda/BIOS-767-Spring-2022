*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Visualize data from the Treatment of Lead-
*                       Exposed Children (TLC) Trial;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       lead-data-summaries.sas                                   
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
%setup(LEAD-DATA-SUMMARIES,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767);

proc format;
 value $ trt
  "A" = "Succimer"
  "P" = "Placebo";
run;

/******* Data Listing of Individual Blood Lead Levels *****/
option papersize=("7in","4.0in") topmargin=0.1in rightmargin=0.1in leftmargin=0.1in bottommargin=0.1in;
ods pdf file = "&outpath.&slash.Lead-Table1.pdf" style=journal;
title1 "Blood Lead Levels (mcg/dL) at Baseline, Week 1, Week 4, and Week 6";
title2 "for 10 Randomly Selected Children in the TLC Trial";
 proc report data = dat2.tlc;
  where id in (79,8,44,11,69,29,46,13,74,53);
  column (trt id y0 y1 y4 y6);

  define trt / "Group" group   format=$trt. style={just=c cellwidth=1in};
  define id  / "ID"    display              style={just=c cellwidth=1in};
  define y0  / "Baseline"      format=6.1   style={just=c cellwidth=1in};
  define y1  / "Week 1"        format=6.1   style={just=c cellwidth=1in};
  define y4  / "Week 4"        format=6.1   style={just=c cellwidth=1in};
  define y6  / "Week 6"        format=6.1   style={just=c cellwidth=1in};

  compute before trt;
   line @1 " ";
  endcomp;
run;
ods pdf close;



/******** Summary of Mean Blood Lead Levels by Week *****/
proc means data = dat2.tlc nway noprint;
 class trt;
 var y0 y1 y4 y6;
 output out = table2(drop=_:) mean=y0 y1 y4 y6 std=sdy0 sdy1 sdy4 sdy6 / autoname;
run;

data table2b;
  set table2;
	array mn[4] y0 y1 y4 y6:;
	array sd[4] sdy0 sdy1 sdy4 sdy6;
	array col[4] $20 cy0 cy1 cy4 cy6;

	do j = 1 to dim(mn);
		col[j] = strip(put(mn[j],6.1))||' ('||strip(put(sd[j],6.1))||')';
	end;
	drop y: sd: j:;
run;

ods escapechar='^';
option papersize=("5.3in","1.8in") topmargin=0.1in rightmargin=0.1in leftmargin=0.1in bottommargin=0.1in;
ods pdf file = "&outpath.&slash.Lead-Table2.pdf" style=journal;
title1 j=c "Mean (SD) Blood Lead Levels (mcg/dL) at Baseline, Week 1, Week 4, and Week 6";
title2 j=c "by Treatment Group for the TLC Trial";
 proc report data = table2b;
  column (trt ("^{style [borderbottomwidth=0.5pt borderbottomcolor=black]Mean (SD)}" cy0 cy1 cy4 cy6));

  define trt    / "Group"     group format=$trt.   style={just=c cellwidth=1in};
  define cy0     / "Baseline"                      style={just=c cellwidth=1in};
  define cy1     / "Week 1"                        style={just=c cellwidth=1in};
  define cy4     / "Week 4"                        style={just=c cellwidth=1in};
  define cy6     / "Week 6"                        style={just=c cellwidth=1in};
run;
ods pdf close;



/************* Line/High-Low Plot for blood lead levels *****/
data figure1;
  set table2;
	array mn[4] y0 y1 y4 y6;
	array sd[4] sdy0 sdy1 sdy4 sdy6;
	do j = 1 to dim(mn);
		bloodlevel = mn[j];
		lowerlevel = max(mn[j] - 2*sd[j],0);
		upperlevel = mn[j] + 2*sd[j];
		week       = 0*(j=1) + 1*(j=2) + 4*(j=3) + 6*(j=4);
		 if trt = 'A' then plotweek = week - 0.05;
		 else              plotweek = week + 0.05;
		output;
	end;
	drop y: sd: j;
run;

option papersize=("6in","5.0in") topmargin=0.1in rightmargin=0.1in leftmargin=0.1in bottommargin=0.1in;
ods pdf file = "&outpath.&slash.Lead-Figure1.pdf" nogtitle dpi=350;
ods graphics / width=5.8in height=4.8in noborder;
title1 j=c "Plot of mean (+/- 2SD) blood lead levels at baseline, week 1, week 4, and week 6";
title2 j=c "by treatment group for the TLC Trial";
proc sgplot data = figure1;
 format trt $trt.;
 label trt = 'Treatment Group';
 series  x=plotweek y=bloodlevel / group = trt markers markerattrs=(symbol=circleFilled);
 highlow x=plotweek low=lowerlevel high=upperlevel / group=trt lowcap=serif highcap=serif;
 yaxis values = (0 to 40 by 5) label='Mean blood lead level (mcg/dL)' offsetmin=0.02;
 xaxis values = (0 to 6  by 2) label='Time (weeks)';
run;
ods pdf close;




/********** Spaghetti Plot for Blood Lead Levels ****/
proc sort data = dat2.tlc out = tlc; by trt; run;
proc surveyselect data = tlc method=srs out=sampled seed=3 n=10 noprint reps=1;
 strata trt;
run;

data figure2;
  set sampled table2(in=a);

	array mn[4] y0 y1 y4 y6;
	do j = 1 to dim(mn);
		if a then bloodlevelm = mn[j];
		else      bloodlevel  = mn[j];
		week       = 0*(j=1) + 1*(j=2) + 4*(j=3) + 6*(j=4);
		output;
	end;
	drop j y: sd:;
run;

option papersize=("8in","5.0in") topmargin=0.1in rightmargin=0.1in leftmargin=0.1in bottommargin=0.1in;
ods pdf file = "&outpath.&slash.Lead-Figure2.pdf" nogtitle dpi=350;
ods graphics / width=7.8in height=4.8in noborder;
title1 j=c "Twenty Randomly Selected Individual and Treatment Group Mean Curves";
title2 j=c "for Blood Lead Levels in the TLC Trial";
proc sgpanel data = figure2 noautolegend;
 format trt $trt.;
 label trt = 'Treatment Group';
 styleattrs datacontrastcolors=(lightBlue lightred lightPurple) datalinepatterns=(2 3 4);
 panelby trt / rows=1;
 series x=week y=bloodlevel  /  group = id;
 series x=week y=bloodlevelm /  lineattrs=(pattern=1 thickness=3 color=black);
 rowaxis values = (0 to 40 by 10) label='Mean blood lead level (mcg/dL)' offsetmin=0.02;
 colaxis values = (0 to 6  by 2) label='Time (weeks)';
run;
ods pdf close;



/********** Matrix Scatter Plot *****/
option papersize=("6.2in","6.2in") topmargin=0.1in rightmargin=0.1in leftmargin=0.1in bottommargin=0.1in;
ods pdf file = "&outpath.&slash.Lead-Figure3.pdf" nogtitle dpi=350;
ods graphics / reset noborder height=6in width=6in;
title1 j=c "Matrix Scatter Plot of Blood Lead Levels at Baseline, Week 1, Week 4, and Week 6";
title2 j=c "by Treatment Group for the TLC Trial";
proc sgscatter data=dat2.tlc;
	format trt $trt.;
	label trt = 'Treatment Group'
	      y0  = 'Week = 0'
	      y1  = 'Week = 1'
	      y4  = 'Week = 4'
	      y6  = 'Week = 6';
	matrix y0 y1 y4 y6 / group=trt diagonal=(histogram kernel) markerattrs=(symbol=circlefilled);
run;
title;
ods pdf close;
