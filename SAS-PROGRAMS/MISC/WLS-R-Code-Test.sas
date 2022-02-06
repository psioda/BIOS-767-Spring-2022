%let root = C:\Users\psioda\Documents\GitHub\bios-courses\BIOS-767\R-PROGRAMS\MISC;

data simDat;
 infile "&root.\sim.dat" dlm=',' firstobs=2;
 input id y gender time;
 timec = put(time,2.);
run;

proc genmod data = simDat ;
 class id gender timec;
 model y = gender gender*time / noint;
 repeated subject=id / within=timec  type=cs modelse;
run;
quit;
