
data dental;
 infile "C:\Users\psioda\Documents\GitHub\bios-courses\BIOS-767\R-PROGRAMS\LMM\compare-to-sas.csv"
    dlm="," firstobs=2 dsd;
 input id gender $ age distance eblup eblup2 eblup2_lower eblup2_upper;
run;

%macro zeros(n);
	%do j = 1 %to &n; 0 %end;
%mend;
%put %zeros(5);

ods output Estimates = work.MLEstimates;
proc mixed data = dental method=reml noclprint;
	class gender(ref='F') id;
	model distance = gender age*gender / noint solution ddfm=kr ;
	random intercept age / subject=id type=un;

	%macro a;
	%do s = 1 %to 11;
		%do t = 8 %to 14 %by 2;
			estimate "Subject / &s / Age / &t" gender 0 1 age*gender 0 &t  | intercept 1 age &t / subject %zeros(%eval(&s-1)) 1  cl;
		%end;
	%end;
	%do s = 12 %to 27;
		%do t = 8 %to 14 %by 2;
			estimate "Subject / &s / Age / &t" gender 1 0 age*gender &t 0 | intercept 1 age &t / subject %zeros(%eval(&s-1)) 1 cl;
		%end;
	%end;
	%mend;
	%a;

run;
quit;

data work.MLEstimates2;
 set work.MLEstimates;
 id  = input(scan(label,2,"/"),best.);
 age = input(scan(label,4,"/"),best.);
 keep id age estimate lower upper;
run;



ods html newfile=proc;
ods output Estimates = work.BayesEstimates;
proc bglimm data = dental nmc=100000 nthin=5 outpost=post;
	class gender(ref='F') id;
	model distance = gender age*gender / noint;
	random intercept age / subject=id type=un;

	%macro a;
	%do s = 1 %to 11;
		%do t = 8 %to 14 %by 2;
			estimate "Subject / &s / Age / &t" gender 0 1 age*gender 0 &t  | intercept 1 age &t / subject %zeros(%eval(&s-1)) 1;
		%end;
	%end;
	%do s = 12 %to 27;
		%do t = 8 %to 14 %by 2;
			estimate "Subject / &s / Age / &t" gender 1 0 age*gender &t 0 | intercept 1 age &t / subject %zeros(%eval(&s-1)) 1;
		%end;
	%end;
	%mend;
	%a;
run;
quit;

data work.BayesEstimates2;
 set work.BayesEstimates;
 id  = input(scan(label,2,"/"),best.);
 age = input(scan(label,4,"/"),best.);
 keep id age mean HPDlower HPDupper;
run;

data pred2;
 merge work.dental work.MLEstimates2 work.BayesEstimates2;
 by id age;
run;


data pred3;
 set pred2;
   obs    = _n_*5;
   method = 'SAS - ML   ';
   pred   = estimate;
   output;

   obs    = obs + 1;
   method = 'SAS - Bayes';
   pred   = mean;
   lower  = HPDlower;
   upper  = HPDupper;
   output;

   obs    = obs + 1;
   method = 'R';
   pred   = eblup2;
   lower  = eblup2_lower;
   upper  = eblup2_upper;
   output;

run;

ods graphics / height=5in width=10in;
proc sgplot data = pred3;
 by id;
 where id in (1,12);
 scatter x=obs y=pred              / group=method;
 highlow x=obs low=lower high=upper / group=method;
run;
