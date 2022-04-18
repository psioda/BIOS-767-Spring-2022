*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Analyze data from the Contraception Study;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       contra-MI.sas                                   
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
%setup(CONTRA-MI,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767);

ods html newfile=proc;

/*** data processing ***/

data contra;
	set dat2.contra;
	rename HighDose=dose;
run; proc sort; by ID Occasion; run;

proc print data = contra(obs=10) noobs; 
	where ID in (1 396 808);
run;

proc transpose data = contra out = contra2(drop=_:) prefix=as;
 by ID dose;
 id Occasion;
 var Amenorrhea;
run;

proc print data = contra(obs=10) noobs; 
	where ID in (1 396 808);
run;

proc print data = contra2(obs=10) noobs; 
	where ID in (1 396 808);
run;


proc mi data = contra2 out=ImputedDatasets  seed=13951639 nimpute=50;
   class as1 as2 as3 as4;
	fcs logistic(as2 = as1 as3 dose as1*dose as3*dose      / details);
   	fcs logistic(as3 = as2 dose as2*dose as4 dose as4*dose / details);
	fcs logistic(as4 = as3 dose as3*dose                   / details);
   var dose as1 as2 as3 as4;
run;


proc print data = contra2 noobs; 
	where ID in ( 396);
run;

proc print data = ImputedDatasets(obs=10) noobs; 
	where ID in ( 396);
run;

data contra3;
	set ImputedDatasets;
		array as[4] as1-as4;
		do time  = 0 to 3;
			cTime = time;
			y = as[time+1];
			output;
		end;
	drop as:;
run;


proc print data = contra3(obs=12) noobs; 
	where ID in ( 396);
run;


/** Standard GEE **/
ods html select none;
ods output GEEEmpPEst  = PE GEERCov=CV;
proc gee data=contra3;
   by _imputation_;
   class ID cTime;
   model y(event='1') = time time*time dose dose*time dose*time*time / dist=bin;
   repeated subject=ID / within=cTime corr=cs ecovb ;
run;

ods html select all;
proc mianalyze parms = PE ;
 modeleffects intercept time dose time*time dose*time dose*time*time;
run; 

proc print data = PE noobs; 
	where _imputation_ = 1;
run;

proc print data = CV(obs=10) noobs; 
	where _imputation_ = 1;
run;



data PE2;
 set PE;
      if Parm='Intercept'       then Parm='Prm1';
 else if Parm='time'            then Parm='Prm2';
 else if Parm='time*time'       then Parm='Prm3';
 else if Parm='dose'            then Parm='Prm4';
 else if Parm='time*dose'       then Parm='Prm5';
 else if Parm='time*time*dose'  then Parm='Prm6';
run;




proc print data = PE noobs; 
	where _imputation_ = 1;
run;
proc print data = PE2 noobs; 
	where _imputation_ = 1;
run;
proc print data = CV(obs=10) noobs; 
	where _imputation_ = 1;
run;

proc mianalyze parms = PE2  covb=CV;
 modeleffects Prm1 Prm2 Prm3 Prm4 Prm5 Prm6;
 Dose: TEST Prm4=0,Prm5=0,Prm6=0 / mult; 
run; 
