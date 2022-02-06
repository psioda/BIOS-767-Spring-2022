

ods html close;
ods html newfile=none;
proc IML;
call randseed(45245);

nSub =   27;
nVis =    4;

beta = {8,2,1};
sd   = diag({2,2,2,2});
rho  = 0.6;

cor  = (1-rho)*I(nVis) + J(nVis,nVis,rho);
cov  = sd*cor*sd;

reml = 1;


  ** simulate a binary covariate;
  x = J(nSub,1,0);         
   call randgen(x,'bernoulli',0.5);

  ** construct time vector;
  t = t(do(1,nVis,1));

  ** create id variable;
  id = t(repeat(do(1,nSub,1),repeat(nVis,nSub,1)));

  ** create covariate matrix (for entire dataset);
  x = J(nSub*nVis,1)||expandgrid(x,t);

  ** simulate entire dataset;
  y = t(randnormal(1,t(x*beta),I(nSub) @ cov));

  datlab = {"id" "y" "Intercept" "x1" "x2"};
  dat    = id||y||x;
  create work.simDat from dat[c=datlab];
  	append from dat;
  close work.simDat;

  
  ** perform ML estimation with unstructured covariance matrix;

	stop      = 0;
	iteration = 0;
	change    = .;
	do until(stop=1);
	
		if iteration = 0 then do;
			betahat   = inv(t(x)*x)*t(x)*y;

			ImP = I(nrow(X)) - X*inv(t(X)*X)*t(X);
			sigmaHat  = I(nVis)*(t(Y)*ImP*Y)/(nSub*nVis);
			print iteration change betahat sigmaHat;
		end;
		iteration = iteration + 1;
		iSigma = inv(sigmaHat);

		** update betaHat;
		t1 = 0;
		t2 = 0;
	    old_beta = betaHat;
		do i = 1 to nSub;
		    idx = loc(id=i);
			xi = x[idx,];
			yi = y[idx];

			t1 = t1 + t(xi)*iSigma*xi;
			t2 = t2 + t(xi)*iSigma*yi;
		end;
		it1 = inv(t1);
		betaHat = it1*t2;

		** update sigmaHat;
		old_Sigma = sigmaHat;
		sigmaHat  = 0; 
		do i = 1 to nSub;
		    idx = loc(id=i);
			xi = x[idx,];
			yi = y[idx];

			sigmaHat = sigmaHat + (yi-xi*betaHat)*t(yi-xi*betaHat) + reml*(xi*it1*t(xi));
		end;
		sigmaHat = sigmaHat/nSub;

		if iteration = 50 then stop = 1;
		changeCov  = abs(sigmaHat-old_Sigma)[<>];
        changeBeta =  abs(betaHat-old_beta)[<>];
		if max(changeCov,changeBeta) < 1e-10 then stop = 1;	

		print iteration changeCov changeBeta betahat sigmaHat;

	end;




	




 quit;


 ods html select solutionF covParms;
 proc mixed data = simDat method=ml convf=1e-10;
  model y = x1 x2 / solution;
 run;
 quit;



 ods html select solutionF R;
 proc mixed data = simDat method=reml convf=1e-10;
  model y = x1 x2 / solution;
  repeated  / subject=id type=un r=1;
 run;
 quit;
