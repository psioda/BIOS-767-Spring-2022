*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Analysis of data from the Dental Study;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       dental-data-analysis-diagnostics.sas                                   
*  LANGUAGE:       SAS, VERSION 9.4                                  
*                                                                   
*  NAME:           Matthew Psioda                               
*  DATE COMPLETE:  2021-03-08                                           
*-------------------------------------------------------------------
*                                                                   
*  Modification History:       
*                                                                                                                         
*  NAME:                         << Insert Name of Primary Programmer >>                               
*  DATE COMPLETE:                << YYYY-MM-DD >>   
*  DESCRIPTION OF MODIFICATION:  << Please insert 2-3 sentences >>                                                               
********************************************************************;
%include "C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767\SAS-MACROS\SETUP.SAS";
%setup(DENTAL-DATA-ANALYSIS-DIAGNOSTICS,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767);

/******************************************************************************************/
/******************************************************************************************/
/******************************** Dataset Processing Code *********************************/
data dental;
	set dat2.dental;

	array age[4] age8 age10 age12 age14;
	do j = 1 to dim(age);
		time = 6 + 2*j;
		cTime = put(time,z3.);
		distance = age[j];
		output;
	end;
	
	drop age: j;
run;

proc sort data=dental;
 by id time;
run;



/*
ods html close;
ods html newfile=none image_dpi=250;
ods html newfile=proc image_dpi=250;
*/
ods html newfile=proc image_dpi=250;
/**** Standard Diagnostic Panels ****/
proc mixed data = dental method=reml noclprint plots=(all);
	class gender cTime id;
	model distance = gender time*gender / 
        noint solution;
	repeated cTime / subject=id type=ar(1) r rcorr;
run;
quit;


/**** Scaled Residual Panel ***/
proc mixed data = dental method=reml noclprint;
	class gender cTime id;
	model distance = gender time*gender / 
        noint solution vciry;
	repeated cTime / subject=id type=ar(1) r rcorr;
run;
quit;


/*** Output scaled residuals to a dataset and print ***/
ods html select none;
proc mixed data = dental method=reml noclprint;
	class gender cTime id;
	model distance = gender time*gender / 
        noint solution vciry outpm=work.Residuals;
	repeated cTime / subject=id type=ar(1) r rcorr;
run;
quit;
ods html select all;

data work.Residuals;
 set work.Residuals;
  absScaledResid = abs(ScaledResid);
run; proc sort; by descending absScaledResid; run;

title "Plot of Largest Scaled Residuals";
proc print data = work.Residuals(obs=20); 
	var id gender time distance ScaledResid;
run;

title "Contents of work.Residuals";
proc print data = work.Residuals(drop=cTime obs=10); run;


/*** Calculate MH Distance ***/
data work.Residuals2;
	set work.Residuals;
		r2=ScaledResid*ScaledResid;
	keep id r2;
run; proc sort data=work.Residuals2; by id; run;

proc means data=work.Residuals2 noprint;
	by id;
		var r2;
		output out=work.MHDistance(drop=_:) n=ni sum=mhd;
run;

data work.MHDistance; 
	set work.MHDistance;
		pval=1-cdf('chisq',mhd,ni);
		if pval<=0.05 then FLAG="*";	
run; 
proc sort data=work.MHDistance; 
	by descending mhd; 
run;

title 'Test of Mahalanobis Distance';
proc print data=work.MHDistance(obs=10) label; 
	label FLAG="Significant at 0.05?";
run;


/*** Likelihood distance ***/
ods html exclude all;
ods output Influence = work.Influence;
proc mixed data = dental method=reml plots;
	class gender cTime id;
	model distance = gender time*gender / 
        noint solution vciry influence(iter=10 effect=id);
	repeated cTime / subject=id type=ar(1) r rcorr;
run;
quit;
ods html exclude none;

proc sort data = work.Influence; by descending RLD; run;

title 'List of Largest Likelihood Distances';
proc print data=work.Influence(obs=10) label; run;




/*** Cook's Distance ***/
proc mixed data = dental method=reml plots(only)=influencestatpanel;
	class gender cTime id;
	model distance = gender time*gender / 
        noint solution vciry influence(iter=10 effect=id);
	repeated cTime / subject=id type=ar(1) r rcorr;
run;
quit;


/*** MDFFITS ***/
proc sort data = work.Influence out=CooksD; by descending CookD; run;
proc sort data = work.Influence out=MDFFITS; by descending MDFFITS; run;

title "List of Largest Cook's D";
proc print data=work.CooksD(obs=10) label; run;

title "List of Largest MDFFITS";
proc print data=work.MDFFITS(obs=10) label; run;



/*** Deletion Diagnostics ***/
proc mixed data = dental method=reml plots(only)=InfluenceEstPlot;
	class gender cTime id;
	model distance = gender time*gender / 
        noint solution vciry influence(iter=10 effect=id est);
	repeated cTime / subject=id type=ar(1) r rcorr;
run;
quit;


/******************************************************************************************/
/******************************************************************************************/
/******************************** Random Effects Example *********************************/

proc mixed data = dental method=reml plots(only)=InfluenceEstPlot;
	class gender id;
	model distance = gender time*gender / 
        noint solution vciry influence(iter=10 effect=id est);
	random intercept time / subject=id type=un;
run;
quit;


proc mixed data = dental method=reml plots(only)=InfluenceEstPlot;
	class gender id;
	where id ^= 24;
	model distance = gender time*gender / 
        noint solution vciry influence(iter=10 effect=id est);
	random intercept time / subject=id type=un;
run;
quit;


proc mixed data = dental method=reml plots(only)=InfluenceEstPlot;
	class gender id;
	where id ^= 24;
	model distance = gender time*gender / 
        noint solution vciry influence(iter=10 effect=id est);
	random intercept / subject=id type=un;
run;
quit;
