

ods html newfile=proc;

proc iml;
 call streaminit(1);
 call randseed(1);

 nObs = 4;
 nSub = 50;
 nSim = 50000;

 R    = 2*I(nObs);
 D    = 0.5 + 0.5*I(2);
 beta = {0,0};

 blue_est = J(nSim,2,0);
 blup_est = J(nSim,2,0);

  x     = J(nObs,2,1);
  x[,2] = rand('normal',J(nObs,1,0),1);
  z     = x;


 do sim = 1 to nSim;

	 yList = ListCreate(nSub);
	 xList = ListCreate(nSub);
	 zList = ListCreate(nSub);

	 c1 = 0;
	 c2 = 0;

	 d1 = 0;

	 do j = 1 to nSub;

	  Sigma = Z*D*t(Z) + R;
	  b     = t(randnormal(1,{0 0},D));
	  y     = t(randnormal(1,t(x*beta),R)) + Z*b;

	  c1 = c1 + t(x)*inv(Sigma)*x;
	  c2 = c2 + t(x)*inv(Sigma)*y;

	  call ListSetItem(yList,j,y);
	  call ListSetItem(xList,j,x);
	  call ListSetItem(zList,j,z);

	 end;

	 blue           = inv(c1)*c2;
	 blue_est[sim,] = t(blue - beta);

	 blup           = D*t(Z)*inv(Sigma)*(y-x*blue);
	 blup_est[sim,] = t(blup - b);
 end;

 cov_est = cov(blue_est);
 cov_calc = inv(c1);
 cov_diff = round(abs(cov_est - cov_calc),0.001);
 print cov_est cov_calc cov_diff;

 cov_est  = cov(blup_est);
 cov_calc = D - D*t(Z)*inv(Sigma)*Z*D + D*t(Z)*inv(Sigma)*X*inv(c1)*t(X)*inv(Sigma)*Z*D;
 cov_diff = round(abs(cov_est - cov_calc),0.001);
 print cov_est cov_calc cov_diff;

 cov_est  = 0;
 do j = 1 to nSim;
	cov_est = cov_est + t(blue_est[j,])*blup_est[j,];
 end;
 cov_est  = cov_est / nSim;
 cov_calc = -inv(c1)*t(X)*inv(Sigma)*Z*D; 
 cov_diff = round(abs(cov_est - cov_calc),0.001);
 print cov_est cov_calc cov_diff;

/* create blue_est from blue_est[c={"beta0" "beta1"}];*/
/* 	append from blue_est;*/
/* close blue_est;*/
/**/
/*quit;*/

/*proc sgplot data = beta_est;*/
/*	histogram beta0;*/
/*	histogram beta1;*/
/*run;*/
