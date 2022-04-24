*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Analyze data from the Contraception Study;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       contra-gee.sas                                   
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
%setup(CONTRA-GEE,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767);

ods html newfile=proc;

/*** data processing ***/

data contra;
	set dat2.contra;
run; proc sort; by ID Occasion; run;

proc print data = contra noobs;
	where ID in (1 396 808);
run;

data contra2;
 set contra;
 by ID;

  prevY =lag(Amenorrhea);
  if first.id then Prevy=0;

  time = occasion-1;
  cTime = time;

  rename HighDose=dose Amenorrhea = y;
  drop occasion;
run;

proc print data = contra2 noobs;
	where ID in (1 396 808);
run;
 
/** Weighted GEE **/
proc gee data=contra2 plots=histogram;
   class ID ctime(ref='3');
   missmodel ctime prevY Dose Dose*prevY / type=obslevel;
   model y(event='1') = time time*time dose dose*time dose*time*time / dist=bin;
   repeated subject=ID / within=cTime corr=cs;
run;

/** Weighted GEE -- Test **/
ods html select none;
ods output GEEEmpPEst = PE GEERCov = CE;
proc gee data=contra2 plots=histogram;
   class ID ctime(ref='3');
   missmodel ctime prevY Dose Dose*prevY / type=obslevel;
   model y(event='1') = time time*time dose dose*time dose*time*time / dist=bin ;
   repeated subject=ID / within=cTime corr=cs ecovb;
run;
ods html select all;

proc IML;
	use CE(keep=Prm:);     read all var _all_ into C; close CE;
	use PE(keep=Estimate); read all var _all_ into B; close PE;

	L = {0 0 0 1 0 0,
	     0 0 0 0 1 0,
		 0 0 0 0 0 1};

	S  = t(L*B)*inv(L*C*t(L))*L*B;
	DF = 3;
	PV = 1 - cdf('chisq',S,DF); 
	R  = S||DF||PV;
	print R[l="Results" c={"Chi-Sq Statistic" "Degree of Freedom" "P-Value"}];
quit;




/** Standard GEE **/
proc genmod data=contra2;
   class ID ctime(ref='3');
   model y(event='1') = time time*time dose dose*time dose*time*time / dist=bin;
   repeated subject=ID / within=cTime corr=cs;
   contrast "Dose Effect" dose 1, dose*time 1, dose*time*time 1;
run;


