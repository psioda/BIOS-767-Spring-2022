*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Analysis of data from the Dental Study;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       dental-data-interaction-plot.sas                                   
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
%setup(DENTAL-DATA-INTERACTION-PLOT,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767);





data dental;
 set dat2.dental;

  array outcome[4] age8 age10 age12 age14;
  do j = 1 to 4;
   age = 8 + 2*(j-1);
   distance = outcome[j];
   output;
  end;

  keep gender age distance id;
run;


ods exclude all;
proc mixed data = dental;
 class gender age id;
 model distance = gender age / noint outpm=predmean_par;
 random intercept / subject=id;
run;
quit;
ods exclude none; 
proc sort data = predmean_par nodupkey; by gender age; run;

ods exclude all;
proc mixed data = dental;
 class gender age id;
 model distance = gender age gender*age / noint outpm=predmean_int;
 random intercept / subject=id;
run;
quit;
ods exclude none;
proc sort data = predmean_int nodupkey; by gender age; run;

data lines;
 set predmean_par(in=a) predmean_int(in=b);
	 if      a then Fit = 'No Interaction';
	 else if b then Fit = 'Interaction';
run;


proc format;
 value $ gend
 	"F" = "Female"
	"M" = "Male";
run;

option papersize=("8.5in","5.0in") topmargin=0.1in rightmargin=0.1in leftmargin=0.1in bottommargin=0.1in;
ods noptitle;
ods pdf file = "&outpath.&slash.Dental-Interaction.pdf" nogtitle dpi=200;
ods graphics / reset noborder height=4.8in width=8.3in;
title1;

proc sgpanel data = lines;
	panelby Fit / novarname;
	label age = 'Age (Years)'
		  pred = 'Distance'
		  gender = 'Gender';
	format gender $gend.;
	series x=age y=pred / group=gender markers markerattrs=(symbol=circleFilled size=9);
run;

ods pdf close;

