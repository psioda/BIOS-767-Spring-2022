*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Analysis of data from the Dental Study;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:       dental-data-GLM-manual.sas                                   
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
%setup(DENTAL-DATA-GLM-manual,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767);

/******************************************************************************************/
/******************************************************************************************/
/******************************** Dataset Processing Code *********************************/

data dental;
	set dat2.dental;

	array age[4] age8 age10 age12 age14;
	do j = 1 to dim(age);
		x1 = (gender="F");
		x2 = (gender="F")*(6 + 2*j);
		x3 = (gender="M");
		x4 = (gender="M")*(6 + 2*j);
		distance = age[j];
		output;
	end;
	
	drop age: j;
run;



proc IML;
	/** read in Dental Study Data to Matrices/Vectors **/
	use dental;
		read all var {x1 x2 x3 x4} into x;
		read all var {distance} into y;
		read all var {id} into id;
	close dental;

	/** number of measures/subjects **/
	n = ncol(x);
	M = nrow(y)/n;
  
	/** algorithm stoppage criteria **/
	convCrit = 1e-12;
	maxIter  = 100;

	/** initialize the estimate of beta **/
	betaHat = inv(t(x)*x)*t(x)*y;

	/** initialize iteration counter / change value; **/
	change    = 1000;
	iteration = 0;

  /** iterative algorithm **/
  do until(change<convCrit);

  		/** Accumulate outer products of residuals based 
            on current betaHat to construct estimate 
  			of sigmaHat
         **/
		sigmaHat    = 0;
		do i = 1 to M;
			 rows = loc(id=i);
			 xr = x[rows,];
			 yr = y[rows,];

			 sigmaHat = sigmaHat + 	(yr-xr*betaHat)*t(yr-xr*betaHat);
	    end;
		sigmaHat = 1/M*sigmaHat;

		/** Update weight matrix **/
		W        = inv(sigmaHat);

		/** Update estimate of betaHat **/
		t1 = 0;
		t2 = 0;
		do i = 1 to M;
			rows = loc(id=i);
			 xr = x[rows,];
			 yr = y[rows,];
			 t1 = t1 + t(xr)*W*xr;
			 t2 = t2 + t(xr)*W*yr;
		end;
		betaHatPrev = betaHat;
		betaHat     = inv(t1)*t2;

		/** compute change in betaHat **/
		change      = sum(abs(betaHat-betaHatPrev));

		/** increment iteration counter **/
		iteration   = iteration + 1;

		/** check max iteration condition **/
		if iteration = maxIter then change=-10;
  end;

  stdError = sqrt(vecdiag(inv(t1)));
  z        = betaHat/stdError;
  pv       = cdf('normal',-abs(z))*2;

  finalResults = betaHat||stdError||z||pv;

  ods html path = "&outpath." file="Dental-General-Linear-Model-Analysis-Manual.html" nogtitle;
  	print finalResults[l="Parameter Estimates" c={"Estimate" "StdError" "z" "P-value"} format=7.4];
  	print sigmaHat[l="Covariance Parameter Estimates" format=7.4];
  ods html close;
quit;

