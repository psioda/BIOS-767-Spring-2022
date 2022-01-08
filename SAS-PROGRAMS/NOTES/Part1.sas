*********************************************************************                             
*                                                                   
*  PROGRAM DESCRIPTION: Make simple illustration for Part 1 notes;
*                                                                   
*-------------------------------------------------------------------
*  JOB NAME:      Part1.sas                                   
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
%setup(PART1,C:\USERS\PSIODA\DOCUMENTS\GITHUB\BIOS-COURSES\BIOS-767);



%let N = 20;
%let M = 10;
proc IML;
  call streaminit(3);
  call randseed(1);
	N = &N.;
	M = &M.;
	Y = J(N,M,.);
	Xv= J(N,1,.);
	do j = 1 to N;
		nTimes = max(min(rand('Poisson',0.75*M),M),0.2*M);
		x      = (j<=0.5*N);

		t = do(0,1,1/(M-1));
		if x = 0 then mean      = t*M;
		else if x = 1 then mean = sqrt(t)*M;

		cov = 2*I(nTimes)*(J(nTimes,nTimes,0.5) + I(nTimes)*0.5)*2*I(nTimes);

		Y[j,1:nTimes] = randNormal(1,mean[1:nTimes],cov);
		Xv[j] = x;
	end;

	names = "Y1":"Y&M.";
	names = "X"||names;

	dat = Xv||Y;
	create example from dat[c=names];
		append from dat;
	close example;
quit;

data vert_example;
 set example;
 array y[&M] Y1-Y&M.;

 subject = _n_;
 do time = 0 to dim(y)-1;
 	outcome = y[time+1];
	if x = 0 then outcome0 = outcome; else outcome0 = .;
	if x = 1 then outcome1 = outcome; else outcome1 = .;
	if not missing(outcome) then output;
 end;

 drop y1-y&M.;
run;

title1;
footnote;

option papersize=("8.4in","4.3in") topmargin=0.1in rightmargin=0.1in leftmargin=0.1in bottommargin=0.1in;
ods pdf file = "&outpath.&slash.Part1-Visual-Main-Questions.pdf" nogtitle dpi=200;
ods graphics / width=4.0in height=4.0in noborder;

ods layout start;
ods region x=0.1in y=0.1in height=4.0in width=4.0in;
title "Individual Trajectories";
proc sgplot data = vert_example noautolegend;
 series   x=time y=outcome / group=subject lineattrs=(color=purple pattern=1 thickness=1);
 loess    x=time y=outcome / nomarkers lineattrs=(color=darkpurple pattern=2 thickness=2);
 xaxis label = 'Time' values=(0 to 10 by 2);
 yaxis label='Outcome Improvement --------->';
run;

ods region x=4.1in y=0.1in height=4.0in width=4.0in;
title "Individual Trajectories -- X=0 (blue); X=1 (red)";
proc sgplot data = vert_example noautolegend;
 series   x=time y=outcome0 / group=subject lineattrs=(color=blue pattern=1 thickness=1) ;
 series   x=time y=outcome1 / group=subject lineattrs=(color=red pattern=1 thickness=1) ;
 loess    x=time y=outcome0 / nomarkers lineattrs=(color=darkBlue pattern=2 thickness=2);
 loess    x=time y=outcome1 / nomarkers lineattrs=(color=darkRed pattern=2 thickness=2);
 keylegend / location=inside position=topleft noborder;
 xaxis label='Time' values=(0 to 10 by 2);
 yaxis label='Outcome Improvement --------->';
run;
ods layout end;
ods pdf close;
