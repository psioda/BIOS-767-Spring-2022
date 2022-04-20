*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Analysis of data from the TLC Study;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       lead-data-analysis-transition.sas                                   
*  LANGUAGE:       SAS, VERSION 9.4                                  
*                                                                   
*  NAME:           Matthew Psioda                               
*  DATE COMPLETE:  2021-04-27                                           
*-------------------------------------------------------------------
*                                                                   
*  Modification History:       
*                                                                                                                         
*  NAME:                         << Insert Name of Primary Programmer >>                               
*  DATE COMPLETE:                << YYYY-MM-DD >>   
*  DESCRIPTION OF MODIFICATION:  << Please insert 2-3 sentences >>                                                               
********************************************************************;
%include "C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767\SAS-MACROS\SETUP.SAS";
%setup(LEAD-DATA-ANALYSIS-TRANSITION,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767);
ods html newfile=proc;


/******************************************************************************************/
/******************************************************************************************/
/******************************** Dataset Processing Code *********************************/

data lead;
  set dat2.tlc;
	array mn[4] y0 y1 y4 y6;
	do j = 2 to dim(mn);
		succ       = (trt='A');
		lowLead    = (mn[j]<20);
		lagLowLead = (mn[j-1]<20);
		week       = 0*(j=1) + 
					 1*(j=2) + 
					 4*(j=3) + 
					 6*(j=4);
		output;
	end;
	drop j y:;
run;

proc print data = dat2.tlc(obs=3) noobs;
run;

proc print data = lead(obs=12) noobs;
run;


/*
data t;
 set dat2.tlc;
  y0 = (y0<20);
  y1 = (y1<20);
  y4 = (y4<20);
  y6 = (y6<20);
run;

proc sort data = t; 
 by y4;
run;

proc freq data = t;
 by y4;
 table trt*y6 / nopercent nocol;
run;
*/




ods output Estimates = work.Est;
proc genmod data=lead;
	where week > 0;
	class id;
	model lowlead(event='1') = succ week succ*week lagLowLead succ*lagLowLead
		/ dist=binomial link=logit scale=pearson aggregate  ;
	output out = estimates pred=est upper=ucl lower=lcl;

	estimate "1 - >20" succ 1 succ*week 1 succ*lagLowLead 0 / exp;
	estimate "1 - <20" succ 1 succ*week 1 succ*lagLowLead 1 / exp;

	estimate "4 - >20" succ 1 succ*week 4 succ*lagLowLead 0 / exp;
	estimate "4 - <20" succ 1 succ*week 4 succ*lagLowLead 1 / exp;

	estimate "6 - >20" succ 1 succ*week 6 succ*lagLowLead 0 / exp;
	estimate "6 - <20" succ 1 succ*week 6 succ*lagLowLead 1 / exp;

	repeated  subject=id / type=ind modelse;
run;


data Est2;
 set work.Est;
 where substr(label,1,3)='Exp';
 Week = input(scan(label,2,'(-)'),best.);
 Prev = scan(label,3,'(-)');
  if find(prev,'<') then Week = Week-0.2;
  else Week = Week + 0.2;
run;

proc sgplot data = Est2;
 scatter x=Week y=LBetaEstimate / 
		group=Prev datalabel=LBetaEstimate markerattrs=(symbol=circleFilled);
 highlow x=Week low=LBetaLowerCL high=LBetaUpperCL /
		group=Prev highcap=serif lowcap=serif;
 format LBetaEstimate 7.2;
 label Prev = 'Previous Lead Concentration';
 xaxis label = 'Weeks Post Baseline' values=(1 4 6) offsetmax=0.08 offsetmin=0.08 ;
 yaxis label = 'Odds Ratio (Succimer versus Placebo)' type=log;
run;
