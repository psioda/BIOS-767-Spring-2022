*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Summarize data from the ICHS Study;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       xerop-data-summaries.sas                                   
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
%setup(XEROP-DATA-SUMMARIES,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767);

proc format;
 value season
  1 = "Summer (1)"
  2 = "Autumn (2)"
  3 = "Winter (3)"
  4 = "Spring (4)"
  5 = "Summer (5)"
  6 = "Autumn (6)"
 99 = "Combined";
 value xerop
  0 = 'No'
  1 = 'Yes'
 99 = 'Overall';
run;
quit;

/** Table of Number of Measurements **/
proc freq data = dat2.xerop noprint;
	table id / out = numMeasures(drop=percent rename=(count=numMeasures));
run;
proc freq data = numMeasures noprint;
	table numMeasures / out = distNumMeasures outcum;
run;
ods escapechar='^';
option papersize=("5.5in","3.0in") topmargin=0.1in rightmargin=0.1in leftmargin=0.1in bottommargin=0.1in;
ods pdf file = "&outpath.&slash.XEROP-Table1.pdf" style=journal;
title1 "Distribution for the Number of Measurements Across Children";
proc report data = distNumMeasures split='^';
	column (numMeasures Count Percent cum_freq cum_pct);
	define numMeasures / "Number of^Measurements" group    format=1.  style={just=d cellwidth=1in};
	define Count       / "Count"                  display  format=3.  style={just=d cellwidth=1in};
	define Percent     / "Percent"                display  format=6.2 style={just=d cellwidth=1in};
	define cum_freq    / "Cumulative^Count"       display  format=3.  style={just=d cellwidth=1in};
	define cum_pct     / "Cumulative^Percent"     display  format=6.2 style={just=d cellwidth=1in};
run;
ods pdf close;


/**************** Figure of RI by Visit and Presence of Xerophthalmia *****/
proc means data = dat2.xerop noprint;
 class time xerop;
 var respInf;
 types time*xerop;
 output out = summary n=nResp mean=pResp;
run;

data plotData;
 set summary;
  if xerop = .      then xerop=99; 
  if time  = .      then time=99; 

  y = round(nResp*pResp);
  display = strip(put(y,4.))||'/'||strip(put(nResp,4.))||'$('||strip(put(pResp,6.3))||')';
run;


option papersize=("8.2in","4.7in") topmargin=0.1in rightmargin=0.1in leftmargin=0.1in bottommargin=0.1in;
ods graphics / reset height=4.5in width=8in noborder;
ods pdf file = "&outpath.&slash.XEROP-Figure1.pdf" style=journal startpage=no dpi=200;
title1 j=c "Proportion of Respiratory Infections by Season (Visit) and Presence of Xerophthalmia";
footnote;
proc sgplot data = plotData;
 styleattrs datacolors=(blue red purple);
 vbar time / group=xerop groupdisplay=cluster response=pResp stat=sum 
              datalabel=display datalabelfitpolicy=splitalways splitchar='$';
 yaxis label='Proportion' values=(0.00 to 0.35 by 0.05);

 format time season. xerop xerop.;
 label xerop = 'Xerophthalmia' time = 'Visit';
 keylegend / location=inside position=topleft;
run;
ods pdf close;


option papersize=("8.2in","4.7in") topmargin=0.1in rightmargin=0.1in leftmargin=0.1in bottommargin=0.1in;
ods graphics / reset height=4.5in width=8in noborder;
ods pdf file = "&outpath.&slash.XEROP-Figure2.pdf" style=journal startpage=no dpi=200;
title1 j=c "Proportion of Respiratory Infections by Season (Visit) and Presence of Xerophthalmia";
proc sgplot data = plotData;
 styleattrs datacolors=(darkRed purple blue lightRed darkRed purple);
 vbar xerop / group=time groupdisplay=cluster response=pResp stat=sum 
              datalabel=display datalabelfitpolicy=splitalways splitchar='$';
 yaxis label='Proportion' values=(0.00 to 0.35 by 0.05);

 format time season. xerop xerop.;
 label xerop = 'Xerophthalmia' time = 'Visit';
 keylegend / location=inside position=topleft;
run;
ods pdf close;

/**************** Missing Data Heatmap***************/
proc transpose data = dat2.xerop out = missing prefix=value;
 by id;
 id time;
 var respInf;
run;


ods exclude all;
ods output MissPattern = MissPatterns;
proc mi data = missing nimpute=2;
	var value:;
run;
ods exclude none;


data MissPatterns2;
 set MissPatterns;
 by group;

     pattern = 30-group;
	 cumPercent + Percent;

	 

	 array valuec[6] value1_Miss--Value6_miss;
	 do time = 1 to dim(valuec);
	      if time = 1 then cumPercentc = put(cumPercent,5.1); else cumPercentc = '';
		  if time = 1 then Freqc = put(freq,3.); else Freqc = '';

		  if valuec[time] = 'X' then missing = "No ";
		  else missing = "Yes";
		  output;
	 end;

	 drop value1_Miss--Value6_miss  value1-value6;
run;


option papersize=("3.7in","6.2in") topmargin=0.1in rightmargin=0.1in leftmargin=0.1in bottommargin=0.1in;
ods graphics / reset height=6.0in width=2.0in noborder;
ods pdf file = "&outpath.&slash.XEROP-Figure3.pdf" style=sasweb startpage=no dpi=200;
title;
proc sgplot data = MissPatterns2;
  styleattrs datacontrastcolors=(lightblue lightred);
  scatter y=pattern x=time / group=missing markerattrs=(symbol=squareFilled size=12);
  scatter y=pattern x=time / group=missing markerattrs=(symbol=square color=black size=12);
  yaxistable Freqc / location=inside position=left;
  yaxistable cumPercentc / location=inside position=left;
  label missing = "Missing Data" pattern = 'Missing Data Pattern' Freqc = 'N' cumPercentc = 'c%' time='Visit';
  xaxis values=( 1 2 3 4 5 6 ) display=(noticks novalues) offsetmax=0.1;
  yaxis display=(noticks novalues) values=(1 to 29 by 1) offsetmin=0.02 offsetmax=0.02;
run;
ods pdf close;
