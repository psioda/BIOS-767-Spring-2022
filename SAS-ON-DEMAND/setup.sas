%macro setup(program,pname);
	ods html close;
	ods listing close;

	** kill work libary;
	proc datasets library=work noprint kill; run; quit;

	** delete local macro variables;
	data vars; set sashelp.vmacro; run;
	data _null_;
	  set vars;
		temp=lag(name);
		if scope='GLOBAL' and substr(name,1,3) ne 'SYS' and temp ne name then
		call execute('%symdel '||trim(left(name))||';');
	run;

	** create file and output Path macro variables;
	%global root slash filePath macPath datPath datPath2 outPath;
	
	%let root = /home/mpsioda82;
	%let filePath = &root./SAS-PROGRAMS;
	%let macPath  = &root./SAS-PROGRAMS;
	%let datPath  = &root./DATA;
	%let datPath2 = &root./DATA/&PNAME.;
	%let outPath  = &root./SAS-OUTPUT/&PNAME.;
	%let slash    = /;
	

	title;
	footnote;
	options mergenoby=warn nodate nonumber;

	libname dat     "&datPath.";
	libname dat2    "&datPath2.";
	
	%put %upcase(no)TE: Program="&program." executed by User="&sysuserid." on &sysdate at &systime;
%mend setup;
