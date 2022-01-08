%macro setup(program,index_folder);
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

	%if &SYSSCP = WIN %then %let slash = \;
	%else %let slash = /;

	data te;
	  set sashelp.vextfl;
	  where find(upcase(xPath),upcase("&program"));
	  if _n_= 1;

		index_folder = "&index_folder.";

		length root filePath macPath datPath datPath2 outPath $300;
		root         = substr(upcase(xPath),1,index(upcase(xPath),upcase(index_folder)) + length(index_folder)-1);
		filePath     = substr(upcase(xPath),1,index(upcase(xPath),upcase("&program"))-2);
		macPath      = strip(root)||"&slash."||"SAS-MACROS"||"&slash.";
		datPath      = strip(root)||"&slash."||"DATA";
		datPath2     = tranwrd(filePath,"SAS-PROGRAMS","DATA");
		outPath      = tranwrd(filePath,"SAS-PROGRAMS","SAS-OUTPUT");		

		call symput('filePath',   strip(filePath));
		call symput('macPath',    strip(macPath));
		call symput('root',       strip(root));
		call symput('datPath',    strip(datPath));
		call symput('datPath2',   strip(datPath2));
		call symput('outPath',    strip(outPath));	
		
		keep xPath root filePath macPath datPath: outPath;
	run;

	title;
	footnote;
	options mergenoby=warn nodate nonumber;

	libname dat     "&datPath.";
	libname dat2    "&datPath2.";
	
	%put %upcase(no)TE: Program="&program." executed by User="&sysuserid." on &sysdate at &systime;
%mend setup;
