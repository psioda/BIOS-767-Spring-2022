*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Simulation study for longitudinal data analysis;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       sim-longitudinal.sas                                   
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
%setup(SIM-LONGITUDINAL,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767);
ods html newfile=proc;

%let nSub  = 40;                     ** number of subjects;
%let times = 0 3 6 9 12;             ** vector of time points;
*%let beta  = 0.0 1.0 0.0 0.1 0.02;  ** true beta (quadratic trajectory);
%let beta  = 0.0 1.0 0.0 0.0 0.0;
%let sigma = 5;                      ** error variance;
%let rho   = 0.3;                    ** correlation parameter - AR(1);
%let nSim  = 1000;                   ** number of simulated datasets;


proc IML;

** set the random number seed in SAS;
call randseed(1);

** create parameters for simulations;
nSim  = &nSim.;
nSub  = &Nsub.;
times = t({&times.}); 
nRep  = nrow(times);
beta  = t({&beta.});
sigma = &sigma.;
rho   = &rho.;

** construct "true" covariance matrix;
** code assumes an auto-regressive structure;
Cov = J(nRep,nRep,0);
do row = 1 to nRep;
do col = 1 to nRep;
 if row = col then Cov[row,col] = sigma**2;
 else              Cov[row,col] = sigma**2*rho**abs(row-col);
end;
end;

** construct column for simulation study id;
study = shapecol(repeat(do(1,nSim,1),nSub*nRep),0,1);

** construct unique id across simulated datasets;
oid   = shapecol(repeat(do(1,nSim*nSub,1),nRep),0,1);

** construct unique id within a simulated dataset;
wid   = repeat(shapecol(repeat(do(1,nSub,1),nRep),0,1),nSim);

/* create treatment indicator (50% = treated, 50% = control)*/
z     = (wid<=nSub/2);
** print(z);

** create time variable, quadratic variable, interactions;
t1    = shapecol(repeat(times,nSim*nSub),0,1);
t2    = t1##2;
zt1   = z#t1;
zt2   = z#t2;

** simulate outcomes;
y     = J(nSim*nSub*nRep,1,0); 
x     = J(nSim*nSub*nRep,1,1)||t1||t2||zt1||zt2; 
do j = 1 to max(oid);
  subID    = loc(oid=j);
  y[subID] = t(randNormal(1,t(x[subID,]*beta),Cov));
end;

** write out dataset;
d = study||wid||y||t1||t1||z;
create dat from d[c={"study" "id" "y" "time" "t" "z"}];
	append from d;
close dat;

quit;

** analysis - quadratic trajectory **;
ods html exclude all;
ods output SolutionF = Sol1 Contrasts = Cont1 FitStatistics = Fit1;
proc mixed data = dat method=reml plots=none;
 by study;
 class time id;
 model y = t t*t z*t z*t*t / solution;
 repeated time / subject=id type=ar(1) r rcorr;
 contrast "treatment effect (quadratic)"  z*t 1,  z*t*t 1;
run;
ods html exclude none;

** analysis - linear trajectory **;
ods html exclude all;
ods output SolutionF = Sol2 Contrasts = Cont2 FitStatistics = Fit2;
proc mixed data = dat method=reml plots=none;
 by study;
 class time id;
 model y = t z*t / solution;
 repeated time / subject=id type=ar(1) r rcorr;
 contrast "treatment effect (linear)"  z*t 1;
run;
ods html exclude none;

** compute null hypothesis rejection rate;
data Power;
 merge Cont1(rename=(PROBF=PVL)) Fit1(where=(Descr='BIC (Smaller is Better)') rename=(value=BICL))
       cont2(rename=(PROBF=PVQ)) Fit2(where=(Descr='BIC (Smaller is Better)') rename=(value=BICQ)) end=last;

	PowerL   + (PVL < 0.05)/&nSim.;
	PowerQ   + (PVQ < 0.05)/&nSim.;
	Power    + ((PVL < 0.05)*(BICL<BICQ) + (PVQ < 0.05)*(BICL>=BICQ))/&nSim.;
	PrbLin   + (BICL<BICQ)/&nSim.;

	if last;
	nSim = &nSim.;

	keep Power: PrbLin nSim ;

run;

proc print data = Power; run;
