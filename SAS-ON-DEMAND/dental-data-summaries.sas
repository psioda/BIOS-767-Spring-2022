*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Summarize data from the Dental Study;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       dental-data-summaries.sas                                   
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
%include "/home/mpsioda82/SAS-MACROS/setup.sas";
%setup(DENTAL-DATA-SUMMARIES,DENTAL);


proc format;
 value $ gnd "F" = "Female" "M" = "Male";
run;
%put Current path is %curdir;
/**************** Produce Data Listing for Random Sample of Dental Study Children *****/
proc sort data = dat2.dental out = dental; by gender; run;
proc surveyselect data = dental method=srs out=sampled seed=1 n=5 noprint reps=1;
 strata gender;
run;

ods escapechar='^';
option papersize=("7in","4.0in") topmargin=0.1in rightmargin=0.1in leftmargin=0.1in bottommargin=0.1in;
ods pdf file = "&outpath.&slash.Dental-Table1.pdf" style=journal;
title1 "Distance (mm) from Pituitary Gland to Pterygomaxillary Fissure";
title2 h=0.5 "(Data Presented for 5 Randomly Chosen Participants for Each Gender)";
 proc report data = sampled;
  column (gender id ("^{style [borderbottomwidth=0.5pt borderbottomcolor=black]Age (years)}" age8 age10 age12 age14));

  define gender / "Gender" group   format=$gnd. style={just=l cellwidth=1in};
  define id     / "ID"     display              style={just=c cellwidth=1in};
  define age8   / " 8"             format=6.1   style={just=c cellwidth=1in};
  define age10  / "10"             format=6.1   style={just=c cellwidth=1in};
  define age12  / "12"             format=6.1   style={just=c cellwidth=1in};
  define age14  / "14"             format=6.1   style={just=c cellwidth=1in};

  compute before gender;
   line @1 " ";
  endcomp;
run;
ods pdf close;





/**************** Produce Table of Mean Distances for Dental Study Children *****/
proc means data = dat2.dental nway noprint;
 class gender;
 var age:;
 output out = table2(drop=_:) mean=age8 age10 age12 age14 std= sdage8 sdage10 sdage12 sdage14 ;
run;

data table2b;
  set table2;
	array mn[4] age8 age10 age12 age14;
	array sd[4] sdage8 sdage10 sdage12 sdage14;
	array col[4] $20 cage8 cage10 cage12 cage14;

	do j = 1 to dim(mn);
		col[j] = strip(put(mn[j],6.1))||' ('||strip(put(sd[j],6.1))||')';
	end;
	drop age: sd: j:;
run;


option papersize=("5.3in","1.8in") topmargin=0.1in rightmargin=0.1in leftmargin=0.1in bottommargin=0.1in;
ods pdf file = "&outpath.&slash.Dental-Table2.pdf" style=journal;
title1 j=c "Mean Distance (mm) by Age and Gender for Dental Study";
footnote1 j=l "Note: Standard deviation presented in parentheses.";
 proc report data = table2b;
  column (gender ("^{style [borderbottomwidth=0.5pt borderbottomcolor=black] Age in Years}" cage8 cage10 cage12 cage14));
  define gender  / "Gender" group   format=$gnd. style={just=l cellwidth=1in};
  define cage8   / " 8"                          style={just=c cellwidth=1in};
  define cage10  / "10"                          style={just=c cellwidth=1in};
  define cage12  / "12"                          style={just=c cellwidth=1in};
  define cage14  / "14"                          style={just=c cellwidth=1in};
run;

ods pdf close;



/********** Line/High-Low Plot for Mean Distances****/
data figure1;
  set table2;
	array mn[4] age8 age10 age12 age14;
	array sd[4] sdage8 sdage10 sdage12 sdage14;
	do j = 1 to dim(mn);
		level      = mn[j];
		lowerlevel = max(mn[j] - 2*sd[j],0);
		upperlevel = mn[j] + 2*sd[j];
		age        = 8*(j=1) + 10*(j=2) + 12*(j=3) + 14*(j=4);
		 if gender = 'F' then plotage = age - 0.05;
		 else                 plotage = age + 0.05;
		output;
	end;
	drop age: sd: j;
run;

option papersize=("8.2in","4.2in") topmargin=0.1in rightmargin=0.1in leftmargin=0.1in bottommargin=0.1in;
ods pdf file = "&outpath.&slash.Dental-Figure1.pdf" nogtitle dpi=200;
ods graphics / width=8.0in height=4.0in noborder;
title1 j=c "Plot of Mean Distance (+/- 2SD) from Pituitary Gland to Pterygomaxillary Fissure";
title2 j=c "by Age and Gender for the Dental Study";
footnote;
proc sgplot data = figure1;
 format gender $gnd.;
 label gender = 'Gender';
 series  x=plotage y=level                        / group=gender markers markerattrs=(symbol=circleFilled size=9) lineattrs=(thickness=2) name="A";
 highlow x=plotage low=lowerlevel high=upperlevel / group=gender lowcap=serif highcap=serif lineattrs=(thickness=2);
 yaxis values = (16 to 32 by 2) label='Mean Distance (mm)' offsetmin=0.02;
 xaxis values = (8 to 14 by 2) label='Age (years)';
 keylegend "A" / location=inside position=topleft;
run;
ods pdf close;




/********** Spaghetti Plot for Distances ****/
data figure2;
  set dat2.dental table2(in=a);

	array mn[4] age8 age10 age12 age14;
	do j = 1 to dim(mn);
		if a then levelm = mn[j];
		else      level  = mn[j];
		age        = 8*(j=1) + 10*(j=2) + 12*(j=3) + 14*(j=4);
		output;
	end;
	drop j age8 age10 age12 age14 sd:;
run;

option papersize=("8in","5.0in") topmargin=0.1in rightmargin=0.1in leftmargin=0.1in bottommargin=0.1in;
ods pdf file = "&outpath.&slash.Dental-Figure2.pdf" nogtitle dpi=200;
ods graphics / width=7.8in height=4.8in noborder;
title1 j=c "Individual and Gender-Mean Curves for Distances for Dental Study Participants";
proc sgpanel data = figure2 noautolegend;
 format gender $gnd.;
 label gender = 'Gender';
 styleattrs datacontrastcolors=(lightBlue lightred lightPurple) datalinepatterns=(2 3 4);
 panelby gender / rows=1;
 series x=age y=level  /  group = id;
 series x=age y=levelm /  lineattrs=(pattern=1 thickness=3 color=black);
 rowaxis values = (14 to 32 by 2) label='Distance (mm)' offsetmin=0.02;
 colaxis values = (8 to 14 by 2) label='Age (years)';
run;
ods pdf close;



/********** Matrix Scatter Plot *****/
option papersize=("6.2in","6.2in") topmargin=0.1in rightmargin=0.1in leftmargin=0.1in bottommargin=0.1in;
ods pdf file = "&outpath.&slash.Dental-Figure3.pdf" nogtitle dpi=200 style=sasweb;
ods graphics / reset noborder height=6in width=6in;
title1 j=c "Matrix Scatter Plot of Distances (mm) by Age and Gender";
proc sgscatter data=dat2.dental;
 format gender $gnd.;
 label gender = 'Gender'
       age8   = 'Age = 8'
       age10  = 'Age =10'
       age12  = 'Age =12'
       age14  = 'Age =14';
 matrix age8 age10 age12 age14 / group=gender diagonal=(histogram kernel) markerattrs=(symbol=circlefilled);
run;
ods pdf close;


/********** Correlation Heatmap *****/
ods output PearsonCorr =Pearson;
proc corr data=dat2.dental;
 format gender $gnd.;
 label gender = 'Gender'
       age8   = 'Age = 8'
       age10  = 'Age =10'
       age12  = 'Age =12'
       age14  = 'Age =14';
 var age8 age10 age12 age14 ;
run;

data Pearson2;
 set Pearson(keep=age:);
  array age[4] age8 age10 age12 age14;

  x = 6+2*_n_;
  do j = 1 to dim(age);
	y   = input(compress(vname(age[j]),'age'),best.);
	rho = round(age[j],0.001);
	output;	
  end;

  keep x y rho;
run; proc sort data = Pearson2; by descending x y; run;

option papersize=("6.2in","6.2in") topmargin=0.1in rightmargin=0.1in leftmargin=0.1in bottommargin=0.1in;
ods pdf file = "&outpath.&slash.Dental-Figure4.pdf" nogtitle dpi=200 style=sasweb;
ods graphics / reset noborder height=6in width=6in;
title1 j=c "Correlation Heatmap by Age";
	proc sgplot data = Pearson2 noautolegend;
	    format rho 6.3;
		heatmapparm x=x y=y colorresponse=rho / colormodel=(lightblue verylightblue white);
		scatter x=x y=y / datalabel=rho datalabelpos=center markerattrs=(size=0.001 color=blue);
		xaxis display=(nolabel);
		yaxis display=(nolabel);
	quit;
ods pdf close;



option papersize=("7in","5.0in") topmargin=0.1in rightmargin=0.1in leftmargin=0.1in bottommargin=0.1in;
ods pdf file = "&outpath.&slash.Dental-Figure5.pdf" nogtitle dpi=200;
ods graphics / width=6.8in height=4.8in noborder;
title1 j=c "Trajectory Curves for Girls";
proc sgplot data = figure2 noautolegend;
 format gender $gnd.;
 label gender = 'Gender';
 where gender = 'F';
 styleattrs datacontrastcolors=(Blue red Purple) datalinepatterns=(2 3 4);
 series x=age y=level  / markers  group = id markerattrs=(symbol=circleFilled size=5);
 yaxis values = (16 to 30 by 2) label='Distance (mm)' offsetmin=0.02;
 xaxis values = (8 to 14 by 2) label='Age (years)';
run;
ods pdf close;
