/*-------------------------------------------------------------------------
 |                                                                         
 |             SAS SUPPLEMENTAL SYNTAX FILE FOR ICPSR 09948
 |                  NATIONAL YOUTH SURVEY (1983): WAVE 6
 |
 | This SAS program is provided for optional use with the SAS transport
 | version of this data file as distributed by ICPSR. The metadata
 | provided below are not stored in the SAS transport version of this data
 | collection.  Users need to use SAS PROC CIMPORT to import the SAS
 | transport file to a SAS data set on their system. This program can
 | then be used in conjunction with the SAS system data file.
 |
 | PROC FORMAT:  creates user-defined formats for the variables. Formats
 | replace original value codes with value code descriptions.  Only
 | variables with user-defined formats are included in this section.
 |
 | DATA:  begins a SAS data step and names an output SAS data set. Users
 | should replace "SAS-dataset" with their name for the SAS data set copied
 | from the SAS transport file. Users can add a SAS libname statement
 | and an output SAS data set name to make a permanent SAS data set.
 |
 | MISSING VALUE RECODES:  sets user-defined numeric missing values to
 | missing as interpreted by the SAS system. Only variables with
 | user-defined missing values are included in this section.
 |
 | If any variables have more than one missing value, they are assigned
 | to the standard missing value of a single period (.) in the statement
 | below. To maintain the original meaning of missing codes, users may want
 | to take advantage of the SAS missing values (the letters A-Z or an
 | underscore preceded by a period).
 |
 | An example of a standard missing value recode:
 |
 |   IF (RELATION = 98 OR RELATION = 99) THEN RELATION = .;
 |
 | The same example using special missing value recodes:
 |
 |    IF RELATION = 98 THEN RELATION = .A;
 |    IF RELATION = 99 THEN RELATION = .B;
 |
 | FORMAT:  associates the formats created by the PROC FORMAT step with
 | the variables stored in the SAS data set. Users can refer to their
 | SAS manual for information on how to permanently store formats in a
 | SAS catalog.
 |
 | NOTE:  Users should modify this file to suit their specific needs.
 | The MISSING VALUE RECODES section has been commented out (i.e., '/*').
 | To make this section active in the program, users should remove the SAS
 | comment indicators from this section.
 |
 |------------------------------------------------------------------------*/

* SAS PROC FORMAT;

PROC FORMAT;
  VALUE v1ffffff  1='(1) Male' 2='(2) Female' ;
  VALUE v2ffffff  1='(1) Anglo' 2='(2) Black' 3='(3) Hispanic' 4='(4) American Indian'
                  5='(5) Asian' 6='(6) Other' ;
  VALUE v7ffffff  1='(1) Single' 2='(2) Married' 3='(3) Divorced' ;
  VALUE v10fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v15fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v16fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v17fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v18fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v19fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v20fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v21fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v24fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v27fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v30fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v33fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v37fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v38fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v39fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v40fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v41fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v42fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v43fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v44fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v45fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v47fffff  1='(1) NIMH' 2='(2) LEAA' ;
  VALUE v50fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v51fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v52fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v53fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v54fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v55fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v56fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v57fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v58fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v59fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v60fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v61fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v62fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v63fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v64fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v65fffff  1='(1) Mother/Father' 2='(2) Mother only' 3='(3) Father only'
                  4='(4) Moth/Stepfath' 5='(5) Fath/Stepmoth' 6='(6) Spouse' 7='(7) Roommate'
                  8='(8) Boy/girlfriend' 9='(9) Alone' 10='(10) Military' 11='(11) Other'
                  12='(12) Mother/oth rel' 13='(13) Father/oth rel'
                  14='(14) Moth/fath oth rel' 15='(15) Relatives' 16='(16) In-laws'
                  17='(17) Spouse/in-laws' 18='(18) Prison' 19='(19) Spouse/parents'
                  20='(20) Boy/girlfrd/par' 21='(21) B/gfriend/in-law' ;
  VALUE v66fffff  1='(1) Not problem' 2='(2) Somewhat problem' 3='(3) Big problem' ;
  VALUE v67fffff  1='(1) Not problem' 2='(2) Somewhat problem' 3='(3) Big problem' ;
  VALUE v68fffff  1='(1) Not problem' 2='(2) Somewhat problem' 3='(3) Big problem' ;
  VALUE v69fffff  1='(1) Not problem' 2='(2) Somewhat problem' 3='(3) Big problem' ;
  VALUE v70fffff  1='(1) Not problem' 2='(2) Somewhat problem' 3='(3) Big problem' ;
  VALUE v71fffff  1='(1) Not problem' 2='(2) Somewhat problem' 3='(3) Big problem' ;
  VALUE v72fffff  1='(1) Not problem' 2='(2) Somewhat problem' 3='(3) Big problem' ;
  VALUE v73fffff  1='(1) Not problem' 2='(2) Somewhat problem' 3='(3) Big problem' ;
  VALUE v74fffff  1='(1) Not problem' 2='(2) Somewhat problem' 3='(3) Big problem' ;
  VALUE v75fffff  1='(1) Not problem' 2='(2) Somewhat problem' 3='(3) Big problem' ;
  VALUE v76fffff  1='(1) Not problem' 2='(2) Somewhat problem' 3='(3) Big problem' ;
  VALUE v77fffff  1='(1) Not problem' 2='(2) Somewhat problem' 3='(3) Big problem' ;
  VALUE v78fffff  1='(1) Not problem' 2='(2) Somewhat problem' 3='(3) Big problem' ;
  VALUE v79fffff  1='(1) Not problem' 2='(2) Somewhat problem' 3='(3) Big problem' ;
  VALUE v80fffff  1='(1) Not problem' 2='(2) Somewhat problem' 3='(3) Big problem' ;
  VALUE v81fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v82fffff  1='(1) No' 2='(2) Yes' 3='(3) Yes to V81' ;
  VALUE v83fffff  1='(1) Not imp' 2='(2) Not too imp' 3='(3) Somewhat imp' 4='(4) Pretty imp'
                  5='(5) Very imp' ;
  VALUE v84fffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v85fffff  0='(0) Less than once wk' ;
  VALUE v86fffff  0='(0) Less than once wk' ;
  VALUE v87fffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v89fffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v90fffff  1='(1) Not at all' 2='(2) In a few ways' 3='(3) In some ways'
                  4='(4) In most ways' 5='(5) In all ways' ;
  VALUE v91fffff  1='(1) Not imp' 2='(2) Not too imp' 3='(3) Somewhat imp' 4='(4) Pretty imp'
                  5='(5) Very imp' ;
  VALUE v92fffff  1='(1) Very diss' 2='(2) Somewhat diss' 3='(3) Neither'
                  4='(4) Somewhat satisfied' 5='(5) Very satisfied' ;
  VALUE v93fffff  1='(1) None' 2='(2) A few' 3='(3) Some' 4='(4) Most' 5='(5) All' ;
  VALUE v94fffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v95fffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v96fffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v97fffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v98fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v99fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v102ffff  1='(1) Very diss' 2='(2) Somewhat diss' 3='(3) Neither'
                  4='(4) Somewhat satisfied' 5='(5) Very satisfied' ;
  VALUE v103ffff  1='(1) Not imp' 2='(2) Not too imp' 3='(3) Somewhat imp' 4='(4) Pretty imp'
                  5='(5) Very imp' ;
  VALUE v104ffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v105ffff  18='(18) Not in school' 19='(19) Adult ed' 20='(20) GED program'
                  21='(21) Other' ;
  VALUE v106ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v107ffff  18='(18) Not in school' 19='(19) Adult ed' 20='(20) GED program'
                  21='(21) Other' ;
  VALUE v109ffff  1='(1) Mostly F''s' 2='(2) Mostly D''s' 3='(3) Mostly C''s'
                  4='(4) Mostly B''s' 5='(5) Mostly A''s' ;
  VALUE v110ffff  0='(0) Less than once wk' ;
  VALUE v111ffff  0='(0) Less than once wk' ;
  VALUE v112ffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v114ffff  1='(1) Not imp' 2='(2) Not too imp' 3='(3) Somewhat imp' 4='(4) Pretty imp'
                  5='(5) Very imp' ;
  VALUE v115ffff  1='(1) Very diss' 2='(2) Somewhat diss' 3='(3) Neither'
                  4='(4) Somewhat satisfied' 5='(5) Very satisfied' ;
  VALUE v116ffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v117ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v118ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v119ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v120ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v121ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v122ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v123ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v124ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v125ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v126ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v127ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v128ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v129ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v130ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v131ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v132ffff  1='(1) Not imp' 2='(2) Not too imp' 3='(3) Somewhat imp' 4='(4) Pretty imp'
                  5='(5) Very imp' ;
  VALUE v133ffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v138ffff  1='(1) Not imp' 2='(2) Not too imp' 3='(3) Somewhat imp' 4='(4) Pretty imp'
                  5='(5) Very imp' ;
  VALUE v139ffff  1='(1) Very diss' 2='(2) Somewhat diss' 3='(3) Neither'
                  4='(4) Somewhat satisfied' 5='(5) Very satisfied' ;
  VALUE v140ffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v141ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v142ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v143ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v144ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v145ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v146ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v147ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v148ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v149ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v150ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v151ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v152ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v153ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v154ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v155ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v156ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v157ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v158ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v159ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v160ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v161ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v162ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v163ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v164ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v165ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v166ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v167ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v168ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v169ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v170ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v171ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v172ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v173ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v174ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v176ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v181ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v186ffff  1='(1) Spouse' 2='(2) Girl/boyfriend' ;
  VALUE v187ffff  0='(0) Less than 1 mo' ;
  VALUE v188ffff  1='(1) Not imp' 2='(2) Not too imp' 3='(3) Somewhat imp' 4='(4) Pretty imp'
                  5='(5) Very imp' ;
  VALUE v189ffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v190ffff  1='(1) Not at all' 2='(2) In a few ways' 3='(3) In some ways'
                  4='(4) In most ways' 5='(5) In all ways' ;
  VALUE v191ffff  1='(1) Very diss' 2='(2) Somewhat diss' 3='(3) Neither'
                  4='(4) Somewhat satisfied' 5='(5) Very satisfied' ;
  VALUE v192ffff  1='(1) None' 2='(2) A few' 3='(3) Some' 4='(4) Most' 5='(5) All' ;
  VALUE v193ffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v194ffff  1='(1) Very diss' 2='(2) Somewhat diss' 3='(3) Neither'
                  4='(4) Somewhat satisfied' 5='(5) Very satisfied' ;
  VALUE v195ffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v196ffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v197ffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v198ffff  0='(0) No' 1='(1) Once' 2='(2) 2 or 3 times' 3='(3) 4 or more times' ;
  VALUE v199ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v203ffff  16='(16) B.A. degree' 17='(17) Grad degree' ;
  VALUE v205ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times' 4='(4) Monthly'
                  5='(5) Weekly' ;
  VALUE v206ffff  0='(0) Less than 1 mo' ;
  VALUE v207ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times' 4='(4) Monthly'
                  5='(5) Weekly' ;
  VALUE v208ffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v209ffff  1='(1) Not imp' 2='(2) Not too imp' 3='(3) Somewhat imp' 4='(4) Pretty imp'
                  5='(5) Very imp' ;
  VALUE v210ffff  1='(1) Very diss' 2='(2) Somewhat diss' 3='(3) Neither'
                  4='(4) Somewhat satisfied' 5='(5) Very satisfied' ;
  VALUE v211ffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v212ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times' 4='(4) Monthly'
                  5='(5) Weekly' ;
  VALUE v213ffff  0='(0) Less than 1 mo' ;
  VALUE v214ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times' 4='(4) Monthly'
                  5='(5) Weekly' ;
  VALUE v215ffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v216ffff  1='(1) Not imp' 2='(2) Not too imp' 3='(3) Somewhat imp' 4='(4) Pretty imp'
                  5='(5) Very imp' ;
  VALUE v217ffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v218ffff  1='(1) Very diss' 2='(2) Somewhat diss' 3='(3) Neither'
                  4='(4) Somewhat satisfied' 5='(5) Very satisfied' ;
  VALUE v219ffff  0='(0) Less than once wk' ;
  VALUE v220ffff  0='(0) Less than once wk' ;
  VALUE v221ffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v222ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times' 4='(4) Monthly'
                  5='(5) Weekly' ;
  VALUE v223ffff  0='(0) Less than 1 mo' ;
  VALUE v224ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times' 4='(4) Monthly'
                  5='(5) Weekly' ;
  VALUE v225ffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v226ffff  1='(1) Not imp' 2='(2) Not too imp' 3='(3) Somewhat imp' 4='(4) Pretty imp'
                  5='(5) Very imp' ;
  VALUE v227ffff  1='(1) Very diss' 2='(2) Somewhat diss' 3='(3) Neither'
                  4='(4) Somewhat satisfied' 5='(5) Very satisfied' ;
  VALUE v228ffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v229ffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v230ffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v231ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v232ffff  99='(99) Don''t know' ;
  VALUE v233ffff  99='(99) Don''t know' ;
  VALUE v234ffff  1='(1) Boy' 2='(2) Girl' ;
  VALUE v235ffff  1='(1) Yes' 2='(2) No' ;
  VALUE v236ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v237ffff  99='(99) Don''t know' ;
  VALUE v238ffff  99='(99) Don''t know' ;
  VALUE v239ffff  1='(1) Boy' 2='(2) Girl' ;
  VALUE v240ffff  1='(1) Yes' 2='(2) No' ;
  VALUE v241ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v242ffff  99='(99) Don''t know' ;
  VALUE v243ffff  99='(99) Don''t know' ;
  VALUE v244ffff  1='(1) Boy' 2='(2) Girl' ;
  VALUE v245ffff  1='(1) Yes' 2='(2) No' ;
  VALUE v246ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v247ffff  99='(99) Don''t know' ;
  VALUE v248ffff  99='(99) Don''t know' ;
  VALUE v249ffff  1='(1) Boy' 2='(2) Girl' ;
  VALUE v250ffff  1='(1) Yes' 2='(2) No' ;
  VALUE v251ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v252ffff  99='(99) Don''t know' ;
  VALUE v253ffff  99='(99) Don''t know' ;
  VALUE v254ffff  1='(1) Boy' 2='(2) Girl' ;
  VALUE v255ffff  1='(1) Yes' 2='(2) No' ;
  VALUE v256ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v258ffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v259ffff  1='(1) Very diss' 2='(2) Somewhat diss' 3='(3) Neither'
                  4='(4) Somewhat satisfied' 5='(5) Very satisfied' ;
  VALUE v260ffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v261ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times' 4='(4) Monthly'
                  5='(5) Weekly' ;
  VALUE v262ffff  1='(1) Not imp' 2='(2) Not too imp' 3='(3) Somewhat imp' 4='(4) Pretty imp'
                  5='(5) Very imp' ;
  VALUE v263ffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v264ffff  1='(1) Poor' 3='(3) Fair' 5='(5) Good' 8='(8) Already achieved'
                  9='(9) Don''t know/NA' ;
  VALUE v265ffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v266ffff  1='(1) Poor' 3='(3) Fair' 5='(5) Good' 8='(8) Already achieved'
                  9='(9) Don''t know/NA' ;
  VALUE v267ffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v268ffff  1='(1) Poor' 3='(3) Fair' 5='(5) Good' 8='(8) Already achieved'
                  9='(9) Don''t know/NA' ;
  VALUE v269ffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v270ffff  1='(1) Poor' 3='(3) Fair' 5='(5) Good' 8='(8) Already achieved'
                  9='(9) Don''t know/NA' ;
  VALUE v271ffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v272ffff  1='(1) Poor' 3='(3) Fair' 5='(5) Good' 8='(8) Already achieved'
                  9='(9) Don''t know/NA' ;
  VALUE v273ffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v274ffff  1='(1) Poor' 3='(3) Fair' 5='(5) Good' 8='(8) Already achieved'
                  9='(9) Don''t know/NA' ;
  VALUE v275ffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v276ffff  1='(1) Poor' 3='(3) Fair' 5='(5) Good' 8='(8) Already achieved'
                  9='(9) Don''t know/NA' ;
  VALUE v277ffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v278ffff  1='(1) Poor' 3='(3) Fair' 5='(5) Good' 8='(8) Already achieved'
                  9='(9) Don''t know/NA' ;
  VALUE v279ffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v280ffff  1='(1) Poor' 3='(3) Fair' 5='(5) Good' 8='(8) Already achieved'
                  9='(9) Don''t know/NA' ;
  VALUE v281ffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v282ffff  1='(1) Poor' 3='(3) Fair' 5='(5) Good' 8='(8) Already achieved'
                  9='(9) Don''t know/NA' ;
  VALUE v283ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v284ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v285ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v286ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v287ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v288ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v289ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v290ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v291ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v292ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v293ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v294ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v295ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v296ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v297ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v298ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v299ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v300ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v301ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v302ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v303ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v304ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v305ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v306ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v307ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v308ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v309ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v310ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v311ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v312ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v313ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v314ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v315ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v316ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v317ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v318ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v319ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v320ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v321ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v322ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v323ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v324ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v325ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v326ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v327ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v328ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v329ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v330ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v331ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v332ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v333ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v334ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v335ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v336ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v337ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v338ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v339ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v340ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v341ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v342ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v343ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v344ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v345ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v346ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v347ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v348ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v349ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v350ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v351ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v352ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v353ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v354ffff  1='(1) Not wrong' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE v355ffff  1='(1) Not wrong' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE v356ffff  1='(1) Not wrong' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE v357ffff  1='(1) Not wrong' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE v358ffff  1='(1) Not wrong' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE v359ffff  1='(1) Not wrong' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE v360ffff  1='(1) Not wrong' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE v361ffff  1='(1) Not wrong' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE v362ffff  1='(1) Not wrong' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE v363ffff  1='(1) Not wrong' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE v364ffff  1='(1) Not wrong' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE v365ffff  1='(1) Not wrong' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE v366ffff  1='(1) Not wrong' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE v367ffff  1='(1) Not wrong' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE v368ffff  1='(1) Not wrong' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE v369ffff  1='(1) None of them' 2='(2) Very few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v370ffff  1='(1) None of them' 2='(2) Very few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v371ffff  1='(1) None of them' 2='(2) Very few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v372ffff  1='(1) None of them' 2='(2) Very few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v373ffff  1='(1) None of them' 2='(2) Very few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v374ffff  1='(1) None of them' 2='(2) Very few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v375ffff  1='(1) None of them' 2='(2) Very few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v376ffff  1='(1) None of them' 2='(2) Very few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v377ffff  1='(1) None of them' 2='(2) Very few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v378ffff  1='(1) None of them' 2='(2) Very few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v379ffff  1='(1) None of them' 2='(2) Very few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v380ffff  1='(1) None of them' 2='(2) Very few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v381ffff  1='(1) None of them' 2='(2) Very few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v382ffff  1='(1) None of them' 2='(2) Very few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v384ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v386ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v388ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v390ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v392ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v394ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v396ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v398ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v400ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v402ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v404ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v406ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v408ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v410ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v412ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v414ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v416ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v418ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v420ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v422ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v424ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v426ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v428ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v430ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v432ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v434ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v436ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v438ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v440ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v442ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v444ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v446ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v448ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v450ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v452ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v454ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v456ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v458ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v460ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v462ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v464ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v466ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v468ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v470ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v472ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v473ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v474ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v475ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v476ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v477ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v478ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v479ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v480ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v481ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v482ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v483ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v484ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v485ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v486ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v487ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v488ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v489ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v490ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v491ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v492ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v493ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v494ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v495ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v496ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v497ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v498ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v499ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v500ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v501ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v502ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v503ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v504ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v505ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v506ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v507ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v508ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v509ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v510ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v511ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v512ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v513ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v514ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v515ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v516ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v517ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v518ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v519ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v520ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v521ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v522ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v523ffff  1='(1) Inappropriate' 2='(2) App but trivial' 3='(3) App & nontrivial' ;
  VALUE v525ffff  0='(0) Alone' ;
  VALUE v526ffff  0='(0) No' ;
  VALUE v527ffff  0='(0) No' ;
  VALUE v529ffff  0='(0) Alone' ;
  VALUE v530ffff  0='(0) No' ;
  VALUE v531ffff  0='(0) No' ;
  VALUE v533ffff  0='(0) Alone' ;
  VALUE v534ffff  0='(0) No' ;
  VALUE v535ffff  0='(0) No' ;
  VALUE v537ffff  0='(0) Alone' ;
  VALUE v538ffff  0='(0) No' ;
  VALUE v539ffff  0='(0) No' ;
  VALUE v540ffff  1='(1) Car' 2='(2) Truck' 3='(3) Motorcycle' 4='(4) Other' ;
  VALUE v541ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v542ffff  1='(1) Family member' 2='(2) Friend' 3='(3) Other' ;
  VALUE v543ffff  1='(1) Had the keys' 2='(2) Hot wired' 3='(3) Ignition' 4='(4) Other' ;
  VALUE v544ffff  1='(1) Riding' 2='(2) Keep' 3='(3) Keep parts' 4='(4) Sell' 5='(5) Sell parts'
                  6='(6) Other' ;
  VALUE v545ffff  0='(0) Alone' ;
  VALUE v546ffff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking/drugs' ;
  VALUE v547ffff  0='(0) No' ;
  VALUE v548ffff  0='(0) No' ;
  VALUE v549ffff  1='(1) Car' 2='(2) Truck' 3='(3) Motorcycle' 4='(4) Other' ;
  VALUE v550ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v551ffff  1='(1) Family member' 2='(2) Friend' 3='(3) Other' ;
  VALUE v552ffff  1='(1) Had the keys' 2='(2) Hot wired' 3='(3) Ignition' 4='(4) Other' ;
  VALUE v553ffff  1='(1) Riding' 2='(2) Keep' 3='(3) Keep parts' 4='(4) Sell' 5='(5) Sell parts'
                  6='(6) Other' ;
  VALUE v554ffff  0='(0) Alone' ;
  VALUE v555ffff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking/drugs' ;
  VALUE v556ffff  0='(0) No' ;
  VALUE v557ffff  0='(0) No' ;
  VALUE v558ffff  1='(1) Car' 2='(2) Truck' 3='(3) Motorcycle' 4='(4) Other' ;
  VALUE v559ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v560ffff  1='(1) Family member' 2='(2) Friend' 3='(3) Other' ;
  VALUE v561ffff  1='(1) Had the keys' 2='(2) Hot wired' 3='(3) Ignition' 4='(4) Other' ;
  VALUE v562ffff  1='(1) Riding' 2='(2) Keep' 3='(3) Keep parts' 4='(4) Sell' 5='(5) Sell parts'
                  6='(6) Other' ;
  VALUE v563ffff  0='(0) Alone' ;
  VALUE v564ffff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking/drugs' ;
  VALUE v565ffff  0='(0) No' ;
  VALUE v566ffff  0='(0) No' ;
  VALUE v568ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v569ffff  1='(1) Retail store' 2='(2) Private home' 3='(3) Auto' 4='(4) Work place'
                  5='(5) College/school' 6='(6) Const site' 7='(7) Warehouse' 8='(8) Other' ;
  VALUE v570ffff  0='(0) Alone' ;
  VALUE v571ffff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking/drugs' ;
  VALUE v572ffff  0='(0) No' ;
  VALUE v573ffff  0='(0) No' ;
  VALUE v575ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v576ffff  1='(1) Retail store' 2='(2) Private home' 3='(3) Auto' 4='(4) Work place'
                  5='(5) College/school' 6='(6) Const site' 7='(7) Warehouse' 8='(8) Other' ;
  VALUE v577ffff  0='(0) Alone' ;
  VALUE v578ffff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking/drugs' ;
  VALUE v579ffff  0='(0) No' ;
  VALUE v580ffff  0='(0) No' ;
  VALUE v582ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v583ffff  1='(1) Retail store' 2='(2) Private home' 3='(3) Auto' 4='(4) Work place'
                  5='(5) College/school' 6='(6) Const site' 7='(7) Warehouse' 8='(8) Other' ;
  VALUE v584ffff  0='(0) Alone' ;
  VALUE v585ffff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking/drugs' ;
  VALUE v586ffff  0='(0) No' ;
  VALUE v587ffff  0='(0) No' ;
  VALUE v588ffff  1='(1) Try to buy' 2='(2) Try to sell' 3='(3) Try to hold' 4='(4) Buy'
                  5='(5) Sell' 6='(6) Hold' 7='(7) Other' ;
  VALUE v590ffff  0='(0) Alone' ;
  VALUE v591ffff  0='(0) No' ;
  VALUE v592ffff  0='(0) No' ;
  VALUE v593ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v594ffff  0='(0) Alone' ;
  VALUE v595ffff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking/drugs' ;
  VALUE v596ffff  0='(0) No' ;
  VALUE v597ffff  0='(0) No' ;
  VALUE v598ffff  1='(1) Knife' 2='(2) Gun' 3='(3) Other' ;
  VALUE v600ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v601ffff  0='(0) Alone' ;
  VALUE v602ffff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking/drugs' ;
  VALUE v603ffff  0='(0) No' ;
  VALUE v604ffff  0='(0) No' ;
  VALUE v605ffff  1='(1) Hit' 2='(2) Beat/choked' 3='(3) Attacked w/weapon' 4='(4) Other' ;
  VALUE v606ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v607ffff  1='(1) Knocked down' 2='(2) Bruised' 3='(3) Cut/bleeding'
                  4='(4) Unconscious' 5='(5) Hospitalized' 6='(6) Other' ;
  VALUE v608ffff  1='(1) A stranger' 2='(2) An acquaintance' 3='(3) A friend'
                  4='(4) Family member' 5='(5) Other' ;
  VALUE v609ffff  0='(0) Alone' ;
  VALUE v610ffff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking/drugs' ;
  VALUE v611ffff  0='(0) No' ;
  VALUE v612ffff  0='(0) No' ;
  VALUE v613ffff  1='(1) Hit' 2='(2) Beat/choked' 3='(3) Attacked w/weapon' 4='(4) Other' ;
  VALUE v614ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v615ffff  1='(1) Knocked down' 2='(2) Bruised' 3='(3) Cut/bleeding'
                  4='(4) Unconscious' 5='(5) Hospitalized' 6='(6) Other' ;
  VALUE v616ffff  1='(1) A stranger' 2='(2) An acquaintance' 3='(3) A friend'
                  4='(4) Family member' 5='(5) Other' ;
  VALUE v617ffff  0='(0) Alone' ;
  VALUE v618ffff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking/drugs' ;
  VALUE v619ffff  0='(0) No' ;
  VALUE v620ffff  0='(0) No' ;
  VALUE v621ffff  1='(1) Hit' 2='(2) Beat/choked' 3='(3) Attacked w/weapon' 4='(4) Other' ;
  VALUE v622ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v623ffff  1='(1) Knocked down' 2='(2) Bruised' 3='(3) Cut/bleeding'
                  4='(4) Unconscious' 5='(5) Hospitalized' 6='(6) Other' ;
  VALUE v624ffff  1='(1) A stranger' 2='(2) An acquaintance' 3='(3) A friend'
                  4='(4) Family member' 5='(5) Other' ;
  VALUE v625ffff  0='(0) Alone' ;
  VALUE v626ffff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking/drugs' ;
  VALUE v627ffff  0='(0) No' ;
  VALUE v628ffff  0='(0) No' ;
  VALUE v629ffff  1='(1) 1-2 people' 2='(2) 3-5 people' 3='(3) > 5 people' ;
  VALUE v630ffff  1='(1) 1-2 people' 2='(2) 3-5 people' 3='(3) > 5 people' ;
  VALUE v631ffff  1='(1) Yes' 2='(2) No' ;
  VALUE v632ffff  1='(1) Knives' 2='(2) Chains' 3='(3) Knckles/numchck' 4='(4) Guns'
                  5='(5) Other' 6='(6) Mxed weap w/knive' 7='(7) Mxed weap w/guns'
                  8='(8) Mxed wp-no gun/knv' ;
  VALUE v633ffff  1='(1) Yes' 2='(2) No' ;
  VALUE v634ffff  1='(1) Knocked down' 2='(2) Bruised' 3='(3) Cut/bleeding'
                  4='(4) Unconscious' 5='(5) Hospitalized' 6='(6) Other' ;
  VALUE v635ffff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking/drugs' ;
  VALUE v636ffff  0='(0) No' ;
  VALUE v637ffff  0='(0) No' ;
  VALUE v638ffff  1='(1) 1-2 people' 2='(2) 3-5 people' 3='(3) > 5 people' ;
  VALUE v639ffff  1='(1) 1-2 people' 2='(2) 3-5 people' 3='(3) > 5 people' ;
  VALUE v640ffff  1='(1) Yes' 2='(2) No' ;
  VALUE v641ffff  1='(1) Knives' 2='(2) Chains' 3='(3) Knckles/numchck' 4='(4) Guns'
                  5='(5) Other' 6='(6) Mxed weap w/knive' 7='(7) Mxed weap w/guns'
                  8='(8) Mxed wp-no gun/knv' ;
  VALUE v642ffff  1='(1) Yes' 2='(2) No' ;
  VALUE v643ffff  1='(1) Knocked down' 2='(2) Bruised' 3='(3) Cut/bleeding'
                  4='(4) Unconscious' 5='(5) Hospitalized' 6='(6) Other' ;
  VALUE v644ffff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking/drugs' ;
  VALUE v645ffff  0='(0) No' ;
  VALUE v646ffff  0='(0) No' ;
  VALUE v647ffff  1='(1) 1-2 people' 2='(2) 3-5 people' 3='(3) > 5 people' ;
  VALUE v648ffff  1='(1) 1-2 people' 2='(2) 3-5 people' 3='(3) > 5 people' ;
  VALUE v649ffff  1='(1) Yes' 2='(2) No' ;
  VALUE v650ffff  1='(1) Knives' 2='(2) Chains' 3='(3) Knckles/numchck' 4='(4) Guns'
                  5='(5) Other' 6='(6) Mxed weap w/knive' 7='(7) Mxed weap w/guns'
                  8='(8) Mxed wp-no gun/knv' ;
  VALUE v651ffff  1='(1) Yes' 2='(2) No' ;
  VALUE v652ffff  1='(1) Knocked down' 2='(2) Bruised' 3='(3) Cut/bleeding'
                  4='(4) Unconscious' 5='(5) Hospitalized' 6='(6) Other' ;
  VALUE v653ffff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking/drugs' ;
  VALUE v654ffff  0='(0) No' ;
  VALUE v655ffff  0='(0) No' ;
  VALUE v656ffff  1='(1) Overdraft' 2='(2) Forged check' 3='(3) Cashed check'
                  4='(4) Counterfeit money' 5='(5) Other' ;
  VALUE v658ffff  0='(0) Alone' ;
  VALUE v659ffff  0='(0) No' ;
  VALUE v660ffff  0='(0) No' ;
  VALUE v662ffff  100='(100) Lrg quant/unknwn' ;
  VALUE v663ffff  0='(0) Alone' ;
  VALUE v664ffff  0='(0) No' ;
  VALUE v665ffff  0='(0) No' ;
  VALUE v666ffff  1='(1) Money' 2='(2) Other' 3='(3) Both' ;
  VALUE v669ffff  0='(0) Alone' ;
  VALUE v670ffff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking/drugs' ;
  VALUE v671ffff  0='(0) No' ;
  VALUE v672ffff  0='(0) No' ;
  VALUE v673ffff  1='(1) Money' 2='(2) Other' 3='(3) Both' ;
  VALUE v676ffff  0='(0) Alone' ;
  VALUE v677ffff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking/drugs' ;
  VALUE v678ffff  0='(0) No' ;
  VALUE v679ffff  0='(0) No' ;
  VALUE v680ffff  1='(1) Actually forced' 2='(2) Try didn''t succd' ;
  VALUE v681ffff  1='(1) Verb threat inj' 2='(2) Mild roughness' 3='(3) Phys beat/choke'
                  4='(4) Threat of weapon' 5='(5) Used a weapon' 6='(6) Other' ;
  VALUE v682ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v683ffff  1='(1) Knocked down' 2='(2) Bruised' 3='(3) Cut/bleeding'
                  4='(4) Unconscious' 5='(5) Hospitalized' 6='(6) Other' ;
  VALUE v684ffff  0='(0) Alone' ;
  VALUE v685ffff  1='(1) A stranger' 2='(2) An acquaintance' 3='(3) A friend'
                  4='(4) Family member' 5='(5) Other' ;
  VALUE v686ffff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking/drugs' ;
  VALUE v687ffff  0='(0) No' ;
  VALUE v688ffff  0='(0) No' ;
  VALUE v689ffff  1='(1) Actually forced' 2='(2) Tried didn sucd' ;
  VALUE v690ffff  1='(1) Verb thrts injy' 2='(2) Mild roughness' 3='(3) Phys beatg/chokg'
                  4='(4) Threat of weapon' 5='(5) Used a weapon' 6='(6) Other' ;
  VALUE v691ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v692ffff  1='(1) Knocked down' 2='(2) Bruised' 3='(3) Cut/bleeding'
                  4='(4) Unconscious' 5='(5) Hospitalized' 6='(6) Other' ;
  VALUE v693ffff  0='(0) Alone' ;
  VALUE v694ffff  1='(1) A stranger' 2='(2) An acquaintance' 3='(3) A friend'
                  4='(4) Family member' 5='(5) Other' ;
  VALUE v695ffff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking/drugs' ;
  VALUE v696ffff  0='(0) No' ;
  VALUE v697ffff  0='(0) No' ;
  VALUE v698ffff  1='(1) Actually forced' 2='(2) Tried ddnt succd' ;
  VALUE v699ffff  1='(1) Verb thrts injy' 2='(2) Mild roughness' 3='(3) Phys beatg/chokg'
                  4='(4) Threat of weapon' 5='(5) Used a weapon' 6='(6) Other' ;
  VALUE v700ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v701ffff  1='(1) Knocked down' 2='(2) Bruised' 3='(3) Cut/bleeding'
                  4='(4) Unconscious' 5='(5) Hospitalized' 6='(6) Other' ;
  VALUE v702ffff  0='(0) Alone' ;
  VALUE v703ffff  1='(1) A stranger' 2='(2) An acquaintance' 3='(3) A friend'
                  4='(4) Family member' 5='(5) Other' ;
  VALUE v704ffff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking/drugs' ;
  VALUE v705ffff  0='(0) No' ;
  VALUE v706ffff  0='(0) No' ;
  VALUE v707ffff  1='(1) Actually hit' 2='(2) Tried didt succd' 3='(3) Only threatd hit' ;
  VALUE v708ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v709ffff  1='(1) Pushd or slappd' 2='(2) Caused pain' 3='(3) Knocked down'
                  4='(4) Bruised' 5='(5) Cut/bleeding' 6='(6) Unconscious'
                  7='(7) Hospitalized' 8='(8) Other' ;
  VALUE v710ffff  0='(0) Alone' ;
  VALUE v711ffff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking/drugs' ;
  VALUE v712ffff  0='(0) No' ;
  VALUE v713ffff  0='(0) No' ;
  VALUE v714ffff  1='(1) Actually hit' 2='(2) Tried ddnt succd' 3='(3) Only threatd hit' ;
  VALUE v715ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v716ffff  1='(1) Pushd or slappd' 2='(2) Caused pain' 3='(3) Knocked down'
                  4='(4) Bruised' 5='(5) Cut/bleeding' 6='(6) Unconscious'
                  7='(7) Hospitalized' 8='(8) Other' ;
  VALUE v717ffff  0='(0) Alone' ;
  VALUE v718ffff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking/drugs' ;
  VALUE v719ffff  0='(0) No' ;
  VALUE v720ffff  0='(0) No' ;
  VALUE v721ffff  1='(1) Actually hit' 2='(2) Tried ddnt succd' 3='(3) Only threatd hit' ;
  VALUE v722ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v723ffff  1='(1) Pushed or slapped' 2='(2) Caused pain' 3='(3) Knocked down'
                  4='(4) Bruised' 5='(5) Cut/bleeding' 6='(6) Unconscious'
                  7='(7) Hospitalized' 8='(8) Other' ;
  VALUE v724ffff  0='(0) Alone' ;
  VALUE v725ffff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking/drugs' ;
  VALUE v726ffff  0='(0) No' ;
  VALUE v727ffff  0='(0) No' ;
  VALUE v728ffff  1='(1) Actually hit' 2='(2) Tried ddnt succd' 3='(3) Only threatd hit' ;
  VALUE v729ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v730ffff  1='(1) Pushd or slappd' 2='(2) Caused pain' 3='(3) Knocked down'
                  4='(4) Bruised' 5='(5) Cut/bleeding' 6='(6) Unconscious'
                  7='(7) Hospitalized' 8='(8) Other' ;
  VALUE v731ffff  0='(0) Alone' ;
  VALUE v732ffff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking/drugs' ;
  VALUE v733ffff  0='(0) No' ;
  VALUE v734ffff  0='(0) No' ;
  VALUE v735ffff  1='(1) Actually hit' 2='(2) Tried ddnt succd' 3='(3) Only threatd hit' ;
  VALUE v736ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v737ffff  1='(1) Pushd or slappd' 2='(2) Caused pain' 3='(3) Knocked down'
                  4='(4) Bruised' 5='(5) Cut/bleeding' 6='(6) Unconscious'
                  7='(7) Hospitalized' 8='(8) Other' ;
  VALUE v738ffff  0='(0) Alone' ;
  VALUE v739ffff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking/drugs' ;
  VALUE v740ffff  0='(0) No' ;
  VALUE v741ffff  0='(0) No' ;
  VALUE v742ffff  1='(1) Marijuana' 2='(2) Pills' 3='(3) Cocaine' 4='(4) Heroin' 5='(5) Other' ;
  VALUE v744ffff  0='(0) Alone' ;
  VALUE v745ffff  0='(0) No' ;
  VALUE v746ffff  0='(0) No' ;
  VALUE v747ffff  1='(1) Stranger' 2='(2) Family member' 3='(3) Friend' 4='(4) Other' ;
  VALUE v750ffff  1='(1) Actually sold it' 2='(2) Tried to sell it' ;
  VALUE v751ffff  0='(0) Alone' ;
  VALUE v752ffff  0='(0) No' ;
  VALUE v753ffff  0='(0) No' ;
  VALUE v754ffff  1='(1) Car' 2='(2) Truck' 3='(3) Motorcycle' 4='(4) Other' ;
  VALUE v755ffff  1='(1) Family member' 2='(2) Friend' 3='(3) Other' ;
  VALUE v756ffff  1='(1) Had the keys' 2='(2) Hot wired' 3='(3) Ignition' 4='(4) Other' ;
  VALUE v757ffff  0='(0) Alone' ;
  VALUE v758ffff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking/drugs' ;
  VALUE v759ffff  0='(0) No' ;
  VALUE v760ffff  0='(0) No' ;
  VALUE v761ffff  1='(1) Punched' 2='(2) Physical beating' 3='(3) Other' ;
  VALUE v762ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v763ffff  1='(1) Knives' 2='(2) Chains' 3='(3) Hrd knckl/nmchck' 4='(4) Guns'
                  5='(5) Other' 6='(6) Mixd weapns knvs' 7='(7) Mixd weapns guns'
                  8='(8) Md wps-n gns kvs' ;
  VALUE v764ffff  1='(1) Money' 2='(2) Other' ;
  VALUE v765ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v766ffff  1='(1) Knocked down' 2='(2) Bruised' 3='(3) Cut/bleeding'
                  4='(4) Unconscious' 5='(5) Hospitalized' 6='(6) Other' ;
  VALUE v767ffff  0='(0) Alone' ;
  VALUE v768ffff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking/drugs' ;
  VALUE v769ffff  0='(0) No' ;
  VALUE v770ffff  0='(0) No' ;
  VALUE v771ffff  1='(1) Punched' 2='(2) Physical beating' 3='(3) Other' ;
  VALUE v772ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v773ffff  1='(1) Knives' 2='(2) Chains' 3='(3) Hrd knckl/nmchck' 4='(4) Guns'
                  5='(5) Other' 6='(6) Mixd weapns knvs' 7='(7) Mixd weapns guns'
                  8='(8) Md wpns-n gns ks' ;
  VALUE v774ffff  1='(1) Money' 2='(2) Other' ;
  VALUE v775ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v776ffff  1='(1) Knocked down' 2='(2) Bruised' 3='(3) Cut/bleeding'
                  4='(4) Unconscious' 5='(5) Hospitalized' 6='(6) Other' ;
  VALUE v777ffff  0='(0) Alone' ;
  VALUE v778ffff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking/drugs' ;
  VALUE v779ffff  0='(0) No' ;
  VALUE v780ffff  0='(0) No' ;
  VALUE v781ffff  1='(1) Punched' 2='(2) Physical beating' 3='(3) Other' ;
  VALUE v782ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v783ffff  1='(1) Knives' 2='(2) Chains' 3='(3) Hrd knckl/nmchck' 4='(4) Guns'
                  5='(5) Other' 6='(6) Mxd wpns knvs' 7='(7) Mxd wpns guns'
                  8='(8) Mxd ws-n gs ks' ;
  VALUE v784ffff  1='(1) Money' 2='(2) Other' ;
  VALUE v785ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v786ffff  1='(1) Knocked down' 2='(2) Bruised' 3='(3) Cut/bleeding'
                  4='(4) Unconscious' 5='(5) Hospitalized' 6='(6) Other' ;
  VALUE v787ffff  0='(0) Alone' ;
  VALUE v788ffff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking/drugs' ;
  VALUE v789ffff  0='(0) No' ;
  VALUE v790ffff  0='(0) No' ;
  VALUE v791ffff  1='(1) Punched' 2='(2) Phys beating' 3='(3) Other' ;
  VALUE v792ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v793ffff  1='(1) Knives' 2='(2) Chains' 3='(3) Hrd knckl/nmchck' 4='(4) Guns'
                  5='(5) Other' 6='(6) Mxd wpns knvs' 7='(7) Mxd wpns wth gns'
                  8='(8) Md ws-n gs ks' ;
  VALUE v794ffff  1='(1) Money' 2='(2) Other' ;
  VALUE v795ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v796ffff  1='(1) Knocked down' 2='(2) Bruised' 3='(3) Cut/bleeding'
                  4='(4) Unconscious' 5='(5) Hospitalized' 6='(6) Other' ;
  VALUE v797ffff  0='(0) Alone' ;
  VALUE v798ffff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking/drugs' ;
  VALUE v799ffff  0='(0) No' ;
  VALUE v800ffff  0='(0) No' ;
  VALUE v801ffff  1='(1) Punched' 2='(2) Physical beating' 3='(3) Other' ;
  VALUE v802ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v803ffff  1='(1) Knives' 2='(2) Chains' 3='(3) Hrd knckl/nmchck' 4='(4) Guns'
                  5='(5) Other' 6='(6) Mxd wpns wth knvs' 7='(7) Mxd wpns wth gns'
                  8='(8) Mxd ws-n gs ks' ;
  VALUE v804ffff  1='(1) Money' 2='(2) Other' ;
  VALUE v805ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v806ffff  1='(1) Knocked down' 2='(2) Bruised' 3='(3) Cut/bleeding'
                  4='(4) Unconscious' 5='(5) Hospitalized' 6='(6) Other' ;
  VALUE v807ffff  0='(0) Alone' ;
  VALUE v808ffff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking/drugs' ;
  VALUE v809ffff  0='(0) No' ;
  VALUE v810ffff  0='(0) No' ;
  VALUE v811ffff  1='(1) Punched' 2='(2) Physical beating' 3='(3) Other' ;
  VALUE v812ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v813ffff  1='(1) Knives' 2='(2) Chains' 3='(3) Hrd knckl/nmchck' 4='(4) Guns'
                  5='(5) Other' 6='(6) Mxd wpns wth knvs' 7='(7) Mxd wpns wth gns'
                  8='(8) Md ws-n gs ks' ;
  VALUE v814ffff  1='(1) Money' 2='(2) Other' ;
  VALUE v815ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v816ffff  1='(1) Knocked down' 2='(2) Bruised' 3='(3) Cut/bleeding'
                  4='(4) Unconscious' 5='(5) Hospitalized' 6='(6) Other' ;
  VALUE v817ffff  0='(0) Alone' ;
  VALUE v818ffff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking/drugs' ;
  VALUE v819ffff  0='(0) No' ;
  VALUE v820ffff  0='(0) No' ;
  VALUE v822ffff  1='(1) Retail store' 2='(2) Private home' 3='(3) Auto' 4='(4) Work place'
                  5='(5) School/college' 6='(6) Constrctn site' 7='(7) Warehouse'
                  8='(8) Other' ;
  VALUE v823ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v824ffff  0='(0) Alone' ;
  VALUE v825ffff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking/drugs' ;
  VALUE v826ffff  0='(0) No' ;
  VALUE v827ffff  0='(0) No' ;
  VALUE v828ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v830ffff  0='(0) Alone' ;
  VALUE v831ffff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking/drugs' ;
  VALUE v832ffff  0='(0) No' ;
  VALUE v833ffff  0='(0) No' ;
  VALUE v834ffff  1='(1) Building' 2='(2) Vehicle' 3='(3) House' 4='(4) Other' ;
  VALUE v835ffff  1='(1) Broke in' 2='(2) Tried' 3='(3) Door open' ;
  VALUE v836ffff  1='(1) Look around' 2='(2) Steal' 3='(3) Other' ;
  VALUE v837ffff  0='(0) Alone' ;
  VALUE v838ffff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking/drugs' ;
  VALUE v839ffff  0='(0) No' ;
  VALUE v840ffff  0='(0) No' ;
  VALUE v841ffff  1='(1) Building' 2='(2) Vehicle' 3='(3) House' 4='(4) Other' ;
  VALUE v842ffff  1='(1) Broke in' 2='(2) Tried' 3='(3) Door open' ;
  VALUE v843ffff  1='(1) Look around' 2='(2) Steal' 3='(3) Other' ;
  VALUE v844ffff  0='(0) Alone' ;
  VALUE v845ffff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking/drugs' ;
  VALUE v846ffff  0='(0) No' ;
  VALUE v847ffff  0='(0) No' ;
  VALUE v848ffff  1='(1) Building' 2='(2) Vehicle' 3='(3) House' 4='(4) Other' ;
  VALUE v849ffff  1='(1) Broke in' 2='(2) Tried' 3='(3) Door open' ;
  VALUE v850ffff  1='(1) Look around' 2='(2) Steal' 3='(3) Other' ;
  VALUE v851ffff  0='(0) Alone' ;
  VALUE v852ffff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking/drugs' ;
  VALUE v853ffff  0='(0) No' ;
  VALUE v854ffff  0='(0) No' ;
  VALUE v855ffff  1='(1) Stranger' 2='(2) Family member' 3='(3) Friend' 4='(4) Other' ;
  VALUE v857ffff  0='(0) Alone' ;
  VALUE v858ffff  0='(0) No' ;
  VALUE v859ffff  0='(0) No' ;
  VALUE v860ffff  1='(1) Purse snatching' 2='(2) Pick pocket' 3='(3) Other' ;
  VALUE v861ffff  1='(1) Money' 2='(2) Credit cards' 3='(3) Checks' 4='(4) Other' ;
  VALUE v862ffff  0='(0) Alone' ;
  VALUE v863ffff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking/drugs' ;
  VALUE v864ffff  0='(0) No' ;
  VALUE v865ffff  0='(0) No' ;
  VALUE v867ffff  0='(0) No' ;
  VALUE v868ffff  0='(0) No' ;
  VALUE v869ffff  1='(1) Punched' 2='(2) Physical beating' 3='(3) Other' ;
  VALUE v870ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v871ffff  1='(1) Knives' 2='(2) Chains' 3='(3) Hrd knckl/nmchck' 4='(4) Guns'
                  5='(5) Other' 6='(6) Mxd wpns knvs' 7='(7) Mxd wpns gns'
                  8='(8) Mxd ws-n gn ks' ;
  VALUE v872ffff  1='(1) Money' 2='(2) Other' ;
  VALUE v873ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v874ffff  1='(1) Knocked down' 2='(2) Bruised' 3='(3) Cut/bleeding'
                  4='(4) Unconscious' 5='(5) Hospitalized' 6='(6) Other' ;
  VALUE v875ffff  0='(0) Alone' ;
  VALUE v876ffff  0='(0) No' ;
  VALUE v877ffff  0='(0) No' ;
  VALUE v878ffff  1='(1) To steal' 2='(2) Other' ;
  VALUE v879ffff  0='(0) Alone' ;
  VALUE v880ffff  0='(0) No' ;
  VALUE v881ffff  0='(0) No' ;
  VALUE v883ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v884ffff  1='(1) < 2 wks' 2='(2) 2-4 wks' 3='(3) > 1-2 mos' 4='(4) > 2-3 mos'
                  5='(5) > 3-4 mos' 6='(6) > 4-6 mos' 7='(7) > 6 mos'
                  8='(8) Use not episodic' ;
  VALUE v885ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v886ffff  1='(1) < 2 wks' 2='(2) 2-4 wks' 3='(3) > 1-2 mos' 4='(4) > 2-3 mos'
                  5='(5) > 3-4 mos' 6='(6) > 4-6 mos' 7='(7) > 6 mos'
                  8='(8) Use not episodic' ;
  VALUE v891ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v892ffff  1='(1) < 2 wks' 2='(2) 2-4 wks' 3='(3) > 1-2 mos' 4='(4) > 2-3 mos'
                  5='(5) > 3-4 mos' 6='(6) > 4-6 mos' 7='(7) > 6 mos'
                  8='(8) Use not episodic' ;
  VALUE v894ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v895ffff  1='(1) < 2 wks' 2='(2) 2-4 wks' 3='(3) > 1-2 mos' 4='(4) > 2-3 mos'
                  5='(5) > 3-4 mos' 6='(6) > 4-6 mos' 7='(7) > 6 mos'
                  8='(8) Use not episodic' ;
  VALUE v897ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v898ffff  1='(1) < 2 wks' 2='(2) 2-4 wks' 3='(3) > 1-2 mos' 4='(4) > 2-3 mos'
                  5='(5) > 3-4 mos' 6='(6) > 4-6 mos' 7='(7) > 6 mos'
                  8='(8) Use not episodic' ;
  VALUE v900ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v901ffff  1='(1) < 2 wks' 2='(2) 2-4 wks' 3='(3) > 1-2 mos' 4='(4) > 2-3 mos'
                  5='(5) > 3-4 mos' 6='(6) > 4-6 mos' 7='(7) > 6 mos'
                  8='(8) Use not episodic' ;
  VALUE v903ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v904ffff  1='(1) < 2 wks' 2='(2) 2-4 wks' 3='(3) > 1-2 mos' 4='(4) > 2-3 mos'
                  5='(5) > 3-4 mos' 6='(6) > 4-6 mos' 7='(7) > 6 mos'
                  8='(8) Use not episodic' ;
  VALUE v906ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v907ffff  1='(1) < 2 wks' 2='(2) 2-4 wks' 3='(3) > 1-2 mos' 4='(4) > 2-3 mos'
                  5='(5) > 3-4 mos' 6='(6) > 4-6 mos' 7='(7) > 6 mos'
                  8='(8) Use not episodic' ;
  VALUE v909ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v910ffff  1='(1) < 2 wks' 2='(2) 2-4 wks' 3='(3) > 1-2 mos' 4='(4) > 2-3 mos'
                  5='(5) > 3-4 mos' 6='(6) > 4-6 mos' 7='(7) > 6 mos'
                  8='(8) Use not episodic' ;
  VALUE v912ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v913ffff  1='(1) < 2 wks' 2='(2) 2-4 wks' 3='(3) > 1-2 mos' 4='(4) > 2-3 mos'
                  5='(5) > 3-4 mos' 6='(6) > 4-6 mos' 7='(7) > 6 mos'
                  8='(8) Use not episodic' ;
  VALUE v915ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v916ffff  1='(1) < 2 wks' 2='(2) 2-4 wks' 3='(3) > 1-2 mos' 4='(4) > 2-3 mos'
                  5='(5) > 3-4 mos' 6='(6) > 4-6 mos' 7='(7) > 6 mos'
                  8='(8) Use not episodic' ;
  VALUE v918ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v919ffff  1='(1) < 2 wks' 2='(2) 2-4 wks' 3='(3) > 1-2 mos' 4='(4) > 2-3 mos'
                  5='(5) > 3-4 mos' 6='(6) > 4-6 mos' 7='(7) > 6 mos'
                  8='(8) Use not episodic' ;
  VALUE v920ffff  1='(1) THC' 2='(2) Quaaludes' 3='(3) Cough medicine' 4='(4) Robitussin'
                  5='(5) Sominex' 6='(6) Sudafed' 7='(7) No-Doze' 8='(8) Demerol'
                  9='(9) Wght ctrl plls' 10='(10) Coricidin' 11='(11) Mushrooms' 13='(13) Pam'
                  14='(14) Other' ;
  VALUE v922ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE v923ffff  1='(1) < 2 wks' 2='(2) 2-4 wks' 3='(3) > 1-2 mos' 4='(4) > 2-3 mos'
                  5='(5) > 3-4 mos' 6='(6) > 4-6 mos' 7='(7) > 6 mos'
                  8='(8) Use not episodic' ;
  VALUE v924ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times'
                  4='(4) 5 or 6 times' 5='(5) More than 6 times' ;
  VALUE v925ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times'
                  4='(4) 5 or 6 times' 5='(5) More than 6 times' ;
  VALUE v926ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times'
                  4='(4) 5 or 6 times' 5='(5) More than 6 times' ;
  VALUE v927ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times'
                  4='(4) 5 or 6 times' 5='(5) More than 6 times' ;
  VALUE v928ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times'
                  4='(4) 5 or 6 times' 5='(5) More than 6 times' ;
  VALUE v929ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times'
                  4='(4) 5 or 6 times' 5='(5) More than 6 times' ;
  VALUE v930ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times'
                  4='(4) 5 or 6 times' 5='(5) More than 6 times' ;
  VALUE v931ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times'
                  4='(4) 5 or 6 times' 5='(5) More than 6 times' ;
  VALUE v932ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times'
                  4='(4) 5 or 6 times' 5='(5) More than 6 times' ;
  VALUE v933ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times'
                  4='(4) 5 or 6 times' 5='(5) More than 6 times' ;
  VALUE v934ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times'
                  4='(4) 5 or 6 times' 5='(5) More than 6 times' ;
  VALUE v935ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times'
                  4='(4) 5 or 6 times' 5='(5) More than 6 times' ;
  VALUE v936ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times'
                  4='(4) 5 or 6 times' 5='(5) More than 6 times' ;
  VALUE v937ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times'
                  4='(4) 5 or 6 times' 5='(5) More than 6 times' ;
  VALUE v938ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times'
                  4='(4) 5 or 6 times' 5='(5) More than 6 times' ;
  VALUE v939ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times'
                  4='(4) 5 or 6 times' 5='(5) More than 6 times' ;
  VALUE v940ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times'
                  4='(4) 5 or 6 times' 5='(5) More than 6 times' ;
  VALUE v941ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times'
                  4='(4) 5 or 6 times' 5='(5) More than 6 times' ;
  VALUE v942ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times'
                  4='(4) 5 or 6 times' 5='(5) More than 6 times' ;
  VALUE v943ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times'
                  4='(4) 5 or 6 times' 5='(5) More than 6 times' ;
  VALUE v944ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times'
                  4='(4) 5 or 6 times' 5='(5) More than 6 times' ;
  VALUE v945ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times'
                  4='(4) 5 or 6 times' 5='(5) More than 6 times' ;
  VALUE v946ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times'
                  4='(4) 5 or 6 times' 5='(5) More than 6 times' ;
  VALUE v947ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times'
                  4='(4) 5 or 6 times' 5='(5) More than 6 times' ;
  VALUE v948ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v949ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v950ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v951ffff  1='(1) Yes' 2='(2) No' ;
  VALUE v952ffff  1='(1) Yes' 2='(2) No' ;
  VALUE v953ffff  1='(1) Yes' 2='(2) No' ;
  VALUE v954ffff  1='(1) Yes' 2='(2) No' ;
  VALUE v955ffff  1='(1) Yes' 2='(2) No' ;
  VALUE v956ffff  1='(1) Yes' 2='(2) No' ;
  VALUE v957ffff  1='(1) Yes' 2='(2) No' ;
  VALUE v958ffff  1='(1) Yes' 2='(2) No' ;
  VALUE v959ffff  1='(1) Yes' 2='(2) No' ;
  VALUE v960ffff  1='(1) Yes' 2='(2) No' ;
  VALUE v961ffff  1='(1) Yes' 2='(2) No' ;
  VALUE v962ffff  1='(1) Yes' 2='(2) No' ;
  VALUE v972ffff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v973ffff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v974ffff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v975ffff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v976ffff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v977ffff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v978ffff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v979ffff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v980ffff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v981ffff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v982ffff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v983ffff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v984ffff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v985ffff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v986ffff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v987ffff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v988ffff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v989ffff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v990ffff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v991ffff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v992ffff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v993ffff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v994ffff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v995ffff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v996ffff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v997ffff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v998ffff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v999ffff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1000fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1001fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1002fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1003fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1004fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1005fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1006fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1007fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1008fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1009fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1010fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1011fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1012fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1013fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1014fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1015fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1016fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1017fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1018fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1019fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1020fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1021fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1022fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1023fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1024fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1025fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1026fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1027fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1028fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1029fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1030fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1031fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1032fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1033fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1034fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1035fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1036fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1037fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1038fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1039fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1040fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1041fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1042fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1043fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1044fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1045fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1046fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1047fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1048fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1049fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1050fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1051fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1052fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1053fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1054fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1055fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1056fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1057fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1058fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1059fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1060fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1061fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1062fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1063fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1064fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1065fff  1='(1) Never' 2='(2) 1-2 times' 3='(3) 3-11 times' 4='(4) 12 or more times' ;
  VALUE v1067fff  13='(13) Winter' 14='(14) Spring' 15='(15) Summer' 16='(16) Fall' 99='(99) Unknown' ;
  VALUE v1068fff  99='(99) Unknown' ;
  VALUE v1075fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1076fff  13='(13) Winter' 14='(14) Spring' 15='(15) Summer' 16='(16) Fall' 99='(99) Unknown' ;
  VALUE v1077fff  99='(99) Don''t know' ;
  VALUE v1084fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1085fff  13='(13) Winter' 14='(14) Spring' 15='(15) Summer' 16='(16) Fall' 99='(99) Unknown' ;
  VALUE v1086fff  99='(99) Don''t know' ;
  VALUE v1093fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1094fff  0='(0) No' ;
  VALUE v1095fff  13='(13) Winter' 14='(14) Spring' 15='(15) Summer' 16='(16) Fall' 99='(99) Unknown' ;
  VALUE v1096fff  99='(99) Unknown' ;
  VALUE v1098fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1099fff  1='(1) No police actn' 2='(2) Askd qstns n/acn'
                  3='(3) Tk R hme no actn' 4='(4) Invn rprt/cmplnt'
                  5='(5) Tmpr dtnd/qustnd' 6='(6) Arrstd/rlsd bail'
                  7='(7) Plcd cstdy/jaild' 9='(9) Other' ;
  VALUE v1101fff  99='(99) Unknown' ;
  VALUE v1103fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1104fff  1='(1) No police actn' 2='(2) Askd qstns n/acn'
                  3='(3) Tk R hme no actn' 4='(4) Invn rprt/cmplnt'
                  5='(5) Tmpr dtnd/qustnd' 6='(6) Arrstd/rlsd bail'
                  7='(7) Plcd cstdy/jaild' 9='(9) Other' ;
  VALUE v1105fff  13='(13) Winter' 14='(14) Spring' 15='(15) Summer' 16='(16) Fall' 99='(99) Unknown' ;
  VALUE v1106fff  99='(99) Unknown' ;
  VALUE v1108fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1109fff  1='(1) No police actn' 2='(2) Askd qstns n/acn'
                  3='(3) Tk R hme no actn' 4='(4) Invn rprt/cmplnt'
                  5='(5) Tmpr dtnd/qustnd' 6='(6) Arrstd/rlsd bail'
                  7='(7) Plcd cstdy/jaild' 9='(9) Other' ;
  VALUE v1110fff  0='(0) 0% chance' 1='(1) 10% chance' 2='(2) 20% chance' 3='(3) 30% chance'
                  4='(4) 40% chance' 5='(5) 50% chance' 6='(6) 60% chance' 7='(7) 70% chance'
                  8='(8) 80% chance' 9='(9) 90% chance' 10='(10) 100% chance' ;
  VALUE v1111fff  0='(0) 0% chance' 1='(1) 10% chance' 2='(2) 20% chance' 3='(3) 30% chance'
                  4='(4) 40% chance' 5='(5) 50% chance' 6='(6) 60% chance' 7='(7) 70% chance'
                  8='(8) 80% chance' 9='(9) 90% chance' 10='(10) 100% chance' ;
  VALUE v1112fff  0='(0) 0% chance' 1='(1) 10% chance' 2='(2) 20% chance' 3='(3) 30% chance'
                  4='(4) 40% chance' 5='(5) 50% chance' 6='(6) 60% chance' 7='(7) 70% chance'
                  8='(8) 80% chance' 9='(9) 90% chance' 10='(10) 100% chance' ;
  VALUE v1113fff  0='(0) 0% chance' 1='(1) 10% chance' 2='(2) 20% chance' 3='(3) 30% chance'
                  4='(4) 40% chance' 5='(5) 50% chance' 6='(6) 60% chance' 7='(7) 70% chance'
                  8='(8) 80% chance' 9='(9) 90% chance' 10='(10) 100% chance' ;
  VALUE v1114fff  0='(0) 0% chance' 1='(1) 10% chance' 2='(2) 20% chance' 3='(3) 30% chance'
                  4='(4) 40% chance' 5='(5) 50% chance' 6='(6) 60% chance' 7='(7) 70% chance'
                  8='(8) 80% chance' 9='(9) 90% chance' 10='(10) 100% chance' ;
  VALUE v1115fff  0='(0) 0% chance' 1='(1) 10% chance' 2='(2) 20% chance' 3='(3) 30% chance'
                  4='(4) 40% chance' 5='(5) 50% chance' 6='(6) 60% chance' 7='(7) 70% chance'
                  8='(8) 80% chance' 9='(9) 90% chance' 10='(10) 100% chance' ;
  VALUE v1116fff  1='(1) Released w/o charge' 2='(2) Dismissed at crt'
                  3='(3) Fined/released' 4='(4) Prob/suspend sent'
                  5='(5) Short time jail' 6='(6) Long time jail' 7='(7) Serious punish'
                  8='(8) Nonser punish' 9='(9) No punish' ;
  VALUE v1117fff  1='(1) Released w/o charge' 2='(2) Dismissed at crt'
                  3='(3) Fined/released' 4='(4) Prob/suspend sent'
                  5='(5) Short time jail' 6='(6) Long time jail' 7='(7) Serious punish'
                  8='(8) Nonser punish' 9='(9) No punish' ;
  VALUE v1118fff  1='(1) Released w/o charge' 2='(2) Dismissed at crt'
                  3='(3) Fined/released' 4='(4) Prob/suspend sent'
                  5='(5) Short time jail' 6='(6) Long time jail' 7='(7) Serious punish'
                  8='(8) Nonser punish' 9='(9) No punish' ;
  VALUE v1119fff  1='(1) Released w/o charge' 2='(2) Dismissed at crt'
                  3='(3) Fined/released' 4='(4) Prob/suspend sent'
                  5='(5) Short time jail' 6='(6) Long time jail' 7='(7) Serious punish'
                  8='(8) Nonser punish' 9='(9) No punish' ;
  VALUE v1120fff  1='(1) Released w/o charge' 2='(2) Dismissed at crt'
                  3='(3) Fined/released' 4='(4) Prob/suspend sent'
                  5='(5) Short time jail' 6='(6) Long time jail' 7='(7) Serious punish'
                  8='(8) Nonser punish' 9='(9) No punish' ;
  VALUE v1121fff  1='(1) Released w/o charge' 2='(2) Dismissed at crt'
                  3='(3) Fined/released' 4='(4) Prob/suspend sent'
                  5='(5) Short time jail' 6='(6) Long time jail' 7='(7) Serious punish'
                  8='(8) Nonser punish' 9='(9) No punish' ;
  VALUE v1122fff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v1123fff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v1124fff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v1125fff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v1126fff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v1127fff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v1128fff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v1129fff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v1130fff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v1131fff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v1132fff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v1133fff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v1136fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1137fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1138fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1139fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1141fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1142fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1143fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1144fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1145fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1146fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1147fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1148fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1149fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1150fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1151fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1152fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1153fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1154fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1156fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1157fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1158fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1159fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1160fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1161fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1162fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1163fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1164fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1165fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1166fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1167fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1168fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1169fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1173fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1174fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1175fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1176fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1177fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1178fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1179fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1180fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1181fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1182fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1183fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1184fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1185fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1189fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1190fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1191fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1193fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1198fff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v1199fff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v1200fff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v1201fff  1='(1) Yes' 2='(2) No' ;
  VALUE v1202fff  0='(0) No prob' 1='(1) Ortho prob' 2='(2) Endo prob'
                  3='(3) Ear/eye/nose/thrt' 4='(4) Heart disease' 5='(5) Blood/circ'
                  6='(6) Uro' 7='(7) Skin prob' 8='(8) Neuro' 9='(9) Pulmonary' 10='(10) Cancer'
                  11='(11) Other' ;
  VALUE v1203fff  0='(0) No prob' 1='(1) Ortho prob' 2='(2) Endo prob'
                  3='(3) Ear/eye/nose/thrt' 4='(4) Heart disease' 5='(5) Blood/circ'
                  6='(6) Uro' 7='(7) Skin probs' 8='(8) Neuro' 9='(9) Pulmonary' 10='(10) Cancer'
                  11='(11) Other' ;
  VALUE v1204fff  0='(0) No prob' 1='(1) Ortho prob' 2='(2) Endo prob'
                  3='(3) Ear/eye/nose/thrt' 4='(4) Heart disease' 5='(5) Blood/circ'
                  6='(6) Uro' 7='(7) Neuro' 9='(9) Pulmonary' 10='(10) Cancer' 11='(11) Other' ;
  VALUE v1205fff  0='(0) No prob' 1='(1) Ortho prob' 2='(2) Endo prob'
                  3='(3) Ear/eye/nose/thrt' 4='(4) Heart disease' 5='(5) Blood/circ'
                  6='(6) Uro' 7='(7) Neuro' 9='(9) Pulmonary' 10='(10) Cancer' 11='(11) Other' ;
  VALUE v1206fff  0='(0) No prob' 1='(1) Ortho prob' 2='(2) Endo prob'
                  3='(3) Ear/eye/nose/thrt' 4='(4) Heart disease' 5='(5) Blood/circ'
                  6='(6) Uro' 7='(7) Neuro' 9='(9) Pulmonary' 10='(10) Cancer' 11='(11) Other' ;
  VALUE v1207fff  0='(0) No prob' 1='(1) Ortho prob' 2='(2) Endo prob'
                  3='(3) Ear/eye/nose/thrt' 4='(4) Heart disease' 5='(5) Blood/circ'
                  6='(6) Uro' 7='(7) Neuro' 9='(9) Pulmonary' 10='(10) Cancer' 11='(11) Other' ;
  VALUE v1208fff  0='(0) No prob' 1='(1) Ortho prob' 2='(2) Endo prob'
                  3='(3) Ear/eye/nose/thrt' 4='(4) Heart disease' 5='(5) Blood/circ'
                  6='(6) Uro' 7='(7) Neuro' 9='(9) Pulmonary' 10='(10) Cancer' 11='(11) Other' ;
  VALUE v1209fff  1='(1) Excellent' 2='(2) Very good' 3='(3) Good' 4='(4) Fair' 5='(5) Poor' ;
  VALUE v1210fff  1='(1) Yes' 2='(2) No' 3='(3) Male respondent' ;
  VALUE v1212fff  1='(1) Live birth' 2='(2) Abortion' 3='(3) Miscarriage' 4='(4) Stillbirth'
                  5='(5) Currently preg' 8='(8) Other' ;
  VALUE v1213fff  0='(0) No' 1='(1) Diff labor/deliv' 2='(2) C-section' 3='(3) Uro problems'
                  4='(4) Resp/card infant' 5='(5) Atopic preg' 6='(6) Miscarriage'
                  7='(7) Diff present' 8='(8) Drug addict' 9='(9) Phlebitis/hemo'
                  10='(10) Hemorrhaging del' 11='(11) Other' ;
  VALUE v1214fff  0='(0) No' 1='(1) Diff labor/deliv' 2='(2) C-section' 3='(3) Uro problems'
                  4='(4) Resp/card infant' 5='(5) Atopic preg' 6='(6) Miscarriage'
                  7='(7) Diff present' 8='(8) Drug addict' 9='(9) Phlebitis/hemo'
                  10='(10) Hemorrhaging del' 11='(11) Other' ;
  VALUE v1215fff  1='(1) Involuntary' 2='(2) Voluntary' ;
  VALUE v1217fff  1='(1) Live birth' 2='(2) Abortion' 3='(3) Miscarriage' 4='(4) Stillbirth'
                  5='(5) Currently preg' 8='(8) Other' ;
  VALUE v1218fff  0='(0) No' 1='(1) Diff labor/deliv' 2='(2) C-section' 3='(3) Uro problems'
                  4='(4) Resp/card infant' 5='(5) Atopic preg' 6='(6) Miscarriage'
                  7='(7) Diff present' 8='(8) Drug addict' 9='(9) Phlebitis/hemo'
                  10='(10) Hemorrhaging del' 11='(11) Other' ;
  VALUE v1219fff  0='(0) No' 1='(1) Diff labor/deliv' 2='(2) C-section' 3='(3) Uro problems'
                  4='(4) Resp/card infant' 5='(5) Atopic preg' 6='(6) Miscarriage'
                  7='(7) Diff present' 8='(8) Drug addict' 9='(9) Phlebitis/hemo'
                  10='(10) Hemorrhaging del' 11='(11) Other' ;
  VALUE v1220fff  1='(1) Involuntary' 2='(2) Voluntary' ;
  VALUE v1222fff  1='(1) Live birth' 2='(2) Abortion' 3='(3) Miscarriage' 4='(4) Stillbirth'
                  5='(5) Currently preg' 8='(8) Other' ;
  VALUE v1223fff  0='(0) No' 1='(1) Diff labor/deliv' 2='(2) C-section' 3='(3) Uro problems'
                  4='(4) Resp/card infant' 5='(5) Atopic preg' 6='(6) Miscarriage'
                  7='(7) Diff present' 8='(8) Drug addict' 9='(9) Phlebitis/hemo'
                  10='(10) Hemorrhaging del' 11='(11) Other' ;
  VALUE v1224fff  0='(0) No' 1='(1) Diff labor/deliv' 2='(2) C-section' 3='(3) Uro problems'
                  4='(4) Resp/card infant' 5='(5) Atopic preg' 6='(6) Miscarriage'
                  7='(7) Diff present' 8='(8) Drug addict' 9='(9) Phlebitis/hemo'
                  10='(10) Hemorrhaging del' 11='(11) Other' ;
  VALUE v1225fff  1='(1) Involuntary' 2='(2) Voluntary' ;
  VALUE v1227fff  1='(1) Live birth' 2='(2) Abortion' 3='(3) Miscarriage' 4='(4) Stillbirth'
                  5='(5) Currently preg' 8='(8) Other' ;
  VALUE v1228fff  0='(0) No' 1='(1) Diff labor/deliv' 2='(2) C-section' 3='(3) Uro problems'
                  4='(4) Resp/card infant' 5='(5) Atopic preg' 6='(6) Miscarriage'
                  7='(7) Diff present' 8='(8) Drug addict' 9='(9) Phlebitis/hemo'
                  10='(10) Hemorrhaging del' 11='(11) Other' ;
  VALUE v1229fff  1='(1) Involuntary' 2='(2) Voluntary' ;
  VALUE v1231fff  1='(1) Live birth' 2='(2) Abortion' 3='(3) Miscarriage' 4='(4) Stillbirth'
                  5='(5) Currently preg' 8='(8) Other' ;
  VALUE v1232fff  0='(0) No' 1='(1) Diff labor/deliv' 2='(2) C-section' 3='(3) Uro problems'
                  4='(4) Resp/card infant' 5='(5) Atopic preg' 6='(6) Miscarriage'
                  7='(7) Diff present' 8='(8) Drug addict' 9='(9) Phlebitis/hemo'
                  10='(10) Hemorrhaging del' 11='(11) Other' ;
  VALUE v1233fff  1='(1) Involuntary' 2='(2) Voluntary' ;
  VALUE v1234fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1235fff  0='(0) No effect' 1='(1) Hmrhg/bld dsrds' 2='(2) Hysterectomy'
                  3='(3) Infections' 4='(4) Depression' 5='(5) Guilt' 6='(6) Fatigue'
                  7='(7) Fr preg/intrcrse' 8='(8) Hsbnd/byfrd upst'
                  9='(9) Nvr gt athr abtn' 10='(10) Relieved' 11='(11) Other' ;
  VALUE v1236fff  0='(0) No effect' 1='(1) Hmrhg/bld dsrds' 2='(2) Hysterectomy'
                  3='(3) Infections' 4='(4) Depression' 5='(5) Guilt' 6='(6) Fatigue'
                  7='(7) Fr preg/intrcrse' 8='(8) Hsbnd/byfrd upst'
                  9='(9) Nvr gt athr abtn' 10='(10) Relieved' 11='(11) Other' ;
  VALUE v1237fff  0='(0) No effect' 1='(1) Hmrhg/bld dsrds' 2='(2) Hysterectomy'
                  3='(3) Infections' 4='(4) Depression' 5='(5) Guilt' 6='(6) Fatigue'
                  7='(7) Fr preg/intrcrse' 8='(8) Hsbnd/byfrd upst'
                  9='(9) Nvr gt athr abtn' 10='(10) Relieved' 11='(11) Other' ;
  VALUE v1238fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1239fff  0='(0) No effect' 1='(1) Hmrhg/bld dsrds' 2='(2) Hysterectomy'
                  3='(3) Infections' 4='(4) Depression' 5='(5) Guilt' 6='(6) Fatigue'
                  7='(7) Fr preg/intrcrse' 8='(8) Hsbnd/byfrd upst'
                  9='(9) Nvr gt athr abtn' 10='(10) Relieved' 11='(11) Other' ;
  VALUE v1240fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1241fff  0='(0) No effect' 1='(1) Hmrhg/bld dsrds' 2='(2) Hysterectomy'
                  3='(3) Infections' 4='(4) Depression' 5='(5) Guilt' 6='(6) Fatigue'
                  7='(7) Fr preg/intrcrse' 8='(8) Hsbnd/byfrd upst'
                  9='(9) Nvr gt athr abtn' 10='(10) Relieved' 11='(11) Other' ;
  VALUE v1242fff  0='(0) No effect' 1='(1) Hmrhg/bld dsrds' 2='(2) Hysterectomy'
                  3='(3) Infections' 4='(4) Depression' 5='(5) Guilt' 6='(6) Fatigue'
                  7='(7) Fr preg/intrcrse' 8='(8) Hsbnd/byfrd upst'
                  9='(9) Nvr gt athr abtn' 10='(10) Relieved' 11='(11) Other' ;
  VALUE v1243fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1244fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1245fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1246fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1247fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1248fff  1='(1) Symp not present' 5='(5) Symp present' ;
  VALUE v1249fff  1='(1) Symp not present' 5='(5) Symp present' ;
  VALUE v1250fff  1='(1) Symp not present' 5='(5) Symp present' ;
  VALUE v1251fff  1='(1) Symp not present' 5='(5) Symp present' ;
  VALUE v1252fff  1='(1) Symp not present' 5='(5) Symp present' ;
  VALUE v1253fff  1='(1) Symp not present' 5='(5) Symp present' ;
  VALUE v1254fff  1='(1) Symp not present' 5='(5) Symp present' ;
  VALUE v1255fff  1='(1) Symp not present' 5='(5) Symp present' ;
  VALUE v1256fff  1='(1) Symp not present' 5='(5) Symp present' ;
  VALUE v1257fff  1='(1) Symp not present' 5='(5) Symp present' ;
  VALUE v1258fff  1='(1) Symp not present' 5='(5) Symp present' ;
  VALUE v1259fff  1='(1) Symp not present' 5='(5) Symp present' ;
  VALUE v1260fff  1='(1) Symp not present' 5='(5) Symp present' ;
  VALUE v1261fff  1='(1) Symp not present' 5='(5) Symp present' ;
  VALUE v1262fff  1='(1) Symp not present' 5='(5) Symp present' ;
  VALUE v1263fff  1='(1) Symp not present' 5='(5) Symp present' ;
  VALUE v1264fff  1='(1) Symp not present' 5='(5) Symp present' ;
  VALUE v1265fff  1='(1) Symp not present' 5='(5) Symp present' ;
  VALUE v1266fff  1='(1) Symp not present' 5='(5) Symp present' ;
  VALUE v1267fff  1='(1) Symp not present' 5='(5) Symp present' ;
  VALUE v1268fff  1='(1) Symp not present' 5='(5) Symp present' ;
  VALUE v1269fff  1='(1) Symp not present' 5='(5) Symp present' ;
  VALUE v1270fff  1='(1) Symp not present' 5='(5) Symp present' ;
  VALUE v1271fff  1='(1) Symp not present' 5='(5) Symp present' ;
  VALUE v1272fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1273fff  1='(1) Yes' 2='(2) No' ;
  VALUE v1274fff  1='(1) Yes' 2='(2) No' ;
  VALUE v1280fff  1='(1) No' 5='(5) Yes' ;
  VALUE v1281fff  1='(1) No' 5='(5) Yes' ;
  VALUE v1282fff  1='(1) No' 5='(5) Yes' ;
  VALUE v1283fff  1='(1) No' 5='(5) Yes' ;
  VALUE v1285fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1286fff  2='(2) Only due to a death' 5='(5) Not due to a death' ;
  VALUE v1287fff  1='(1) Yes' 2='(2) No' ;
  VALUE v1288fff  1='(1) Within last 2 wks' 2='(2) Within last month'
                  3='(3) Within last 6 months' 4='(4) Within last year'
                  5='(5) More than 1 year ago' ;
  VALUE v1290fff  1='(1) Yes' 2='(2) No' ;
  VALUE v1291fff  0='(0) Not in past yr' 999='(999) Some/not past yr' ;
  VALUE v1292fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1293fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1294fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1295fff  1='(1) None at all' 2='(2) Only a little' 3='(3) Some'
                  4='(4) A fair amount' 5='(5) A great deal' ;
  VALUE v1296fff  0='(0) Not in past yr' 999='(999) Some/not past yr' ;
  VALUE v1297fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1298fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1299fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1300fff  1='(1) None at all' 2='(2) Only a little' 3='(3) Some'
                  4='(4) A fair amount' 5='(5) A great deal' ;
  VALUE v1301fff  0='(0) Not in past yr' 999='(999) Some/not past yr' ;
  VALUE v1302fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1303fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1304fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1305fff  1='(1) None at all' 2='(2) Only a little' 3='(3) Some'
                  4='(4) A fair amount' 5='(5) A great deal' ;
  VALUE v1306fff  0='(0) Not in past yr' 999='(999) Some/not past yr' ;
  VALUE v1307fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1308fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1309fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1310fff  1='(1) None at all' 2='(2) Only a little' 3='(3) Some'
                  4='(4) A fair amount' 5='(5) A great deal' ;
  VALUE v1311fff  0='(0) Not in past yr' 999='(999) Some/not past yr' ;
  VALUE v1312fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1313fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1314fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1315fff  1='(1) None at all' 2='(2) Only a little' 3='(3) Some'
                  4='(4) A fair amount' 5='(5) A great deal' ;
  VALUE v1316fff  0='(0) Not in past yr' 999='(999) Some/not past yr' ;
  VALUE v1317fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1318fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1319fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1320fff  1='(1) None at all' 2='(2) Only a little' 3='(3) Some'
                  4='(4) A fair amount' 5='(5) A great deal' ;
  VALUE v1321fff  0='(0) Not in past yr' 999='(999) Some/not past yr' ;
  VALUE v1322fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1323fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1324fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1325fff  1='(1) None at all' 2='(2) Only a little' 3='(3) Some'
                  4='(4) A fair amount' 5='(5) A great deal' ;
  VALUE v1326fff  0='(0) Not in past yr' 999='(999) Some/not past yr' ;
  VALUE v1327fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1328fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1329fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1330fff  1='(1) None at all' 2='(2) Only a little' 3='(3) Some'
                  4='(4) A fair amount' 5='(5) A great deal' ;
  VALUE v1331fff  0='(0) Not in past yr' 999='(999) Some/not past yr' ;
  VALUE v1332fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1333fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1334fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1335fff  1='(1) None at all' 2='(2) Only a little' 3='(3) Some'
                  4='(4) A fair amount' 5='(5) A great deal' ;
  VALUE v1336fff  0='(0) Not in past yr' 999='(999) Some/not past yr' ;
  VALUE v1337fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1338fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1339fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1340fff  1='(1) None at all' 2='(2) Only a little' 3='(3) Some'
                  4='(4) A fair amount' 5='(5) A great deal' ;
  VALUE v1341fff  0='(0) Not in past yr' 999='(999) Some/not past yr' ;
  VALUE v1342fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1343fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1344fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1345fff  1='(1) None at all' 2='(2) Only a little' 3='(3) Some'
                  4='(4) A fair amount' 5='(5) A great deal' ;
  VALUE v1346fff  0='(0) Not in past yr' 999='(999) Some/not past yr' ;
  VALUE v1347fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1348fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1349fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1350fff  1='(1) None at all' 2='(2) Only a little' 3='(3) Some'
                  4='(4) A fair amount' 5='(5) A great deal' ;
  VALUE v1351fff  0='(0) Not in past yr' 999='(999) Some/not past yr' ;
  VALUE v1352fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1353fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1354fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1355fff  1='(1) None at all' 2='(2) Only a little' 3='(3) Some'
                  4='(4) A fair amount' 5='(5) A great deal' ;
  VALUE v1356fff  0='(0) Not in past yr' 999='(999) Some/not past yr' ;
  VALUE v1357fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1358fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1359fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1360fff  1='(1) None at all' 2='(2) Only a little' 3='(3) Some'
                  4='(4) A fair amount' 5='(5) A great deal' ;
  VALUE v1361fff  0='(0) Not in past yr' 999='(999) Some/not past yr' ;
  VALUE v1362fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1363fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1364fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1365fff  1='(1) None at all' 2='(2) Only a little' 3='(3) Some'
                  4='(4) A fair amount' 5='(5) A great deal' ;
  VALUE v1366fff  0='(0) Not in past yr' 999='(999) Some/not past yr' ;
  VALUE v1367fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1368fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1369fff  0='(0) No prob' 1='(1) Drugs' 2='(2) Alcohol' 3='(3) Family rel'
                  4='(4) Depression' 5='(5) Sexual rel' 6='(6) Trouble w/law'
                  7='(7) Emot stress/nerve' 8='(8) Prob boy/girlfrnd'
                  9='(9) Work/school prob' 10='(10) Prob w/family'
                  11='(11) Phys health/ill' 12='(12) Financial prob'
                  13='(13) Death frnd/rel' 99='(99) Other' ;
  VALUE v1370fff  1='(1) None at all' 2='(2) Only a little' 3='(3) Some'
                  4='(4) A fair amount' 5='(5) A great deal' ;
  VALUE v1371fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1372fff  1='(1) Prvt Psych Hsp' 2='(2) VA/Univ Hosp' 3='(3) Gen Hospital'
                  4='(4) Cmmnty Mtl Hth' 5='(5) Alc Mntl Hth Ctr' 6='(6) Drug Trtmt Unt'
                  7='(7) Other' ;
  VALUE v1375fff  1='(1) Yes' 2='(2) No' ;
  VALUE v1376fff  1='(1) Yes' 2='(2) No' ;
  VALUE v1377fff  1='(1) Yes' 2='(2) No' ;
  VALUE v1378fff  1='(1) Yes' 2='(2) No' ;
  VALUE v1379fff  1='(1) Yes' 2='(2) No' ;
  VALUE v1380fff  1='(1) Yes' 2='(2) No' ;
  VALUE v1381fff  1='(1) Yes' 2='(2) No' ;
  VALUE v1382fff  1='(1) Yes' 2='(2) No' ;
  VALUE v1383fff  1='(1) None at all' 2='(2) Only a little' 3='(3) Some'
                  4='(4) A fair amount' 5='(5) A great deal' ;
  VALUE v1384fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1385fff  1='(1) Prvt Psych Hsp' 2='(2) VA/Univ Hosp' 3='(3) Gen Hospital'
                  4='(4) Cmmnty Mtl Hth' 5='(5) Alc Mntl Hth Ctr' 6='(6) Drug Trtmt Unt'
                  7='(7) Other' ;
  VALUE v1388fff  1='(1) Yes' 2='(2) No' ;
  VALUE v1389fff  1='(1) Yes' 2='(2) No' ;
  VALUE v1390fff  1='(1) Yes' 2='(2) No' ;
  VALUE v1391fff  1='(1) Yes' 2='(2) No' ;
  VALUE v1392fff  1='(1) Yes' 2='(2) No' ;
  VALUE v1393fff  1='(1) Yes' 2='(2) No' ;
  VALUE v1394fff  1='(1) Yes' 2='(2) No' ;
  VALUE v1395fff  1='(1) Yes' 2='(2) No' ;
  VALUE v1396fff  1='(1) None at all' 2='(2) Only a little' 3='(3) Some'
                  4='(4) A fair amount' 5='(5) A great deal' ;
  VALUE v1397fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1398fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1399fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1400fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1401fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1402fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1403fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1404fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1405fff  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE v1406fff  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE v1407fff  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE v1408fff  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE v1409fff  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE v1410fff  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE v1411fff  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE v1412fff  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE v1413fff  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE v1414fff  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE v1415fff  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE v1416fff  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE v1417fff  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE v1418fff  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE v1419fff  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE v1420fff  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE v1421fff  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE v1422fff  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE v1423fff  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE v1424fff  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE v1425fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1433fff  1='(1) Boy/girlfriend' 2='(2) Date' 3='(3) Friend' 4='(4) Acquaintance'
                  5='(5) Stranger' 6='(6) Spouse' 7='(7) Relative' 8='(8) Other' ;
  VALUE v1434fff  1='(1) Male' 2='(2) Female' 3='(3) Both' ;
  VALUE v1435fff  1='(1) Verbal prsuasn' 2='(2) Verb thrts injy' 3='(3) Ht sp md rghnns'
                  4='(4) Phys beatg/chkg' 5='(5) Thrt to use wpn' 6='(6) Used a weapon' ;
  VALUE v1436fff  0='(0) No' ;
  VALUE v1437fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1438fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1439fff  0='(0) No' ;
  VALUE v1442fff  1='(1) Boy/girlfriend' 2='(2) Date' 3='(3) Friend' 4='(4) Acquaintance'
                  5='(5) Stranger' 6='(6) Spouse' 7='(7) Relative' 8='(8) Other' ;
  VALUE v1443fff  1='(1) Male' 2='(2) Female' 3='(3) Both' ;
  VALUE v1444fff  1='(1) Verbal prsuasn' 2='(2) Verb thrts injy' 3='(3) Ht sp md rghnns'
                  4='(4) Phys beatg/chkg' 5='(5) Thrt to use wpn' 6='(6) Used a weapon' ;
  VALUE v1446fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1447fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1450fff  1='(1) Husband/wife' 2='(2) Fiance/fiancee' 3='(3) Stdy dtg prtnr'
                  4='(4) Friend' 5='(5) Teacher' 6='(6) Csl acquntnce' 7='(7) Relative'
                  8='(8) Cmplt strnger' 9='(9) Prostitute' ;
  VALUE v1451fff  1='(1) Forced' 2='(2) Voluntary' ;
  VALUE v1452fff  1='(1) Very positive' 2='(2) Positive' 3='(3) Bth pos and neg'
                  4='(4) Nthr pos or neg' 5='(5) Negative' 6='(6) Very negative' ;
  VALUE v1453fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1455fff  1='(1) Forced' 2='(2) Voluntary' ;
  VALUE v1456fff  1='(1) Very positive' 2='(2) Positive' 3='(3) Bth pos and neg'
                  4='(4) Nthr pos or neg' 5='(5) Negative' 6='(6) Very negative' ;
  VALUE v1460fff  1='(1) Heterosexual' 2='(2) Bisexual' 3='(3) Gay' 4='(4) Uncertain' ;
  VALUE v1461fff  1='(1) Very dsstisfd' 2='(2) Smwht dsstsfd' 3='(3) Nthr stfd dssfd'
                  4='(4) Somewhat satsfd' 5='(5) Very satisfied' ;
  VALUE v1462fff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v1463fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1465fff  0='(0) Not in past yr' 999='(999) Sometime/not p yr' ;
  VALUE v1466fff  0='(0) Not in past yr' 999='(999) Sometime/not p yr' ;
  VALUE v1467fff  0='(0) Not in past yr' 999='(999) Sometime/not p yr' ;
  VALUE v1468fff  0='(0) Not in past yr' 999='(999) Sometime/not p yr' ;
  VALUE v1469fff  0='(0) Not in past yr' 999='(999) Sometime/not p yr' ;
  VALUE v1470fff  0='(0) Not in past yr' 999='(999) Sometime/not p yr' ;
  VALUE v1471fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1472fff  1='(1) Drugs' ;
  VALUE v1473fff  1='(1) Sex' ;
  VALUE v1474fff  1='(1) Mental health' ;
  VALUE v1475fff  1='(1) Crim behavior' ;
  VALUE v1476fff  1='(1) Spse violence' ;
  VALUE v1479fff  1='(1) Not at all anxs' 2='(2) Somewht anxs' 3='(3) Very anxious' ;
  VALUE v1480fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1481fff  1='(1) Very low' 2='(2) Below average' 3='(3) Average'
                  4='(4) Above average' 5='(5) Very high' ;
  VALUE v1482fff  1='(1) Diffty wth lngge' ;
  VALUE v1483fff  1='(1) Diffty wth qusts' ;
  VALUE v1484fff  1='(1) Interruptions' ;
  VALUE v1485fff  1='(1) Temp breakoff' ;
  VALUE v1486fff  1='(1) Breakoff' ;
  VALUE v1487fff  1='(1) Other' ;
  VALUE v1488fff  1='(1) Relaxed' 2='(2) Tense' 3='(3) Other' ;
  VALUE v1489fff  1='(1) No' 2='(2) Yes' ;
  VALUE v1508fff  1='(1) Urban' 2='(2) Suburban' 3='(3) Rural' ;
RUN;

* SAS DATA STEP;
DATA;
SET SAS-dataset ;


* USER-DEFINED MISSING VALUES RECODE TO SAS SYSMIS;

/*
   IF (V6 = -1) THEN V6 = .;
   IF (V7 = -1) THEN V7 = .;
   IF (V8 = -1) THEN V8 = .;
   IF (V9 = -1) THEN V9 = .;
   IF (V10 = -1) THEN V10 = .;
   IF (V11 = -1) THEN V11 = .;
   IF (V12 = -1) THEN V12 = .;
   IF (V13 = -1) THEN V13 = .;
   IF (V14 = -1) THEN V14 = .;
   IF (V15 = -1) THEN V15 = .;
   IF (V16 = -1) THEN V16 = .;
   IF (V17 = -1) THEN V17 = .;
   IF (V18 = -1) THEN V18 = .;
   IF (V19 = -1) THEN V19 = .;
   IF (V20 = -1) THEN V20 = .;
   IF (V21 = -1) THEN V21 = .;
   IF (V22 = -1) THEN V22 = .;
   IF (V23 = -1) THEN V23 = .;
   IF (V24 = -1) THEN V24 = .;
   IF (V25 = -1) THEN V25 = .;
   IF (V26 = -1) THEN V26 = .;
   IF (V27 = -1) THEN V27 = .;
   IF (V28 = -1) THEN V28 = .;
   IF (V29 = -1) THEN V29 = .;
   IF (V30 = -1) THEN V30 = .;
   IF (V31 = -1) THEN V31 = .;
   IF (V32 = -1) THEN V32 = .;
   IF (V33 = -1) THEN V33 = .;
   IF (V34 = -1) THEN V34 = .;
   IF (V35 = -1) THEN V35 = .;
   IF (V36 = -1) THEN V36 = .;
   IF (V37 = -1) THEN V37 = .;
   IF (V38 = -1) THEN V38 = .;
   IF (V39 = -1) THEN V39 = .;
   IF (V40 = -1) THEN V40 = .;
   IF (V41 = -1) THEN V41 = .;
   IF (V42 = -1) THEN V42 = .;
   IF (V43 = -1) THEN V43 = .;
   IF (V44 = -1) THEN V44 = .;
   IF (V45 = -1) THEN V45 = .;
   IF (V46 = -1) THEN V46 = .;
   IF (V48 = -1) THEN V48 = .;
   IF (V50 = -1) THEN V50 = .;
   IF (V51 = -1) THEN V51 = .;
   IF (V52 = -1) THEN V52 = .;
   IF (V53 = -1) THEN V53 = .;
   IF (V54 = -1) THEN V54 = .;
   IF (V55 = -1) THEN V55 = .;
   IF (V56 = -1) THEN V56 = .;
   IF (V57 = -1) THEN V57 = .;
   IF (V58 = -1) THEN V58 = .;
   IF (V59 = -1) THEN V59 = .;
   IF (V60 = -1) THEN V60 = .;
   IF (V61 = -1) THEN V61 = .;
   IF (V62 = -1) THEN V62 = .;
   IF (V63 = -1) THEN V63 = .;
   IF (V64 = -1) THEN V64 = .;
   IF (V65 = -1) THEN V65 = .;
   IF (V66 = -1) THEN V66 = .;
   IF (V67 = -1) THEN V67 = .;
   IF (V68 = -1) THEN V68 = .;
   IF (V69 = -1) THEN V69 = .;
   IF (V70 = -1) THEN V70 = .;
   IF (V71 = -1) THEN V71 = .;
   IF (V72 = -1) THEN V72 = .;
   IF (V73 = -1) THEN V73 = .;
   IF (V74 = -1) THEN V74 = .;
   IF (V75 = -1) THEN V75 = .;
   IF (V76 = -1) THEN V76 = .;
   IF (V77 = -1) THEN V77 = .;
   IF (V78 = -1) THEN V78 = .;
   IF (V79 = -1) THEN V79 = .;
   IF (V80 = -1) THEN V80 = .;
   IF (V81 = -1) THEN V81 = .;
   IF (V83 = -1) THEN V83 = .;
   IF (V84 = -1) THEN V84 = .;
   IF (V85 = -1) THEN V85 = .;
   IF (V86 = -1) THEN V86 = .;
   IF (V87 = -1) THEN V87 = .;
   IF (V88 = -1) THEN V88 = .;
   IF (V89 = -1) THEN V89 = .;
   IF (V90 = -1) THEN V90 = .;
   IF (V91 = -1) THEN V91 = .;
   IF (V92 = -1) THEN V92 = .;
   IF (V93 = -1) THEN V93 = .;
   IF (V94 = -1) THEN V94 = .;
   IF (V95 = -1) THEN V95 = .;
   IF (V96 = -1) THEN V96 = .;
   IF (V97 = -1) THEN V97 = .;
   IF (V98 = -1) THEN V98 = .;
   IF (V99 = -1) THEN V99 = .;
   IF (V100 = -1) THEN V100 = .;
   IF (V101 = -1) THEN V101 = .;
   IF (V102 = -1) THEN V102 = .;
   IF (V103 = -1) THEN V103 = .;
   IF (V104 = -1) THEN V104 = .;
   IF (V105 = -1) THEN V105 = .;
   IF (V106 = -1) THEN V106 = .;
   IF (V107 = -1) THEN V107 = .;
   IF (V108 = -1) THEN V108 = .;
   IF (V109 = -1) THEN V109 = .;
   IF (V110 = -1) THEN V110 = .;
   IF (V111 = -1) THEN V111 = .;
   IF (V112 = -1) THEN V112 = .;
   IF (V113 = -1) THEN V113 = .;
   IF (V114 = -1) THEN V114 = .;
   IF (V115 = -1) THEN V115 = .;
   IF (V116 = -1) THEN V116 = .;
   IF (V117 = -1) THEN V117 = .;
   IF (V118 = -1) THEN V118 = .;
   IF (V119 = -1) THEN V119 = .;
   IF (V120 = -1) THEN V120 = .;
   IF (V121 = -1) THEN V121 = .;
   IF (V122 = -1) THEN V122 = .;
   IF (V123 = -1) THEN V123 = .;
   IF (V124 = -1) THEN V124 = .;
   IF (V125 = -1) THEN V125 = .;
   IF (V126 = -1) THEN V126 = .;
   IF (V127 = -1) THEN V127 = .;
   IF (V128 = -1) THEN V128 = .;
   IF (V129 = -1) THEN V129 = .;
   IF (V130 = -1) THEN V130 = .;
   IF (V131 = -1) THEN V131 = .;
   IF (V132 = -1) THEN V132 = .;
   IF (V133 = -1) THEN V133 = .;
   IF (V134 = -1) THEN V134 = .;
   IF (V135 = -1) THEN V135 = .;
   IF (V136 = -1) THEN V136 = .;
   IF (V137 = -1) THEN V137 = .;
   IF (V138 = -1) THEN V138 = .;
   IF (V139 = -1) THEN V139 = .;
   IF (V140 = -1) THEN V140 = .;
   IF (V141 = -1) THEN V141 = .;
   IF (V142 = -1) THEN V142 = .;
   IF (V143 = -1) THEN V143 = .;
   IF (V144 = -1) THEN V144 = .;
   IF (V145 = -1) THEN V145 = .;
   IF (V146 = -1) THEN V146 = .;
   IF (V147 = -1) THEN V147 = .;
   IF (V148 = -1) THEN V148 = .;
   IF (V149 = -1) THEN V149 = .;
   IF (V150 = -1) THEN V150 = .;
   IF (V151 = -1) THEN V151 = .;
   IF (V152 = -1) THEN V152 = .;
   IF (V153 = -1) THEN V153 = .;
   IF (V154 = -1) THEN V154 = .;
   IF (V155 = -1) THEN V155 = .;
   IF (V156 = -1) THEN V156 = .;
   IF (V157 = -1) THEN V157 = .;
   IF (V158 = -1) THEN V158 = .;
   IF (V159 = -1) THEN V159 = .;
   IF (V160 = -1) THEN V160 = .;
   IF (V161 = -1) THEN V161 = .;
   IF (V162 = -1) THEN V162 = .;
   IF (V163 = -1) THEN V163 = .;
   IF (V164 = -1) THEN V164 = .;
   IF (V165 = -1) THEN V165 = .;
   IF (V166 = -1) THEN V166 = .;
   IF (V167 = -1) THEN V167 = .;
   IF (V168 = -1) THEN V168 = .;
   IF (V169 = -1) THEN V169 = .;
   IF (V170 = -1) THEN V170 = .;
   IF (V171 = -1) THEN V171 = .;
   IF (V172 = -1) THEN V172 = .;
   IF (V173 = -1) THEN V173 = .;
   IF (V174 = -1) THEN V174 = .;
   IF (V175 = -1) THEN V175 = .;
   IF (V176 = -1) THEN V176 = .;
   IF (V177 = -1) THEN V177 = .;
   IF (V178 = -1) THEN V178 = .;
   IF (V179 = -1) THEN V179 = .;
   IF (V180 = -1) THEN V180 = .;
   IF (V181 = -1) THEN V181 = .;
   IF (V182 = -1) THEN V182 = .;
   IF (V183 = -1) THEN V183 = .;
   IF (V184 = -1) THEN V184 = .;
   IF (V185 = -1) THEN V185 = .;
   IF (V186 = -1) THEN V186 = .;
   IF (V187 = -1) THEN V187 = .;
   IF (V188 = -1) THEN V188 = .;
   IF (V189 = -1) THEN V189 = .;
   IF (V190 = -1) THEN V190 = .;
   IF (V191 = -1) THEN V191 = .;
   IF (V192 = -1) THEN V192 = .;
   IF (V193 = -1) THEN V193 = .;
   IF (V194 = -1) THEN V194 = .;
   IF (V195 = -1) THEN V195 = .;
   IF (V196 = -1) THEN V196 = .;
   IF (V197 = -1) THEN V197 = .;
   IF (V198 = -1) THEN V198 = .;
   IF (V199 = -1) THEN V199 = .;
   IF (V200 = -1) THEN V200 = .;
   IF (V201 = -1) THEN V201 = .;
   IF (V202 = -1) THEN V202 = .;
   IF (V203 = -1) THEN V203 = .;
   IF (V204 = -1) THEN V204 = .;
   IF (V205 = -1) THEN V205 = .;
   IF (V206 = -1) THEN V206 = .;
   IF (V207 = -1) THEN V207 = .;
   IF (V208 = -1) THEN V208 = .;
   IF (V209 = -1) THEN V209 = .;
   IF (V210 = -1) THEN V210 = .;
   IF (V211 = -1) THEN V211 = .;
   IF (V212 = -1) THEN V212 = .;
   IF (V213 = -1) THEN V213 = .;
   IF (V214 = -1) THEN V214 = .;
   IF (V215 = -1) THEN V215 = .;
   IF (V216 = -1) THEN V216 = .;
   IF (V217 = -1) THEN V217 = .;
   IF (V218 = -1) THEN V218 = .;
   IF (V219 = -1) THEN V219 = .;
   IF (V220 = -1) THEN V220 = .;
   IF (V221 = -1) THEN V221 = .;
   IF (V222 = -1) THEN V222 = .;
   IF (V223 = -1) THEN V223 = .;
   IF (V224 = -1) THEN V224 = .;
   IF (V225 = -1) THEN V225 = .;
   IF (V226 = -1) THEN V226 = .;
   IF (V227 = -1) THEN V227 = .;
   IF (V228 = -1) THEN V228 = .;
   IF (V229 = -1) THEN V229 = .;
   IF (V230 = -1) THEN V230 = .;
   IF (V231 = -1) THEN V231 = .;
   IF (V232 = -1) THEN V232 = .;
   IF (V233 = -1) THEN V233 = .;
   IF (V234 = -1) THEN V234 = .;
   IF (V235 = -1) THEN V235 = .;
   IF (V236 = -1) THEN V236 = .;
   IF (V237 = -1) THEN V237 = .;
   IF (V238 = -1) THEN V238 = .;
   IF (V239 = -1) THEN V239 = .;
   IF (V240 = -1) THEN V240 = .;
   IF (V241 = -1) THEN V241 = .;
   IF (V242 = -1) THEN V242 = .;
   IF (V243 = -1) THEN V243 = .;
   IF (V244 = -1) THEN V244 = .;
   IF (V245 = -1) THEN V245 = .;
   IF (V246 = -1) THEN V246 = .;
   IF (V247 = -1) THEN V247 = .;
   IF (V248 = -1) THEN V248 = .;
   IF (V249 = -1) THEN V249 = .;
   IF (V250 = -1) THEN V250 = .;
   IF (V251 = -1) THEN V251 = .;
   IF (V252 = -1) THEN V252 = .;
   IF (V253 = -1) THEN V253 = .;
   IF (V254 = -1) THEN V254 = .;
   IF (V255 = -1) THEN V255 = .;
   IF (V256 = -1) THEN V256 = .;
   IF (V257 = -1) THEN V257 = .;
   IF (V258 = -1) THEN V258 = .;
   IF (V259 = -1) THEN V259 = .;
   IF (V260 = -1) THEN V260 = .;
   IF (V261 = -1) THEN V261 = .;
   IF (V262 = -1) THEN V262 = .;
   IF (V263 = -1) THEN V263 = .;
   IF (V265 = -1) THEN V265 = .;
   IF (V267 = -1) THEN V267 = .;
   IF (V269 = -1) THEN V269 = .;
   IF (V271 = -1) THEN V271 = .;
   IF (V273 = -1) THEN V273 = .;
   IF (V275 = -1) THEN V275 = .;
   IF (V277 = -1) THEN V277 = .;
   IF (V279 = -1) THEN V279 = .;
   IF (V281 = -1) THEN V281 = .;
   IF (V283 = -1) THEN V283 = .;
   IF (V284 = -1) THEN V284 = .;
   IF (V285 = -1) THEN V285 = .;
   IF (V286 = -1) THEN V286 = .;
   IF (V287 = -1) THEN V287 = .;
   IF (V288 = -1) THEN V288 = .;
   IF (V289 = -1) THEN V289 = .;
   IF (V290 = -1) THEN V290 = .;
   IF (V291 = -1) THEN V291 = .;
   IF (V292 = -1) THEN V292 = .;
   IF (V293 = -1) THEN V293 = .;
   IF (V294 = -1) THEN V294 = .;
   IF (V295 = -1) THEN V295 = .;
   IF (V296 = -1) THEN V296 = .;
   IF (V297 = -1) THEN V297 = .;
   IF (V298 = -1) THEN V298 = .;
   IF (V299 = -1) THEN V299 = .;
   IF (V300 = -1) THEN V300 = .;
   IF (V301 = -1) THEN V301 = .;
   IF (V302 = -1) THEN V302 = .;
   IF (V303 = -1) THEN V303 = .;
   IF (V304 = -1) THEN V304 = .;
   IF (V305 = -1) THEN V305 = .;
   IF (V306 = -1) THEN V306 = .;
   IF (V307 = -1) THEN V307 = .;
   IF (V308 = -1) THEN V308 = .;
   IF (V309 = -1) THEN V309 = .;
   IF (V310 = -1) THEN V310 = .;
   IF (V311 = -1) THEN V311 = .;
   IF (V312 = -1) THEN V312 = .;
   IF (V313 = -1) THEN V313 = .;
   IF (V314 = -1) THEN V314 = .;
   IF (V315 = -1) THEN V315 = .;
   IF (V316 = -1) THEN V316 = .;
   IF (V317 = -1) THEN V317 = .;
   IF (V318 = -1) THEN V318 = .;
   IF (V319 = -1) THEN V319 = .;
   IF (V320 = -1) THEN V320 = .;
   IF (V321 = -1) THEN V321 = .;
   IF (V322 = -1) THEN V322 = .;
   IF (V323 = -1) THEN V323 = .;
   IF (V324 = -1) THEN V324 = .;
   IF (V325 = -1) THEN V325 = .;
   IF (V326 = -1) THEN V326 = .;
   IF (V327 = -1) THEN V327 = .;
   IF (V328 = -1) THEN V328 = .;
   IF (V329 = -1) THEN V329 = .;
   IF (V330 = -1) THEN V330 = .;
   IF (V331 = -1) THEN V331 = .;
   IF (V332 = -1) THEN V332 = .;
   IF (V333 = -1) THEN V333 = .;
   IF (V334 = -1) THEN V334 = .;
   IF (V335 = -1) THEN V335 = .;
   IF (V336 = -1) THEN V336 = .;
   IF (V337 = -1) THEN V337 = .;
   IF (V338 = -1) THEN V338 = .;
   IF (V339 = -1) THEN V339 = .;
   IF (V340 = -1) THEN V340 = .;
   IF (V341 = -1) THEN V341 = .;
   IF (V342 = -1) THEN V342 = .;
   IF (V343 = -1) THEN V343 = .;
   IF (V344 = -1) THEN V344 = .;
   IF (V345 = -1) THEN V345 = .;
   IF (V346 = -1) THEN V346 = .;
   IF (V347 = -1) THEN V347 = .;
   IF (V348 = -1) THEN V348 = .;
   IF (V349 = -1) THEN V349 = .;
   IF (V350 = -1) THEN V350 = .;
   IF (V351 = -1) THEN V351 = .;
   IF (V352 = -1) THEN V352 = .;
   IF (V353 = -1) THEN V353 = .;
   IF (V354 = -1) THEN V354 = .;
   IF (V355 = -1) THEN V355 = .;
   IF (V356 = -1) THEN V356 = .;
   IF (V357 = -1) THEN V357 = .;
   IF (V358 = -1) THEN V358 = .;
   IF (V359 = -1) THEN V359 = .;
   IF (V360 = -1) THEN V360 = .;
   IF (V361 = -1) THEN V361 = .;
   IF (V362 = -1) THEN V362 = .;
   IF (V363 = -1) THEN V363 = .;
   IF (V364 = -1) THEN V364 = .;
   IF (V365 = -1) THEN V365 = .;
   IF (V366 = -1) THEN V366 = .;
   IF (V367 = -1) THEN V367 = .;
   IF (V368 = -1) THEN V368 = .;
   IF (V369 = -1) THEN V369 = .;
   IF (V370 = -1) THEN V370 = .;
   IF (V371 = -1) THEN V371 = .;
   IF (V372 = -1) THEN V372 = .;
   IF (V373 = -1) THEN V373 = .;
   IF (V374 = -1) THEN V374 = .;
   IF (V375 = -1) THEN V375 = .;
   IF (V376 = -1) THEN V376 = .;
   IF (V377 = -1) THEN V377 = .;
   IF (V378 = -1) THEN V378 = .;
   IF (V379 = -1) THEN V379 = .;
   IF (V380 = -1) THEN V380 = .;
   IF (V381 = -1) THEN V381 = .;
   IF (V382 = -1) THEN V382 = .;
   IF (V383 = -1) THEN V383 = .;
   IF (V384 = -1) THEN V384 = .;
   IF (V385 = -1) THEN V385 = .;
   IF (V386 = -1) THEN V386 = .;
   IF (V387 = -1) THEN V387 = .;
   IF (V388 = -1) THEN V388 = .;
   IF (V389 = -1) THEN V389 = .;
   IF (V390 = -1) THEN V390 = .;
   IF (V391 = -1) THEN V391 = .;
   IF (V392 = -1) THEN V392 = .;
   IF (V393 = -1) THEN V393 = .;
   IF (V394 = -1) THEN V394 = .;
   IF (V395 = -1) THEN V395 = .;
   IF (V396 = -1) THEN V396 = .;
   IF (V397 = -1) THEN V397 = .;
   IF (V398 = -1) THEN V398 = .;
   IF (V399 = -1) THEN V399 = .;
   IF (V400 = -1) THEN V400 = .;
   IF (V401 = -1) THEN V401 = .;
   IF (V402 = -1) THEN V402 = .;
   IF (V403 = -1) THEN V403 = .;
   IF (V404 = -1) THEN V404 = .;
   IF (V405 = -1) THEN V405 = .;
   IF (V406 = -1) THEN V406 = .;
   IF (V407 = -1) THEN V407 = .;
   IF (V408 = -1) THEN V408 = .;
   IF (V409 = -1) THEN V409 = .;
   IF (V410 = -1) THEN V410 = .;
   IF (V411 = -1) THEN V411 = .;
   IF (V412 = -1) THEN V412 = .;
   IF (V413 = -1) THEN V413 = .;
   IF (V414 = -1) THEN V414 = .;
   IF (V415 = -1) THEN V415 = .;
   IF (V416 = -1) THEN V416 = .;
   IF (V417 = -1) THEN V417 = .;
   IF (V418 = -1) THEN V418 = .;
   IF (V419 = -1) THEN V419 = .;
   IF (V420 = -1) THEN V420 = .;
   IF (V421 = -1) THEN V421 = .;
   IF (V422 = -1) THEN V422 = .;
   IF (V423 = -1) THEN V423 = .;
   IF (V424 = -1) THEN V424 = .;
   IF (V425 = -1) THEN V425 = .;
   IF (V426 = -1) THEN V426 = .;
   IF (V427 = -1) THEN V427 = .;
   IF (V428 = -1) THEN V428 = .;
   IF (V429 = -1) THEN V429 = .;
   IF (V430 = -1) THEN V430 = .;
   IF (V431 = -1) THEN V431 = .;
   IF (V432 = -1) THEN V432 = .;
   IF (V433 = -1) THEN V433 = .;
   IF (V434 = -1) THEN V434 = .;
   IF (V435 = -1) THEN V435 = .;
   IF (V436 = -1) THEN V436 = .;
   IF (V437 = -1) THEN V437 = .;
   IF (V438 = -1) THEN V438 = .;
   IF (V439 = -1) THEN V439 = .;
   IF (V440 = -1) THEN V440 = .;
   IF (V441 = -1) THEN V441 = .;
   IF (V442 = -1) THEN V442 = .;
   IF (V443 = -1) THEN V443 = .;
   IF (V444 = -1) THEN V444 = .;
   IF (V445 = -1) THEN V445 = .;
   IF (V446 = -1) THEN V446 = .;
   IF (V447 = -1) THEN V447 = .;
   IF (V448 = -1) THEN V448 = .;
   IF (V449 = -1) THEN V449 = .;
   IF (V450 = -1) THEN V450 = .;
   IF (V451 = -1) THEN V451 = .;
   IF (V452 = -1) THEN V452 = .;
   IF (V453 = -1) THEN V453 = .;
   IF (V454 = -1) THEN V454 = .;
   IF (V455 = -1) THEN V455 = .;
   IF (V456 = -1) THEN V456 = .;
   IF (V457 = -1) THEN V457 = .;
   IF (V458 = -1) THEN V458 = .;
   IF (V459 = -1) THEN V459 = .;
   IF (V460 = -1) THEN V460 = .;
   IF (V461 = -1) THEN V461 = .;
   IF (V462 = -1) THEN V462 = .;
   IF (V463 = -1) THEN V463 = .;
   IF (V464 = -1) THEN V464 = .;
   IF (V465 = -1) THEN V465 = .;
   IF (V466 = -1) THEN V466 = .;
   IF (V467 = -1) THEN V467 = .;
   IF (V468 = -1) THEN V468 = .;
   IF (V469 = -1) THEN V469 = .;
   IF (V470 = -1) THEN V470 = .;
   IF (V471 = -1) THEN V471 = .;
   IF (V472 = -1) THEN V472 = .;
   IF (V473 = -1) THEN V473 = .;
   IF (V474 = -1) THEN V474 = .;
   IF (V475 = -1) THEN V475 = .;
   IF (V476 = -1) THEN V476 = .;
   IF (V477 = -1) THEN V477 = .;
   IF (V478 = -1) THEN V478 = .;
   IF (V479 = -1) THEN V479 = .;
   IF (V480 = -1) THEN V480 = .;
   IF (V481 = -1) THEN V481 = .;
   IF (V482 = -1) THEN V482 = .;
   IF (V483 = -1) THEN V483 = .;
   IF (V484 = -1) THEN V484 = .;
   IF (V485 = -1) THEN V485 = .;
   IF (V486 = -1) THEN V486 = .;
   IF (V487 = -1) THEN V487 = .;
   IF (V488 = -1) THEN V488 = .;
   IF (V489 = -1) THEN V489 = .;
   IF (V490 = -1) THEN V490 = .;
   IF (V491 = -1) THEN V491 = .;
   IF (V492 = -1) THEN V492 = .;
   IF (V493 = -1) THEN V493 = .;
   IF (V494 = -1) THEN V494 = .;
   IF (V495 = -1) THEN V495 = .;
   IF (V496 = -1) THEN V496 = .;
   IF (V497 = -1) THEN V497 = .;
   IF (V498 = -1) THEN V498 = .;
   IF (V499 = -1) THEN V499 = .;
   IF (V500 = -1) THEN V500 = .;
   IF (V501 = -1) THEN V501 = .;
   IF (V502 = -1) THEN V502 = .;
   IF (V503 = -1) THEN V503 = .;
   IF (V504 = -1) THEN V504 = .;
   IF (V505 = -1) THEN V505 = .;
   IF (V506 = -1) THEN V506 = .;
   IF (V507 = -1) THEN V507 = .;
   IF (V508 = -1) THEN V508 = .;
   IF (V509 = -1) THEN V509 = .;
   IF (V510 = -1) THEN V510 = .;
   IF (V511 = -1) THEN V511 = .;
   IF (V512 = -1) THEN V512 = .;
   IF (V513 = -1) THEN V513 = .;
   IF (V514 = -1) THEN V514 = .;
   IF (V515 = -1) THEN V515 = .;
   IF (V516 = -1) THEN V516 = .;
   IF (V517 = -1) THEN V517 = .;
   IF (V518 = -1) THEN V518 = .;
   IF (V519 = -1) THEN V519 = .;
   IF (V520 = -1) THEN V520 = .;
   IF (V521 = -1) THEN V521 = .;
   IF (V522 = -1) THEN V522 = .;
   IF (V523 = -1) THEN V523 = .;
   IF (V524 = -1) THEN V524 = .;
   IF (V525 = -1) THEN V525 = .;
   IF (V526 = -1) THEN V526 = .;
   IF (V527 = -1) THEN V527 = .;
   IF (V528 = -1) THEN V528 = .;
   IF (V529 = -1) THEN V529 = .;
   IF (V530 = -1) THEN V530 = .;
   IF (V531 = -1) THEN V531 = .;
   IF (V532 = -1) THEN V532 = .;
   IF (V533 = -1) THEN V533 = .;
   IF (V534 = -1) THEN V534 = .;
   IF (V535 = -1) THEN V535 = .;
   IF (V536 = -1) THEN V536 = .;
   IF (V537 = -1) THEN V537 = .;
   IF (V538 = -1) THEN V538 = .;
   IF (V539 = -1) THEN V539 = .;
   IF (V540 = -1) THEN V540 = .;
   IF (V541 = -1) THEN V541 = .;
   IF (V542 = -1) THEN V542 = .;
   IF (V543 = -1) THEN V543 = .;
   IF (V544 = -1) THEN V544 = .;
   IF (V545 = -1) THEN V545 = .;
   IF (V546 = -1) THEN V546 = .;
   IF (V547 = -1) THEN V547 = .;
   IF (V548 = -1) THEN V548 = .;
   IF (V549 = -1) THEN V549 = .;
   IF (V550 = -1) THEN V550 = .;
   IF (V551 = -1) THEN V551 = .;
   IF (V552 = -1) THEN V552 = .;
   IF (V553 = -1) THEN V553 = .;
   IF (V554 = -1) THEN V554 = .;
   IF (V555 = -1) THEN V555 = .;
   IF (V556 = -1) THEN V556 = .;
   IF (V557 = -1) THEN V557 = .;
   IF (V558 = -1) THEN V558 = .;
   IF (V559 = -1) THEN V559 = .;
   IF (V560 = -1) THEN V560 = .;
   IF (V561 = -1) THEN V561 = .;
   IF (V562 = -1) THEN V562 = .;
   IF (V563 = -1) THEN V563 = .;
   IF (V564 = -1) THEN V564 = .;
   IF (V565 = -1) THEN V565 = .;
   IF (V566 = -1) THEN V566 = .;
   IF (V567 = -1) THEN V567 = .;
   IF (V568 = -1) THEN V568 = .;
   IF (V569 = -1) THEN V569 = .;
   IF (V570 = -1) THEN V570 = .;
   IF (V571 = -1) THEN V571 = .;
   IF (V572 = -1) THEN V572 = .;
   IF (V573 = -1) THEN V573 = .;
   IF (V574 = -1) THEN V574 = .;
   IF (V575 = -1) THEN V575 = .;
   IF (V576 = -1) THEN V576 = .;
   IF (V577 = -1) THEN V577 = .;
   IF (V578 = -1) THEN V578 = .;
   IF (V579 = -1) THEN V579 = .;
   IF (V580 = -1) THEN V580 = .;
   IF (V581 = -1) THEN V581 = .;
   IF (V582 = -1) THEN V582 = .;
   IF (V583 = -1) THEN V583 = .;
   IF (V584 = -1) THEN V584 = .;
   IF (V585 = -1) THEN V585 = .;
   IF (V586 = -1) THEN V586 = .;
   IF (V587 = -1) THEN V587 = .;
   IF (V588 = -1) THEN V588 = .;
   IF (V589 = -1) THEN V589 = .;
   IF (V590 = -1) THEN V590 = .;
   IF (V591 = -1) THEN V591 = .;
   IF (V592 = -1) THEN V592 = .;
   IF (V593 = -1) THEN V593 = .;
   IF (V594 = -1) THEN V594 = .;
   IF (V595 = -1) THEN V595 = .;
   IF (V596 = -1) THEN V596 = .;
   IF (V597 = -1) THEN V597 = .;
   IF (V598 = -1) THEN V598 = .;
   IF (V599 = -1) THEN V599 = .;
   IF (V600 = -1) THEN V600 = .;
   IF (V601 = -1) THEN V601 = .;
   IF (V602 = -1) THEN V602 = .;
   IF (V603 = -1) THEN V603 = .;
   IF (V604 = -1) THEN V604 = .;
   IF (V605 = -1) THEN V605 = .;
   IF (V606 = -1) THEN V606 = .;
   IF (V607 = -1) THEN V607 = .;
   IF (V608 = -1) THEN V608 = .;
   IF (V609 = -1) THEN V609 = .;
   IF (V610 = -1) THEN V610 = .;
   IF (V611 = -1) THEN V611 = .;
   IF (V612 = -1) THEN V612 = .;
   IF (V613 = -1) THEN V613 = .;
   IF (V614 = -1) THEN V614 = .;
   IF (V615 = -1) THEN V615 = .;
   IF (V616 = -1) THEN V616 = .;
   IF (V617 = -1) THEN V617 = .;
   IF (V618 = -1) THEN V618 = .;
   IF (V619 = -1) THEN V619 = .;
   IF (V620 = -1) THEN V620 = .;
   IF (V621 = -1) THEN V621 = .;
   IF (V622 = -1) THEN V622 = .;
   IF (V623 = -1) THEN V623 = .;
   IF (V624 = -1) THEN V624 = .;
   IF (V625 = -1) THEN V625 = .;
   IF (V626 = -1) THEN V626 = .;
   IF (V627 = -1) THEN V627 = .;
   IF (V628 = -1) THEN V628 = .;
   IF (V629 = -1) THEN V629 = .;
   IF (V630 = -1) THEN V630 = .;
   IF (V631 = -1) THEN V631 = .;
   IF (V632 = -1) THEN V632 = .;
   IF (V633 = -1) THEN V633 = .;
   IF (V634 = -1) THEN V634 = .;
   IF (V635 = -1) THEN V635 = .;
   IF (V636 = -1) THEN V636 = .;
   IF (V637 = -1) THEN V637 = .;
   IF (V638 = -1) THEN V638 = .;
   IF (V639 = -1) THEN V639 = .;
   IF (V640 = -1) THEN V640 = .;
   IF (V641 = -1) THEN V641 = .;
   IF (V642 = -1) THEN V642 = .;
   IF (V643 = -1) THEN V643 = .;
   IF (V644 = -1) THEN V644 = .;
   IF (V645 = -1) THEN V645 = .;
   IF (V646 = -1) THEN V646 = .;
   IF (V647 = -1) THEN V647 = .;
   IF (V648 = -1) THEN V648 = .;
   IF (V649 = -1) THEN V649 = .;
   IF (V650 = -1) THEN V650 = .;
   IF (V651 = -1) THEN V651 = .;
   IF (V652 = -1) THEN V652 = .;
   IF (V653 = -1) THEN V653 = .;
   IF (V654 = -1) THEN V654 = .;
   IF (V655 = -1) THEN V655 = .;
   IF (V656 = -1) THEN V656 = .;
   IF (V657 = -1) THEN V657 = .;
   IF (V658 = -1) THEN V658 = .;
   IF (V659 = -1) THEN V659 = .;
   IF (V660 = -1) THEN V660 = .;
   IF (V661 = -1) THEN V661 = .;
   IF (V662 = -1) THEN V662 = .;
   IF (V663 = -1) THEN V663 = .;
   IF (V664 = -1) THEN V664 = .;
   IF (V665 = -1) THEN V665 = .;
   IF (V666 = -1) THEN V666 = .;
   IF (V667 = -1) THEN V667 = .;
   IF (V668 = -1) THEN V668 = .;
   IF (V669 = -1) THEN V669 = .;
   IF (V670 = -1) THEN V670 = .;
   IF (V671 = -1) THEN V671 = .;
   IF (V672 = -1) THEN V672 = .;
   IF (V673 = -1) THEN V673 = .;
   IF (V674 = -1) THEN V674 = .;
   IF (V675 = -1) THEN V675 = .;
   IF (V676 = -1) THEN V676 = .;
   IF (V677 = -1) THEN V677 = .;
   IF (V678 = -1) THEN V678 = .;
   IF (V679 = -1) THEN V679 = .;
   IF (V680 = -1) THEN V680 = .;
   IF (V681 = -1) THEN V681 = .;
   IF (V682 = -1) THEN V682 = .;
   IF (V683 = -1) THEN V683 = .;
   IF (V684 = -1) THEN V684 = .;
   IF (V685 = -1) THEN V685 = .;
   IF (V686 = -1) THEN V686 = .;
   IF (V687 = -1) THEN V687 = .;
   IF (V688 = -1) THEN V688 = .;
   IF (V689 = -1) THEN V689 = .;
   IF (V690 = -1) THEN V690 = .;
   IF (V691 = -1) THEN V691 = .;
   IF (V692 = -1) THEN V692 = .;
   IF (V693 = -1) THEN V693 = .;
   IF (V694 = -1) THEN V694 = .;
   IF (V695 = -1) THEN V695 = .;
   IF (V696 = -1) THEN V696 = .;
   IF (V697 = -1) THEN V697 = .;
   IF (V698 = -1) THEN V698 = .;
   IF (V699 = -1) THEN V699 = .;
   IF (V700 = -1) THEN V700 = .;
   IF (V701 = -1) THEN V701 = .;
   IF (V702 = -1) THEN V702 = .;
   IF (V703 = -1) THEN V703 = .;
   IF (V704 = -1) THEN V704 = .;
   IF (V705 = -1) THEN V705 = .;
   IF (V706 = -1) THEN V706 = .;
   IF (V707 = -1) THEN V707 = .;
   IF (V708 = -1) THEN V708 = .;
   IF (V709 = -1) THEN V709 = .;
   IF (V710 = -1) THEN V710 = .;
   IF (V711 = -1) THEN V711 = .;
   IF (V712 = -1) THEN V712 = .;
   IF (V713 = -1) THEN V713 = .;
   IF (V714 = -1) THEN V714 = .;
   IF (V715 = -1) THEN V715 = .;
   IF (V716 = -1) THEN V716 = .;
   IF (V717 = -1) THEN V717 = .;
   IF (V718 = -1) THEN V718 = .;
   IF (V719 = -1) THEN V719 = .;
   IF (V720 = -1) THEN V720 = .;
   IF (V721 = -1) THEN V721 = .;
   IF (V722 = -1) THEN V722 = .;
   IF (V723 = -1) THEN V723 = .;
   IF (V724 = -1) THEN V724 = .;
   IF (V725 = -1) THEN V725 = .;
   IF (V726 = -1) THEN V726 = .;
   IF (V727 = -1) THEN V727 = .;
   IF (V728 = -1) THEN V728 = .;
   IF (V729 = -1) THEN V729 = .;
   IF (V730 = -1) THEN V730 = .;
   IF (V731 = -1) THEN V731 = .;
   IF (V732 = -1) THEN V732 = .;
   IF (V733 = -1) THEN V733 = .;
   IF (V734 = -1) THEN V734 = .;
   IF (V735 = -1) THEN V735 = .;
   IF (V736 = -1) THEN V736 = .;
   IF (V737 = -1) THEN V737 = .;
   IF (V738 = -1) THEN V738 = .;
   IF (V739 = -1) THEN V739 = .;
   IF (V740 = -1) THEN V740 = .;
   IF (V741 = -1) THEN V741 = .;
   IF (V742 = -1) THEN V742 = .;
   IF (V743 = -1) THEN V743 = .;
   IF (V744 = -1) THEN V744 = .;
   IF (V745 = -1) THEN V745 = .;
   IF (V746 = -1) THEN V746 = .;
   IF (V747 = -1) THEN V747 = .;
   IF (V748 = -1) THEN V748 = .;
   IF (V749 = -1) THEN V749 = .;
   IF (V750 = -1) THEN V750 = .;
   IF (V751 = -1) THEN V751 = .;
   IF (V752 = -1) THEN V752 = .;
   IF (V753 = -1) THEN V753 = .;
   IF (V754 = -1) THEN V754 = .;
   IF (V755 = -1) THEN V755 = .;
   IF (V756 = -1) THEN V756 = .;
   IF (V757 = -1) THEN V757 = .;
   IF (V758 = -1) THEN V758 = .;
   IF (V759 = -1) THEN V759 = .;
   IF (V760 = -1) THEN V760 = .;
   IF (V761 = -1) THEN V761 = .;
   IF (V762 = -1) THEN V762 = .;
   IF (V763 = -1) THEN V763 = .;
   IF (V764 = -1) THEN V764 = .;
   IF (V765 = -1) THEN V765 = .;
   IF (V766 = -1) THEN V766 = .;
   IF (V767 = -1) THEN V767 = .;
   IF (V768 = -1) THEN V768 = .;
   IF (V769 = -1) THEN V769 = .;
   IF (V770 = -1) THEN V770 = .;
   IF (V771 = -1) THEN V771 = .;
   IF (V772 = -1) THEN V772 = .;
   IF (V773 = -1) THEN V773 = .;
   IF (V774 = -1) THEN V774 = .;
   IF (V775 = -1) THEN V775 = .;
   IF (V776 = -1) THEN V776 = .;
   IF (V777 = -1) THEN V777 = .;
   IF (V778 = -1) THEN V778 = .;
   IF (V779 = -1) THEN V779 = .;
   IF (V780 = -1) THEN V780 = .;
   IF (V781 = -1) THEN V781 = .;
   IF (V782 = -1) THEN V782 = .;
   IF (V783 = -1) THEN V783 = .;
   IF (V784 = -1) THEN V784 = .;
   IF (V785 = -1) THEN V785 = .;
   IF (V786 = -1) THEN V786 = .;
   IF (V787 = -1) THEN V787 = .;
   IF (V788 = -1) THEN V788 = .;
   IF (V789 = -1) THEN V789 = .;
   IF (V790 = -1) THEN V790 = .;
   IF (V791 = -1) THEN V791 = .;
   IF (V792 = -1) THEN V792 = .;
   IF (V793 = -1) THEN V793 = .;
   IF (V794 = -1) THEN V794 = .;
   IF (V795 = -1) THEN V795 = .;
   IF (V796 = -1) THEN V796 = .;
   IF (V797 = -1) THEN V797 = .;
   IF (V798 = -1) THEN V798 = .;
   IF (V799 = -1) THEN V799 = .;
   IF (V800 = -1) THEN V800 = .;
   IF (V801 = -1) THEN V801 = .;
   IF (V802 = -1) THEN V802 = .;
   IF (V803 = -1) THEN V803 = .;
   IF (V804 = -1) THEN V804 = .;
   IF (V805 = -1) THEN V805 = .;
   IF (V806 = -1) THEN V806 = .;
   IF (V807 = -1) THEN V807 = .;
   IF (V808 = -1) THEN V808 = .;
   IF (V809 = -1) THEN V809 = .;
   IF (V810 = -1) THEN V810 = .;
   IF (V811 = -1) THEN V811 = .;
   IF (V812 = -1) THEN V812 = .;
   IF (V813 = -1) THEN V813 = .;
   IF (V814 = -1) THEN V814 = .;
   IF (V815 = -1) THEN V815 = .;
   IF (V816 = -1) THEN V816 = .;
   IF (V817 = -1) THEN V817 = .;
   IF (V818 = -1) THEN V818 = .;
   IF (V819 = -1) THEN V819 = .;
   IF (V820 = -1) THEN V820 = .;
   IF (V821 = -1) THEN V821 = .;
   IF (V822 = -1) THEN V822 = .;
   IF (V823 = -1) THEN V823 = .;
   IF (V824 = -1) THEN V824 = .;
   IF (V825 = -1) THEN V825 = .;
   IF (V826 = -1) THEN V826 = .;
   IF (V827 = -1) THEN V827 = .;
   IF (V828 = -1) THEN V828 = .;
   IF (V829 = -1) THEN V829 = .;
   IF (V830 = -1) THEN V830 = .;
   IF (V831 = -1) THEN V831 = .;
   IF (V832 = -1) THEN V832 = .;
   IF (V833 = -1) THEN V833 = .;
   IF (V834 = -1) THEN V834 = .;
   IF (V835 = -1) THEN V835 = .;
   IF (V836 = -1) THEN V836 = .;
   IF (V837 = -1) THEN V837 = .;
   IF (V838 = -1) THEN V838 = .;
   IF (V839 = -1) THEN V839 = .;
   IF (V840 = -1) THEN V840 = .;
   IF (V841 = -1) THEN V841 = .;
   IF (V842 = -1) THEN V842 = .;
   IF (V843 = -1) THEN V843 = .;
   IF (V844 = -1) THEN V844 = .;
   IF (V845 = -1) THEN V845 = .;
   IF (V846 = -1) THEN V846 = .;
   IF (V847 = -1) THEN V847 = .;
   IF (V848 = -1) THEN V848 = .;
   IF (V849 = -1) THEN V849 = .;
   IF (V850 = -1) THEN V850 = .;
   IF (V851 = -1) THEN V851 = .;
   IF (V852 = -1) THEN V852 = .;
   IF (V853 = -1) THEN V853 = .;
   IF (V854 = -1) THEN V854 = .;
   IF (V855 = -1) THEN V855 = .;
   IF (V856 = -1) THEN V856 = .;
   IF (V857 = -1) THEN V857 = .;
   IF (V858 = -1) THEN V858 = .;
   IF (V859 = -1) THEN V859 = .;
   IF (V860 = -1) THEN V860 = .;
   IF (V861 = -1) THEN V861 = .;
   IF (V862 = -1) THEN V862 = .;
   IF (V863 = -1) THEN V863 = .;
   IF (V864 = -1) THEN V864 = .;
   IF (V865 = -1) THEN V865 = .;
   IF (V866 = -1) THEN V866 = .;
   IF (V867 = -1) THEN V867 = .;
   IF (V868 = -1) THEN V868 = .;
   IF (V869 = -1) THEN V869 = .;
   IF (V870 = -1) THEN V870 = .;
   IF (V871 = -1) THEN V871 = .;
   IF (V872 = -1) THEN V872 = .;
   IF (V873 = -1) THEN V873 = .;
   IF (V874 = -1) THEN V874 = .;
   IF (V875 = -1) THEN V875 = .;
   IF (V876 = -1) THEN V876 = .;
   IF (V877 = -1) THEN V877 = .;
   IF (V878 = -1) THEN V878 = .;
   IF (V879 = -1) THEN V879 = .;
   IF (V880 = -1) THEN V880 = .;
   IF (V881 = -1) THEN V881 = .;
   IF (V882 = -1) THEN V882 = .;
   IF (V883 = -1) THEN V883 = .;
   IF (V885 = -1) THEN V885 = .;
   IF (V887 = -1) THEN V887 = .;
   IF (V888 = -1) THEN V888 = .;
   IF (V889 = -1) THEN V889 = .;
   IF (V890 = -1) THEN V890 = .;
   IF (V891 = -1) THEN V891 = .;
   IF (V893 = -1) THEN V893 = .;
   IF (V894 = -1) THEN V894 = .;
   IF (V896 = -1) THEN V896 = .;
   IF (V897 = -1) THEN V897 = .;
   IF (V899 = -1) THEN V899 = .;
   IF (V900 = -1) THEN V900 = .;
   IF (V902 = -1) THEN V902 = .;
   IF (V903 = -1) THEN V903 = .;
   IF (V905 = -1) THEN V905 = .;
   IF (V906 = -1) THEN V906 = .;
   IF (V908 = -1) THEN V908 = .;
   IF (V909 = -1) THEN V909 = .;
   IF (V911 = -1) THEN V911 = .;
   IF (V912 = -1) THEN V912 = .;
   IF (V914 = -1) THEN V914 = .;
   IF (V915 = -1) THEN V915 = .;
   IF (V917 = -1) THEN V917 = .;
   IF (V918 = -1) THEN V918 = .;
   IF (V920 = -1) THEN V920 = .;
   IF (V921 = -1) THEN V921 = .;
   IF (V922 = -1) THEN V922 = .;
   IF (V924 = -1) THEN V924 = .;
   IF (V925 = -1) THEN V925 = .;
   IF (V926 = -1) THEN V926 = .;
   IF (V927 = -1) THEN V927 = .;
   IF (V928 = -1) THEN V928 = .;
   IF (V929 = -1) THEN V929 = .;
   IF (V930 = -1) THEN V930 = .;
   IF (V931 = -1) THEN V931 = .;
   IF (V932 = -1) THEN V932 = .;
   IF (V933 = -1) THEN V933 = .;
   IF (V934 = -1) THEN V934 = .;
   IF (V935 = -1) THEN V935 = .;
   IF (V936 = -1) THEN V936 = .;
   IF (V937 = -1) THEN V937 = .;
   IF (V938 = -1) THEN V938 = .;
   IF (V939 = -1) THEN V939 = .;
   IF (V940 = -1) THEN V940 = .;
   IF (V941 = -1) THEN V941 = .;
   IF (V942 = -1) THEN V942 = .;
   IF (V943 = -1) THEN V943 = .;
   IF (V944 = -1) THEN V944 = .;
   IF (V945 = -1) THEN V945 = .;
   IF (V946 = -1) THEN V946 = .;
   IF (V947 = -1) THEN V947 = .;
   IF (V948 = -1) THEN V948 = .;
   IF (V949 = -1) THEN V949 = .;
   IF (V950 = -1) THEN V950 = .;
   IF (V963 = -1) THEN V963 = .;
   IF (V964 = -1) THEN V964 = .;
   IF (V965 = -1) THEN V965 = .;
   IF (V966 = -1) THEN V966 = .;
   IF (V967 = -1) THEN V967 = .;
   IF (V968 = -1) THEN V968 = .;
   IF (V969 = -1) THEN V969 = .;
   IF (V970 = -1) THEN V970 = .;
   IF (V971 = -1) THEN V971 = .;
   IF (V972 = -1) THEN V972 = .;
   IF (V973 = -1) THEN V973 = .;
   IF (V974 = -1) THEN V974 = .;
   IF (V975 = -1) THEN V975 = .;
   IF (V976 = -1) THEN V976 = .;
   IF (V977 = -1) THEN V977 = .;
   IF (V978 = -1) THEN V978 = .;
   IF (V979 = -1) THEN V979 = .;
   IF (V980 = -1) THEN V980 = .;
   IF (V981 = -1) THEN V981 = .;
   IF (V982 = -1) THEN V982 = .;
   IF (V983 = -1) THEN V983 = .;
   IF (V984 = -1) THEN V984 = .;
   IF (V985 = -1) THEN V985 = .;
   IF (V986 = -1) THEN V986 = .;
   IF (V987 = -1) THEN V987 = .;
   IF (V988 = -1) THEN V988 = .;
   IF (V989 = -1) THEN V989 = .;
   IF (V990 = -1) THEN V990 = .;
   IF (V991 = -1) THEN V991 = .;
   IF (V992 = -1) THEN V992 = .;
   IF (V993 = -1) THEN V993 = .;
   IF (V994 = -1) THEN V994 = .;
   IF (V995 = -1) THEN V995 = .;
   IF (V996 = -1) THEN V996 = .;
   IF (V997 = -1) THEN V997 = .;
   IF (V998 = -1) THEN V998 = .;
   IF (V999 = -1) THEN V999 = .;
   IF (V1000 = -1) THEN V1000 = .;
   IF (V1001 = -1) THEN V1001 = .;
   IF (V1002 = -1) THEN V1002 = .;
   IF (V1003 = -1) THEN V1003 = .;
   IF (V1004 = -1) THEN V1004 = .;
   IF (V1005 = -1) THEN V1005 = .;
   IF (V1006 = -1) THEN V1006 = .;
   IF (V1007 = -1) THEN V1007 = .;
   IF (V1008 = -1) THEN V1008 = .;
   IF (V1009 = -1) THEN V1009 = .;
   IF (V1010 = -1) THEN V1010 = .;
   IF (V1011 = -1) THEN V1011 = .;
   IF (V1012 = -1) THEN V1012 = .;
   IF (V1013 = -1) THEN V1013 = .;
   IF (V1014 = -1) THEN V1014 = .;
   IF (V1015 = -1) THEN V1015 = .;
   IF (V1016 = -1) THEN V1016 = .;
   IF (V1017 = -1) THEN V1017 = .;
   IF (V1018 = -1) THEN V1018 = .;
   IF (V1019 = -1) THEN V1019 = .;
   IF (V1020 = -1) THEN V1020 = .;
   IF (V1021 = -1) THEN V1021 = .;
   IF (V1022 = -1) THEN V1022 = .;
   IF (V1023 = -1) THEN V1023 = .;
   IF (V1024 = -1) THEN V1024 = .;
   IF (V1025 = -1) THEN V1025 = .;
   IF (V1026 = -1) THEN V1026 = .;
   IF (V1027 = -1) THEN V1027 = .;
   IF (V1028 = -1) THEN V1028 = .;
   IF (V1029 = -1) THEN V1029 = .;
   IF (V1030 = -1) THEN V1030 = .;
   IF (V1031 = -1) THEN V1031 = .;
   IF (V1032 = -1) THEN V1032 = .;
   IF (V1033 = -1) THEN V1033 = .;
   IF (V1034 = -1) THEN V1034 = .;
   IF (V1035 = -1) THEN V1035 = .;
   IF (V1036 = -1) THEN V1036 = .;
   IF (V1037 = -1) THEN V1037 = .;
   IF (V1038 = -1) THEN V1038 = .;
   IF (V1039 = -1) THEN V1039 = .;
   IF (V1040 = -1) THEN V1040 = .;
   IF (V1041 = -1) THEN V1041 = .;
   IF (V1042 = -1) THEN V1042 = .;
   IF (V1043 = -1) THEN V1043 = .;
   IF (V1044 = -1) THEN V1044 = .;
   IF (V1045 = -1) THEN V1045 = .;
   IF (V1046 = -1) THEN V1046 = .;
   IF (V1047 = -1) THEN V1047 = .;
   IF (V1048 = -1) THEN V1048 = .;
   IF (V1049 = -1) THEN V1049 = .;
   IF (V1050 = -1) THEN V1050 = .;
   IF (V1051 = -1) THEN V1051 = .;
   IF (V1052 = -1) THEN V1052 = .;
   IF (V1053 = -1) THEN V1053 = .;
   IF (V1054 = -1) THEN V1054 = .;
   IF (V1055 = -1) THEN V1055 = .;
   IF (V1056 = -1) THEN V1056 = .;
   IF (V1057 = -1) THEN V1057 = .;
   IF (V1058 = -1) THEN V1058 = .;
   IF (V1059 = -1) THEN V1059 = .;
   IF (V1060 = -1) THEN V1060 = .;
   IF (V1061 = -1) THEN V1061 = .;
   IF (V1062 = -1) THEN V1062 = .;
   IF (V1063 = -1) THEN V1063 = .;
   IF (V1064 = -1) THEN V1064 = .;
   IF (V1065 = -1) THEN V1065 = .;
   IF (V1066 = -1) THEN V1066 = .;
   IF (V1067 = -1) THEN V1067 = .;
   IF (V1068 = -1) THEN V1068 = .;
   IF (V1069 = -1) THEN V1069 = .;
   IF (V1070 = -1) THEN V1070 = .;
   IF (V1071 = -1) THEN V1071 = .;
   IF (V1072 = -1) THEN V1072 = .;
   IF (V1073 = -1) THEN V1073 = .;
   IF (V1074 = -1) THEN V1074 = .;
   IF (V1075 = -1) THEN V1075 = .;
   IF (V1076 = -1) THEN V1076 = .;
   IF (V1077 = -1) THEN V1077 = .;
   IF (V1078 = -1) THEN V1078 = .;
   IF (V1079 = -1) THEN V1079 = .;
   IF (V1080 = -1) THEN V1080 = .;
   IF (V1081 = -1) THEN V1081 = .;
   IF (V1082 = -1) THEN V1082 = .;
   IF (V1083 = -1) THEN V1083 = .;
   IF (V1084 = -1) THEN V1084 = .;
   IF (V1085 = -1) THEN V1085 = .;
   IF (V1086 = -1) THEN V1086 = .;
   IF (V1087 = -1) THEN V1087 = .;
   IF (V1088 = -1) THEN V1088 = .;
   IF (V1089 = -1) THEN V1089 = .;
   IF (V1090 = -1) THEN V1090 = .;
   IF (V1091 = -1) THEN V1091 = .;
   IF (V1092 = -1) THEN V1092 = .;
   IF (V1093 = -1) THEN V1093 = .;
   IF (V1094 = -1) THEN V1094 = .;
   IF (V1095 = -1) THEN V1095 = .;
   IF (V1096 = -1) THEN V1096 = .;
   IF (V1097 = -1) THEN V1097 = .;
   IF (V1098 = -1) THEN V1098 = .;
   IF (V1099 = -1) THEN V1099 = .;
   IF (V1100 = -1) THEN V1100 = .;
   IF (V1101 = -1) THEN V1101 = .;
   IF (V1102 = -1) THEN V1102 = .;
   IF (V1103 = -1) THEN V1103 = .;
   IF (V1104 = -1) THEN V1104 = .;
   IF (V1105 = -1) THEN V1105 = .;
   IF (V1106 = -1) THEN V1106 = .;
   IF (V1107 = -1) THEN V1107 = .;
   IF (V1108 = -1) THEN V1108 = .;
   IF (V1109 = -1) THEN V1109 = .;
   IF (V1110 = -1) THEN V1110 = .;
   IF (V1111 = -1) THEN V1111 = .;
   IF (V1112 = -1) THEN V1112 = .;
   IF (V1113 = -1) THEN V1113 = .;
   IF (V1114 = -1) THEN V1114 = .;
   IF (V1115 = -1) THEN V1115 = .;
   IF (V1116 = -1) THEN V1116 = .;
   IF (V1117 = -1) THEN V1117 = .;
   IF (V1118 = -1) THEN V1118 = .;
   IF (V1119 = -1) THEN V1119 = .;
   IF (V1120 = -1) THEN V1120 = .;
   IF (V1121 = -1) THEN V1121 = .;
   IF (V1122 = -1) THEN V1122 = .;
   IF (V1123 = -1) THEN V1123 = .;
   IF (V1124 = -1) THEN V1124 = .;
   IF (V1125 = -1) THEN V1125 = .;
   IF (V1126 = -1) THEN V1126 = .;
   IF (V1127 = -1) THEN V1127 = .;
   IF (V1128 = -1) THEN V1128 = .;
   IF (V1129 = -1) THEN V1129 = .;
   IF (V1130 = -1) THEN V1130 = .;
   IF (V1131 = -1) THEN V1131 = .;
   IF (V1132 = -1) THEN V1132 = .;
   IF (V1133 = -1) THEN V1133 = .;
   IF (V1134 = -1) THEN V1134 = .;
   IF (V1135 = -1) THEN V1135 = .;
   IF (V1136 = -1) THEN V1136 = .;
   IF (V1137 = -1) THEN V1137 = .;
   IF (V1138 = -1) THEN V1138 = .;
   IF (V1139 = -1) THEN V1139 = .;
   IF (V1140 = -1) THEN V1140 = .;
   IF (V1141 = -1) THEN V1141 = .;
   IF (V1142 = -1) THEN V1142 = .;
   IF (V1143 = -1) THEN V1143 = .;
   IF (V1144 = -1) THEN V1144 = .;
   IF (V1145 = -1) THEN V1145 = .;
   IF (V1146 = -1) THEN V1146 = .;
   IF (V1147 = -1) THEN V1147 = .;
   IF (V1148 = -1) THEN V1148 = .;
   IF (V1149 = -1) THEN V1149 = .;
   IF (V1150 = -1) THEN V1150 = .;
   IF (V1151 = -1) THEN V1151 = .;
   IF (V1152 = -1) THEN V1152 = .;
   IF (V1153 = -1) THEN V1153 = .;
   IF (V1154 = -1) THEN V1154 = .;
   IF (V1155 = -1) THEN V1155 = .;
   IF (V1156 = -1) THEN V1156 = .;
   IF (V1157 = -1) THEN V1157 = .;
   IF (V1158 = -1) THEN V1158 = .;
   IF (V1159 = -1) THEN V1159 = .;
   IF (V1160 = -1) THEN V1160 = .;
   IF (V1161 = -1) THEN V1161 = .;
   IF (V1162 = -1) THEN V1162 = .;
   IF (V1163 = -1) THEN V1163 = .;
   IF (V1164 = -1) THEN V1164 = .;
   IF (V1165 = -1) THEN V1165 = .;
   IF (V1166 = -1) THEN V1166 = .;
   IF (V1167 = -1) THEN V1167 = .;
   IF (V1168 = -1) THEN V1168 = .;
   IF (V1169 = -1) THEN V1169 = .;
   IF (V1170 = -1) THEN V1170 = .;
   IF (V1171 = -1) THEN V1171 = .;
   IF (V1172 = -1) THEN V1172 = .;
   IF (V1173 = -1) THEN V1173 = .;
   IF (V1174 = -1) THEN V1174 = .;
   IF (V1175 = -1) THEN V1175 = .;
   IF (V1176 = -1) THEN V1176 = .;
   IF (V1177 = -1) THEN V1177 = .;
   IF (V1178 = -1) THEN V1178 = .;
   IF (V1179 = -1) THEN V1179 = .;
   IF (V1180 = -1) THEN V1180 = .;
   IF (V1181 = -1) THEN V1181 = .;
   IF (V1182 = -1) THEN V1182 = .;
   IF (V1183 = -1) THEN V1183 = .;
   IF (V1184 = -1) THEN V1184 = .;
   IF (V1185 = -1) THEN V1185 = .;
   IF (V1186 = -1) THEN V1186 = .;
   IF (V1187 = -1) THEN V1187 = .;
   IF (V1188 = -1) THEN V1188 = .;
   IF (V1189 = -1) THEN V1189 = .;
   IF (V1190 = -1) THEN V1190 = .;
   IF (V1191 = -1) THEN V1191 = .;
   IF (V1192 = -1) THEN V1192 = .;
   IF (V1193 = -1) THEN V1193 = .;
   IF (V1194 = -1) THEN V1194 = .;
   IF (V1195 = -1) THEN V1195 = .;
   IF (V1196 = -1) THEN V1196 = .;
   IF (V1197 = -1) THEN V1197 = .;
   IF (V1198 = -1) THEN V1198 = .;
   IF (V1199 = -1) THEN V1199 = .;
   IF (V1200 = -1) THEN V1200 = .;
   IF (V1201 = -1) THEN V1201 = .;
   IF (V1202 = -1) THEN V1202 = .;
   IF (V1203 = -1) THEN V1203 = .;
   IF (V1204 = -1) THEN V1204 = .;
   IF (V1205 = -1) THEN V1205 = .;
   IF (V1206 = -1) THEN V1206 = .;
   IF (V1207 = -1) THEN V1207 = .;
   IF (V1208 = -1) THEN V1208 = .;
   IF (V1209 = -1) THEN V1209 = .;
   IF (V1211 = -1) THEN V1211 = .;
   IF (V1212 = -1) THEN V1212 = .;
   IF (V1213 = -1) THEN V1213 = .;
   IF (V1214 = -1) THEN V1214 = .;
   IF (V1215 = -1) THEN V1215 = .;
   IF (V1216 = -1) THEN V1216 = .;
   IF (V1217 = -1) THEN V1217 = .;
   IF (V1218 = -1) THEN V1218 = .;
   IF (V1219 = -1) THEN V1219 = .;
   IF (V1220 = -1) THEN V1220 = .;
   IF (V1221 = -1) THEN V1221 = .;
   IF (V1222 = -1) THEN V1222 = .;
   IF (V1223 = -1) THEN V1223 = .;
   IF (V1224 = -1) THEN V1224 = .;
   IF (V1225 = -1) THEN V1225 = .;
   IF (V1226 = -1) THEN V1226 = .;
   IF (V1227 = -1) THEN V1227 = .;
   IF (V1228 = -1) THEN V1228 = .;
   IF (V1229 = -1) THEN V1229 = .;
   IF (V1230 = -1) THEN V1230 = .;
   IF (V1231 = -1) THEN V1231 = .;
   IF (V1232 = -1) THEN V1232 = .;
   IF (V1233 = -1) THEN V1233 = .;
   IF (V1234 = -1) THEN V1234 = .;
   IF (V1235 = -1) THEN V1235 = .;
   IF (V1236 = -1) THEN V1236 = .;
   IF (V1237 = -1) THEN V1237 = .;
   IF (V1238 = -1) THEN V1238 = .;
   IF (V1239 = -1) THEN V1239 = .;
   IF (V1240 = -1) THEN V1240 = .;
   IF (V1241 = -1) THEN V1241 = .;
   IF (V1242 = -1) THEN V1242 = .;
   IF (V1243 = -1) THEN V1243 = .;
   IF (V1244 = -1) THEN V1244 = .;
   IF (V1245 = -1) THEN V1245 = .;
   IF (V1246 = -1) THEN V1246 = .;
   IF (V1247 = -1) THEN V1247 = .;
   IF (V1248 = -1) THEN V1248 = .;
   IF (V1249 = -1) THEN V1249 = .;
   IF (V1250 = -1) THEN V1250 = .;
   IF (V1251 = -1) THEN V1251 = .;
   IF (V1252 = -1) THEN V1252 = .;
   IF (V1253 = -1) THEN V1253 = .;
   IF (V1254 = -1) THEN V1254 = .;
   IF (V1255 = -1) THEN V1255 = .;
   IF (V1256 = -1) THEN V1256 = .;
   IF (V1257 = -1) THEN V1257 = .;
   IF (V1258 = -1) THEN V1258 = .;
   IF (V1259 = -1) THEN V1259 = .;
   IF (V1260 = -1) THEN V1260 = .;
   IF (V1261 = -1) THEN V1261 = .;
   IF (V1262 = -1) THEN V1262 = .;
   IF (V1263 = -1) THEN V1263 = .;
   IF (V1264 = -1) THEN V1264 = .;
   IF (V1265 = -1) THEN V1265 = .;
   IF (V1266 = -1) THEN V1266 = .;
   IF (V1267 = -1) THEN V1267 = .;
   IF (V1268 = -1) THEN V1268 = .;
   IF (V1269 = -1) THEN V1269 = .;
   IF (V1270 = -1) THEN V1270 = .;
   IF (V1271 = -1) THEN V1271 = .;
   IF (V1272 = -1) THEN V1272 = .;
   IF (V1273 = -1) THEN V1273 = .;
   IF (V1274 = -1) THEN V1274 = .;
   IF (V1275 = -1) THEN V1275 = .;
   IF (V1276 = -1) THEN V1276 = .;
   IF (V1277 = -1) THEN V1277 = .;
   IF (V1278 = -1) THEN V1278 = .;
   IF (V1279 = -1) THEN V1279 = .;
   IF (V1280 = -1) THEN V1280 = .;
   IF (V1281 = -1) THEN V1281 = .;
   IF (V1282 = -1) THEN V1282 = .;
   IF (V1283 = -1) THEN V1283 = .;
   IF (V1284 = -1) THEN V1284 = .;
   IF (V1285 = -1) THEN V1285 = .;
   IF (V1286 = -1) THEN V1286 = .;
   IF (V1287 = -1) THEN V1287 = .;
   IF (V1288 = -1) THEN V1288 = .;
   IF (V1289 = -1) THEN V1289 = .;
   IF (V1290 = -1) THEN V1290 = .;
   IF (V1291 = -1) THEN V1291 = .;
   IF (V1292 = -1) THEN V1292 = .;
   IF (V1293 = -1) THEN V1293 = .;
   IF (V1294 = -1) THEN V1294 = .;
   IF (V1295 = -1) THEN V1295 = .;
   IF (V1296 = -1) THEN V1296 = .;
   IF (V1297 = -1) THEN V1297 = .;
   IF (V1298 = -1) THEN V1298 = .;
   IF (V1299 = -1) THEN V1299 = .;
   IF (V1300 = -1) THEN V1300 = .;
   IF (V1301 = -1) THEN V1301 = .;
   IF (V1302 = -1) THEN V1302 = .;
   IF (V1303 = -1) THEN V1303 = .;
   IF (V1304 = -1) THEN V1304 = .;
   IF (V1305 = -1) THEN V1305 = .;
   IF (V1306 = -1) THEN V1306 = .;
   IF (V1307 = -1) THEN V1307 = .;
   IF (V1308 = -1) THEN V1308 = .;
   IF (V1309 = -1) THEN V1309 = .;
   IF (V1310 = -1) THEN V1310 = .;
   IF (V1311 = -1) THEN V1311 = .;
   IF (V1312 = -1) THEN V1312 = .;
   IF (V1313 = -1) THEN V1313 = .;
   IF (V1314 = -1) THEN V1314 = .;
   IF (V1315 = -1) THEN V1315 = .;
   IF (V1316 = -1) THEN V1316 = .;
   IF (V1317 = -1) THEN V1317 = .;
   IF (V1318 = -1) THEN V1318 = .;
   IF (V1319 = -1) THEN V1319 = .;
   IF (V1320 = -1) THEN V1320 = .;
   IF (V1321 = -1) THEN V1321 = .;
   IF (V1322 = -1) THEN V1322 = .;
   IF (V1323 = -1) THEN V1323 = .;
   IF (V1324 = -1) THEN V1324 = .;
   IF (V1325 = -1) THEN V1325 = .;
   IF (V1326 = -1) THEN V1326 = .;
   IF (V1327 = -1) THEN V1327 = .;
   IF (V1328 = -1) THEN V1328 = .;
   IF (V1329 = -1) THEN V1329 = .;
   IF (V1330 = -1) THEN V1330 = .;
   IF (V1331 = -1) THEN V1331 = .;
   IF (V1332 = -1) THEN V1332 = .;
   IF (V1333 = -1) THEN V1333 = .;
   IF (V1334 = -1) THEN V1334 = .;
   IF (V1335 = -1) THEN V1335 = .;
   IF (V1336 = -1) THEN V1336 = .;
   IF (V1337 = -1) THEN V1337 = .;
   IF (V1338 = -1) THEN V1338 = .;
   IF (V1339 = -1) THEN V1339 = .;
   IF (V1340 = -1) THEN V1340 = .;
   IF (V1341 = -1) THEN V1341 = .;
   IF (V1342 = -1) THEN V1342 = .;
   IF (V1343 = -1) THEN V1343 = .;
   IF (V1344 = -1) THEN V1344 = .;
   IF (V1345 = -1) THEN V1345 = .;
   IF (V1346 = -1) THEN V1346 = .;
   IF (V1347 = -1) THEN V1347 = .;
   IF (V1348 = -1) THEN V1348 = .;
   IF (V1349 = -1) THEN V1349 = .;
   IF (V1350 = -1) THEN V1350 = .;
   IF (V1351 = -1) THEN V1351 = .;
   IF (V1352 = -1) THEN V1352 = .;
   IF (V1353 = -1) THEN V1353 = .;
   IF (V1354 = -1) THEN V1354 = .;
   IF (V1355 = -1) THEN V1355 = .;
   IF (V1356 = -1) THEN V1356 = .;
   IF (V1357 = -1) THEN V1357 = .;
   IF (V1358 = -1) THEN V1358 = .;
   IF (V1359 = -1) THEN V1359 = .;
   IF (V1360 = -1) THEN V1360 = .;
   IF (V1361 = -1) THEN V1361 = .;
   IF (V1362 = -1) THEN V1362 = .;
   IF (V1363 = -1) THEN V1363 = .;
   IF (V1364 = -1) THEN V1364 = .;
   IF (V1365 = -1) THEN V1365 = .;
   IF (V1366 = -1) THEN V1366 = .;
   IF (V1367 = -1) THEN V1367 = .;
   IF (V1368 = -1) THEN V1368 = .;
   IF (V1369 = -1) THEN V1369 = .;
   IF (V1370 = -1) THEN V1370 = .;
   IF (V1371 = -1) THEN V1371 = .;
   IF (V1372 = -1) THEN V1372 = .;
   IF (V1373 = -1) THEN V1373 = .;
   IF (V1374 = -1) THEN V1374 = .;
   IF (V1383 = -1) THEN V1383 = .;
   IF (V1384 = -1) THEN V1384 = .;
   IF (V1385 = -1) THEN V1385 = .;
   IF (V1386 = -1) THEN V1386 = .;
   IF (V1387 = -1) THEN V1387 = .;
   IF (V1396 = -1) THEN V1396 = .;
   IF (V1397 = -1) THEN V1397 = .;
   IF (V1398 = -1) THEN V1398 = .;
   IF (V1399 = -1) THEN V1399 = .;
   IF (V1400 = -1) THEN V1400 = .;
   IF (V1401 = -1) THEN V1401 = .;
   IF (V1402 = -1) THEN V1402 = .;
   IF (V1403 = -1) THEN V1403 = .;
   IF (V1404 = -1) THEN V1404 = .;
   IF (V1405 = -1) THEN V1405 = .;
   IF (V1406 = -1) THEN V1406 = .;
   IF (V1407 = -1) THEN V1407 = .;
   IF (V1408 = -1) THEN V1408 = .;
   IF (V1409 = -1) THEN V1409 = .;
   IF (V1410 = -1) THEN V1410 = .;
   IF (V1411 = -1) THEN V1411 = .;
   IF (V1412 = -1) THEN V1412 = .;
   IF (V1413 = -1) THEN V1413 = .;
   IF (V1414 = -1) THEN V1414 = .;
   IF (V1415 = -1) THEN V1415 = .;
   IF (V1416 = -1) THEN V1416 = .;
   IF (V1417 = -1) THEN V1417 = .;
   IF (V1418 = -1) THEN V1418 = .;
   IF (V1419 = -1) THEN V1419 = .;
   IF (V1420 = -1) THEN V1420 = .;
   IF (V1421 = -1) THEN V1421 = .;
   IF (V1422 = -1) THEN V1422 = .;
   IF (V1423 = -1) THEN V1423 = .;
   IF (V1424 = -1) THEN V1424 = .;
   IF (V1425 = -1) THEN V1425 = .;
   IF (V1426 = -1) THEN V1426 = .;
   IF (V1427 = -1) THEN V1427 = .;
   IF (V1428 = -1) THEN V1428 = .;
   IF (V1429 = -1) THEN V1429 = .;
   IF (V1430 = -1) THEN V1430 = .;
   IF (V1431 = -1) THEN V1431 = .;
   IF (V1432 = -1) THEN V1432 = .;
   IF (V1433 = -1) THEN V1433 = .;
   IF (V1434 = -1) THEN V1434 = .;
   IF (V1435 = -1) THEN V1435 = .;
   IF (V1436 = -1) THEN V1436 = .;
   IF (V1437 = -1) THEN V1437 = .;
   IF (V1438 = -1) THEN V1438 = .;
   IF (V1439 = -1) THEN V1439 = .;
   IF (V1440 = -1) THEN V1440 = .;
   IF (V1441 = -1) THEN V1441 = .;
   IF (V1442 = -1) THEN V1442 = .;
   IF (V1443 = -1) THEN V1443 = .;
   IF (V1444 = -1) THEN V1444 = .;
   IF (V1445 = -1) THEN V1445 = .;
   IF (V1446 = -1) THEN V1446 = .;
   IF (V1447 = -1) THEN V1447 = .;
   IF (V1448 = -1) THEN V1448 = .;
   IF (V1449 = -1) THEN V1449 = .;
   IF (V1450 = -1) THEN V1450 = .;
   IF (V1451 = -1) THEN V1451 = .;
   IF (V1452 = -1) THEN V1452 = .;
   IF (V1453 = -1) THEN V1453 = .;
   IF (V1454 = -1) THEN V1454 = .;
   IF (V1455 = -1) THEN V1455 = .;
   IF (V1456 = -1) THEN V1456 = .;
   IF (V1457 = -1) THEN V1457 = .;
   IF (V1458 = -1) THEN V1458 = .;
   IF (V1459 = -1) THEN V1459 = .;
   IF (V1460 = -1) THEN V1460 = .;
   IF (V1461 = -1) THEN V1461 = .;
   IF (V1462 = -1) THEN V1462 = .;
   IF (V1463 = -1) THEN V1463 = .;
   IF (V1464 = -1) THEN V1464 = .;
   IF (V1465 = -1) THEN V1465 = .;
   IF (V1466 = -1) THEN V1466 = .;
   IF (V1467 = -1) THEN V1467 = .;
   IF (V1468 = -1) THEN V1468 = .;
   IF (V1469 = -1) THEN V1469 = .;
   IF (V1470 = -1) THEN V1470 = .;
   IF (V1471 = -1) THEN V1471 = .;
   IF (V1472 = -1) THEN V1472 = .;
   IF (V1473 = -1) THEN V1473 = .;
   IF (V1474 = -1) THEN V1474 = .;
   IF (V1475 = -1) THEN V1475 = .;
   IF (V1476 = -1) THEN V1476 = .;
   IF (V1477 = -1) THEN V1477 = .;
   IF (V1478 = -1) THEN V1478 = .;
   IF (V1479 = -1) THEN V1479 = .;
   IF (V1480 = -1) THEN V1480 = .;
   IF (V1481 = -1) THEN V1481 = .;
   IF (V1482 = -1) THEN V1482 = .;
   IF (V1483 = -1) THEN V1483 = .;
   IF (V1484 = -1) THEN V1484 = .;
   IF (V1485 = -1) THEN V1485 = .;
   IF (V1486 = -1) THEN V1486 = .;
   IF (V1487 = -1) THEN V1487 = .;
   IF (V1488 = -1) THEN V1488 = .;
   IF (V1489 = -1) THEN V1489 = .;
   IF (V1490 = -1) THEN V1490 = .;
   IF (V1491 = -1) THEN V1491 = .;
   IF (V1492 = -1) THEN V1492 = .;
   IF (V1493 = -1) THEN V1493 = .;
   IF (V1494 = -1) THEN V1494 = .;
   IF (V1495 = -1) THEN V1495 = .;
   IF (V1496 = -1) THEN V1496 = .;
   IF (V1497 = -1) THEN V1497 = .;
   IF (V1498 = -1) THEN V1498 = .;
   IF (V1499 = -1) THEN V1499 = .;
   IF (V1500 = -1) THEN V1500 = .;
   IF (V1501 = -1) THEN V1501 = .;
   IF (V1502 = -1) THEN V1502 = .;
   IF (V1503 = -1) THEN V1503 = .;
   IF (V1504 = -1) THEN V1504 = .;
   IF (V1505 = -1) THEN V1505 = .;
   IF (V1506 = -1) THEN V1506 = .;
   IF (V1507 = -1) THEN V1507 = .;
   IF (V1508 = -1) THEN V1508 = .;
*/

* SAS FORMAT STATEMENT;

  FORMAT V1 v1ffffff. V2 v2ffffff. V7 v7ffffff.
         V10 v10fffff. V15 v15fffff. V16 v16fffff.
         V17 v17fffff. V18 v18fffff. V19 v19fffff.
         V20 v20fffff. V21 v21fffff. V24 v24fffff.
         V27 v27fffff. V30 v30fffff. V33 v33fffff.
         V37 v37fffff. V38 v38fffff. V39 v39fffff.
         V40 v40fffff. V41 v41fffff. V42 v42fffff.
         V43 v43fffff. V44 v44fffff. V45 v45fffff.
         V47 v47fffff. V50 v50fffff. V51 v51fffff.
         V52 v52fffff. V53 v53fffff. V54 v54fffff.
         V55 v55fffff. V56 v56fffff. V57 v57fffff.
         V58 v58fffff. V59 v59fffff. V60 v60fffff.
         V61 v61fffff. V62 v62fffff. V63 v63fffff.
         V64 v64fffff. V65 v65fffff. V66 v66fffff.
         V67 v67fffff. V68 v68fffff. V69 v69fffff.
         V70 v70fffff. V71 v71fffff. V72 v72fffff.
         V73 v73fffff. V74 v74fffff. V75 v75fffff.
         V76 v76fffff. V77 v77fffff. V78 v78fffff.
         V79 v79fffff. V80 v80fffff. V81 v81fffff.
         V82 v82fffff. V83 v83fffff. V84 v84fffff.
         V85 v85fffff. V86 v86fffff. V87 v87fffff.
         V89 v89fffff. V90 v90fffff. V91 v91fffff.
         V92 v92fffff. V93 v93fffff. V94 v94fffff.
         V95 v95fffff. V96 v96fffff. V97 v97fffff.
         V98 v98fffff. V99 v99fffff. V102 v102ffff.
         V103 v103ffff. V104 v104ffff. V105 v105ffff.
         V106 v106ffff. V107 v107ffff. V109 v109ffff.
         V110 v110ffff. V111 v111ffff. V112 v112ffff.
         V114 v114ffff. V115 v115ffff. V116 v116ffff.
         V117 v117ffff. V118 v118ffff. V119 v119ffff.
         V120 v120ffff. V121 v121ffff. V122 v122ffff.
         V123 v123ffff. V124 v124ffff. V125 v125ffff.
         V126 v126ffff. V127 v127ffff. V128 v128ffff.
         V129 v129ffff. V130 v130ffff. V131 v131ffff.
         V132 v132ffff. V133 v133ffff. V138 v138ffff.
         V139 v139ffff. V140 v140ffff. V141 v141ffff.
         V142 v142ffff. V143 v143ffff. V144 v144ffff.
         V145 v145ffff. V146 v146ffff. V147 v147ffff.
         V148 v148ffff. V149 v149ffff. V150 v150ffff.
         V151 v151ffff. V152 v152ffff. V153 v153ffff.
         V154 v154ffff. V155 v155ffff. V156 v156ffff.
         V157 v157ffff. V158 v158ffff. V159 v159ffff.
         V160 v160ffff. V161 v161ffff. V162 v162ffff.
         V163 v163ffff. V164 v164ffff. V165 v165ffff.
         V166 v166ffff. V167 v167ffff. V168 v168ffff.
         V169 v169ffff. V170 v170ffff. V171 v171ffff.
         V172 v172ffff. V173 v173ffff. V174 v174ffff.
         V176 v176ffff. V181 v181ffff. V186 v186ffff.
         V187 v187ffff. V188 v188ffff. V189 v189ffff.
         V190 v190ffff. V191 v191ffff. V192 v192ffff.
         V193 v193ffff. V194 v194ffff. V195 v195ffff.
         V196 v196ffff. V197 v197ffff. V198 v198ffff.
         V199 v199ffff. V203 v203ffff. V205 v205ffff.
         V206 v206ffff. V207 v207ffff. V208 v208ffff.
         V209 v209ffff. V210 v210ffff. V211 v211ffff.
         V212 v212ffff. V213 v213ffff. V214 v214ffff.
         V215 v215ffff. V216 v216ffff. V217 v217ffff.
         V218 v218ffff. V219 v219ffff. V220 v220ffff.
         V221 v221ffff. V222 v222ffff. V223 v223ffff.
         V224 v224ffff. V225 v225ffff. V226 v226ffff.
         V227 v227ffff. V228 v228ffff. V229 v229ffff.
         V230 v230ffff. V231 v231ffff. V232 v232ffff.
         V233 v233ffff. V234 v234ffff. V235 v235ffff.
         V236 v236ffff. V237 v237ffff. V238 v238ffff.
         V239 v239ffff. V240 v240ffff. V241 v241ffff.
         V242 v242ffff. V243 v243ffff. V244 v244ffff.
         V245 v245ffff. V246 v246ffff. V247 v247ffff.
         V248 v248ffff. V249 v249ffff. V250 v250ffff.
         V251 v251ffff. V252 v252ffff. V253 v253ffff.
         V254 v254ffff. V255 v255ffff. V256 v256ffff.
         V258 v258ffff. V259 v259ffff. V260 v260ffff.
         V261 v261ffff. V262 v262ffff. V263 v263ffff.
         V264 v264ffff. V265 v265ffff. V266 v266ffff.
         V267 v267ffff. V268 v268ffff. V269 v269ffff.
         V270 v270ffff. V271 v271ffff. V272 v272ffff.
         V273 v273ffff. V274 v274ffff. V275 v275ffff.
         V276 v276ffff. V277 v277ffff. V278 v278ffff.
         V279 v279ffff. V280 v280ffff. V281 v281ffff.
         V282 v282ffff. V283 v283ffff. V284 v284ffff.
         V285 v285ffff. V286 v286ffff. V287 v287ffff.
         V288 v288ffff. V289 v289ffff. V290 v290ffff.
         V291 v291ffff. V292 v292ffff. V293 v293ffff.
         V294 v294ffff. V295 v295ffff. V296 v296ffff.
         V297 v297ffff. V298 v298ffff. V299 v299ffff.
         V300 v300ffff. V301 v301ffff. V302 v302ffff.
         V303 v303ffff. V304 v304ffff. V305 v305ffff.
         V306 v306ffff. V307 v307ffff. V308 v308ffff.
         V309 v309ffff. V310 v310ffff. V311 v311ffff.
         V312 v312ffff. V313 v313ffff. V314 v314ffff.
         V315 v315ffff. V316 v316ffff. V317 v317ffff.
         V318 v318ffff. V319 v319ffff. V320 v320ffff.
         V321 v321ffff. V322 v322ffff. V323 v323ffff.
         V324 v324ffff. V325 v325ffff. V326 v326ffff.
         V327 v327ffff. V328 v328ffff. V329 v329ffff.
         V330 v330ffff. V331 v331ffff. V332 v332ffff.
         V333 v333ffff. V334 v334ffff. V335 v335ffff.
         V336 v336ffff. V337 v337ffff. V338 v338ffff.
         V339 v339ffff. V340 v340ffff. V341 v341ffff.
         V342 v342ffff. V343 v343ffff. V344 v344ffff.
         V345 v345ffff. V346 v346ffff. V347 v347ffff.
         V348 v348ffff. V349 v349ffff. V350 v350ffff.
         V351 v351ffff. V352 v352ffff. V353 v353ffff.
         V354 v354ffff. V355 v355ffff. V356 v356ffff.
         V357 v357ffff. V358 v358ffff. V359 v359ffff.
         V360 v360ffff. V361 v361ffff. V362 v362ffff.
         V363 v363ffff. V364 v364ffff. V365 v365ffff.
         V366 v366ffff. V367 v367ffff. V368 v368ffff.
         V369 v369ffff. V370 v370ffff. V371 v371ffff.
         V372 v372ffff. V373 v373ffff. V374 v374ffff.
         V375 v375ffff. V376 v376ffff. V377 v377ffff.
         V378 v378ffff. V379 v379ffff. V380 v380ffff.
         V381 v381ffff. V382 v382ffff. V384 v384ffff.
         V386 v386ffff. V388 v388ffff. V390 v390ffff.
         V392 v392ffff. V394 v394ffff. V396 v396ffff.
         V398 v398ffff. V400 v400ffff. V402 v402ffff.
         V404 v404ffff. V406 v406ffff. V408 v408ffff.
         V410 v410ffff. V412 v412ffff. V414 v414ffff.
         V416 v416ffff. V418 v418ffff. V420 v420ffff.
         V422 v422ffff. V424 v424ffff. V426 v426ffff.
         V428 v428ffff. V430 v430ffff. V432 v432ffff.
         V434 v434ffff. V436 v436ffff. V438 v438ffff.
         V440 v440ffff. V442 v442ffff. V444 v444ffff.
         V446 v446ffff. V448 v448ffff. V450 v450ffff.
         V452 v452ffff. V454 v454ffff. V456 v456ffff.
         V458 v458ffff. V460 v460ffff. V462 v462ffff.
         V464 v464ffff. V466 v466ffff. V468 v468ffff.
         V470 v470ffff. V472 v472ffff. V473 v473ffff.
         V474 v474ffff. V475 v475ffff. V476 v476ffff.
         V477 v477ffff. V478 v478ffff. V479 v479ffff.
         V480 v480ffff. V481 v481ffff. V482 v482ffff.
         V483 v483ffff. V484 v484ffff. V485 v485ffff.
         V486 v486ffff. V487 v487ffff. V488 v488ffff.
         V489 v489ffff. V490 v490ffff. V491 v491ffff.
         V492 v492ffff. V493 v493ffff. V494 v494ffff.
         V495 v495ffff. V496 v496ffff. V497 v497ffff.
         V498 v498ffff. V499 v499ffff. V500 v500ffff.
         V501 v501ffff. V502 v502ffff. V503 v503ffff.
         V504 v504ffff. V505 v505ffff. V506 v506ffff.
         V507 v507ffff. V508 v508ffff. V509 v509ffff.
         V510 v510ffff. V511 v511ffff. V512 v512ffff.
         V513 v513ffff. V514 v514ffff. V515 v515ffff.
         V516 v516ffff. V517 v517ffff. V518 v518ffff.
         V519 v519ffff. V520 v520ffff. V521 v521ffff.
         V522 v522ffff. V523 v523ffff. V525 v525ffff.
         V526 v526ffff. V527 v527ffff. V529 v529ffff.
         V530 v530ffff. V531 v531ffff. V533 v533ffff.
         V534 v534ffff. V535 v535ffff. V537 v537ffff.
         V538 v538ffff. V539 v539ffff. V540 v540ffff.
         V541 v541ffff. V542 v542ffff. V543 v543ffff.
         V544 v544ffff. V545 v545ffff. V546 v546ffff.
         V547 v547ffff. V548 v548ffff. V549 v549ffff.
         V550 v550ffff. V551 v551ffff. V552 v552ffff.
         V553 v553ffff. V554 v554ffff. V555 v555ffff.
         V556 v556ffff. V557 v557ffff. V558 v558ffff.
         V559 v559ffff. V560 v560ffff. V561 v561ffff.
         V562 v562ffff. V563 v563ffff. V564 v564ffff.
         V565 v565ffff. V566 v566ffff. V568 v568ffff.
         V569 v569ffff. V570 v570ffff. V571 v571ffff.
         V572 v572ffff. V573 v573ffff. V575 v575ffff.
         V576 v576ffff. V577 v577ffff. V578 v578ffff.
         V579 v579ffff. V580 v580ffff. V582 v582ffff.
         V583 v583ffff. V584 v584ffff. V585 v585ffff.
         V586 v586ffff. V587 v587ffff. V588 v588ffff.
         V590 v590ffff. V591 v591ffff. V592 v592ffff.
         V593 v593ffff. V594 v594ffff. V595 v595ffff.
         V596 v596ffff. V597 v597ffff. V598 v598ffff.
         V600 v600ffff. V601 v601ffff. V602 v602ffff.
         V603 v603ffff. V604 v604ffff. V605 v605ffff.
         V606 v606ffff. V607 v607ffff. V608 v608ffff.
         V609 v609ffff. V610 v610ffff. V611 v611ffff.
         V612 v612ffff. V613 v613ffff. V614 v614ffff.
         V615 v615ffff. V616 v616ffff. V617 v617ffff.
         V618 v618ffff. V619 v619ffff. V620 v620ffff.
         V621 v621ffff. V622 v622ffff. V623 v623ffff.
         V624 v624ffff. V625 v625ffff. V626 v626ffff.
         V627 v627ffff. V628 v628ffff. V629 v629ffff.
         V630 v630ffff. V631 v631ffff. V632 v632ffff.
         V633 v633ffff. V634 v634ffff. V635 v635ffff.
         V636 v636ffff. V637 v637ffff. V638 v638ffff.
         V639 v639ffff. V640 v640ffff. V641 v641ffff.
         V642 v642ffff. V643 v643ffff. V644 v644ffff.
         V645 v645ffff. V646 v646ffff. V647 v647ffff.
         V648 v648ffff. V649 v649ffff. V650 v650ffff.
         V651 v651ffff. V652 v652ffff. V653 v653ffff.
         V654 v654ffff. V655 v655ffff. V656 v656ffff.
         V658 v658ffff. V659 v659ffff. V660 v660ffff.
         V662 v662ffff. V663 v663ffff. V664 v664ffff.
         V665 v665ffff. V666 v666ffff. V669 v669ffff.
         V670 v670ffff. V671 v671ffff. V672 v672ffff.
         V673 v673ffff. V676 v676ffff. V677 v677ffff.
         V678 v678ffff. V679 v679ffff. V680 v680ffff.
         V681 v681ffff. V682 v682ffff. V683 v683ffff.
         V684 v684ffff. V685 v685ffff. V686 v686ffff.
         V687 v687ffff. V688 v688ffff. V689 v689ffff.
         V690 v690ffff. V691 v691ffff. V692 v692ffff.
         V693 v693ffff. V694 v694ffff. V695 v695ffff.
         V696 v696ffff. V697 v697ffff. V698 v698ffff.
         V699 v699ffff. V700 v700ffff. V701 v701ffff.
         V702 v702ffff. V703 v703ffff. V704 v704ffff.
         V705 v705ffff. V706 v706ffff. V707 v707ffff.
         V708 v708ffff. V709 v709ffff. V710 v710ffff.
         V711 v711ffff. V712 v712ffff. V713 v713ffff.
         V714 v714ffff. V715 v715ffff. V716 v716ffff.
         V717 v717ffff. V718 v718ffff. V719 v719ffff.
         V720 v720ffff. V721 v721ffff. V722 v722ffff.
         V723 v723ffff. V724 v724ffff. V725 v725ffff.
         V726 v726ffff. V727 v727ffff. V728 v728ffff.
         V729 v729ffff. V730 v730ffff. V731 v731ffff.
         V732 v732ffff. V733 v733ffff. V734 v734ffff.
         V735 v735ffff. V736 v736ffff. V737 v737ffff.
         V738 v738ffff. V739 v739ffff. V740 v740ffff.
         V741 v741ffff. V742 v742ffff. V744 v744ffff.
         V745 v745ffff. V746 v746ffff. V747 v747ffff.
         V750 v750ffff. V751 v751ffff. V752 v752ffff.
         V753 v753ffff. V754 v754ffff. V755 v755ffff.
         V756 v756ffff. V757 v757ffff. V758 v758ffff.
         V759 v759ffff. V760 v760ffff. V761 v761ffff.
         V762 v762ffff. V763 v763ffff. V764 v764ffff.
         V765 v765ffff. V766 v766ffff. V767 v767ffff.
         V768 v768ffff. V769 v769ffff. V770 v770ffff.
         V771 v771ffff. V772 v772ffff. V773 v773ffff.
         V774 v774ffff. V775 v775ffff. V776 v776ffff.
         V777 v777ffff. V778 v778ffff. V779 v779ffff.
         V780 v780ffff. V781 v781ffff. V782 v782ffff.
         V783 v783ffff. V784 v784ffff. V785 v785ffff.
         V786 v786ffff. V787 v787ffff. V788 v788ffff.
         V789 v789ffff. V790 v790ffff. V791 v791ffff.
         V792 v792ffff. V793 v793ffff. V794 v794ffff.
         V795 v795ffff. V796 v796ffff. V797 v797ffff.
         V798 v798ffff. V799 v799ffff. V800 v800ffff.
         V801 v801ffff. V802 v802ffff. V803 v803ffff.
         V804 v804ffff. V805 v805ffff. V806 v806ffff.
         V807 v807ffff. V808 v808ffff. V809 v809ffff.
         V810 v810ffff. V811 v811ffff. V812 v812ffff.
         V813 v813ffff. V814 v814ffff. V815 v815ffff.
         V816 v816ffff. V817 v817ffff. V818 v818ffff.
         V819 v819ffff. V820 v820ffff. V822 v822ffff.
         V823 v823ffff. V824 v824ffff. V825 v825ffff.
         V826 v826ffff. V827 v827ffff. V828 v828ffff.
         V830 v830ffff. V831 v831ffff. V832 v832ffff.
         V833 v833ffff. V834 v834ffff. V835 v835ffff.
         V836 v836ffff. V837 v837ffff. V838 v838ffff.
         V839 v839ffff. V840 v840ffff. V841 v841ffff.
         V842 v842ffff. V843 v843ffff. V844 v844ffff.
         V845 v845ffff. V846 v846ffff. V847 v847ffff.
         V848 v848ffff. V849 v849ffff. V850 v850ffff.
         V851 v851ffff. V852 v852ffff. V853 v853ffff.
         V854 v854ffff. V855 v855ffff. V857 v857ffff.
         V858 v858ffff. V859 v859ffff. V860 v860ffff.
         V861 v861ffff. V862 v862ffff. V863 v863ffff.
         V864 v864ffff. V865 v865ffff. V867 v867ffff.
         V868 v868ffff. V869 v869ffff. V870 v870ffff.
         V871 v871ffff. V872 v872ffff. V873 v873ffff.
         V874 v874ffff. V875 v875ffff. V876 v876ffff.
         V877 v877ffff. V878 v878ffff. V879 v879ffff.
         V880 v880ffff. V881 v881ffff. V883 v883ffff.
         V884 v884ffff. V885 v885ffff. V886 v886ffff.
         V891 v891ffff. V892 v892ffff. V894 v894ffff.
         V895 v895ffff. V897 v897ffff. V898 v898ffff.
         V900 v900ffff. V901 v901ffff. V903 v903ffff.
         V904 v904ffff. V906 v906ffff. V907 v907ffff.
         V909 v909ffff. V910 v910ffff. V912 v912ffff.
         V913 v913ffff. V915 v915ffff. V916 v916ffff.
         V918 v918ffff. V919 v919ffff. V920 v920ffff.
         V922 v922ffff. V923 v923ffff. V924 v924ffff.
         V925 v925ffff. V926 v926ffff. V927 v927ffff.
         V928 v928ffff. V929 v929ffff. V930 v930ffff.
         V931 v931ffff. V932 v932ffff. V933 v933ffff.
         V934 v934ffff. V935 v935ffff. V936 v936ffff.
         V937 v937ffff. V938 v938ffff. V939 v939ffff.
         V940 v940ffff. V941 v941ffff. V942 v942ffff.
         V943 v943ffff. V944 v944ffff. V945 v945ffff.
         V946 v946ffff. V947 v947ffff. V948 v948ffff.
         V949 v949ffff. V950 v950ffff. V951 v951ffff.
         V952 v952ffff. V953 v953ffff. V954 v954ffff.
         V955 v955ffff. V956 v956ffff. V957 v957ffff.
         V958 v958ffff. V959 v959ffff. V960 v960ffff.
         V961 v961ffff. V962 v962ffff. V972 v972ffff.
         V973 v973ffff. V974 v974ffff. V975 v975ffff.
         V976 v976ffff. V977 v977ffff. V978 v978ffff.
         V979 v979ffff. V980 v980ffff. V981 v981ffff.
         V982 v982ffff. V983 v983ffff. V984 v984ffff.
         V985 v985ffff. V986 v986ffff. V987 v987ffff.
         V988 v988ffff. V989 v989ffff. V990 v990ffff.
         V991 v991ffff. V992 v992ffff. V993 v993ffff.
         V994 v994ffff. V995 v995ffff. V996 v996ffff.
         V997 v997ffff. V998 v998ffff. V999 v999ffff.
         V1000 v1000fff. V1001 v1001fff. V1002 v1002fff.
         V1003 v1003fff. V1004 v1004fff. V1005 v1005fff.
         V1006 v1006fff. V1007 v1007fff. V1008 v1008fff.
         V1009 v1009fff. V1010 v1010fff. V1011 v1011fff.
         V1012 v1012fff. V1013 v1013fff. V1014 v1014fff.
         V1015 v1015fff. V1016 v1016fff. V1017 v1017fff.
         V1018 v1018fff. V1019 v1019fff. V1020 v1020fff.
         V1021 v1021fff. V1022 v1022fff. V1023 v1023fff.
         V1024 v1024fff. V1025 v1025fff. V1026 v1026fff.
         V1027 v1027fff. V1028 v1028fff. V1029 v1029fff.
         V1030 v1030fff. V1031 v1031fff. V1032 v1032fff.
         V1033 v1033fff. V1034 v1034fff. V1035 v1035fff.
         V1036 v1036fff. V1037 v1037fff. V1038 v1038fff.
         V1039 v1039fff. V1040 v1040fff. V1041 v1041fff.
         V1042 v1042fff. V1043 v1043fff. V1044 v1044fff.
         V1045 v1045fff. V1046 v1046fff. V1047 v1047fff.
         V1048 v1048fff. V1049 v1049fff. V1050 v1050fff.
         V1051 v1051fff. V1052 v1052fff. V1053 v1053fff.
         V1054 v1054fff. V1055 v1055fff. V1056 v1056fff.
         V1057 v1057fff. V1058 v1058fff. V1059 v1059fff.
         V1060 v1060fff. V1061 v1061fff. V1062 v1062fff.
         V1063 v1063fff. V1064 v1064fff. V1065 v1065fff.
         V1067 v1067fff. V1068 v1068fff. V1075 v1075fff.
         V1076 v1076fff. V1077 v1077fff. V1084 v1084fff.
         V1085 v1085fff. V1086 v1086fff. V1093 v1093fff.
         V1094 v1094fff. V1095 v1095fff. V1096 v1096fff.
         V1098 v1098fff. V1099 v1099fff. V1101 v1101fff.
         V1103 v1103fff. V1104 v1104fff. V1105 v1105fff.
         V1106 v1106fff. V1108 v1108fff. V1109 v1109fff.
         V1110 v1110fff. V1111 v1111fff. V1112 v1112fff.
         V1113 v1113fff. V1114 v1114fff. V1115 v1115fff.
         V1116 v1116fff. V1117 v1117fff. V1118 v1118fff.
         V1119 v1119fff. V1120 v1120fff. V1121 v1121fff.
         V1122 v1122fff. V1123 v1123fff. V1124 v1124fff.
         V1125 v1125fff. V1126 v1126fff. V1127 v1127fff.
         V1128 v1128fff. V1129 v1129fff. V1130 v1130fff.
         V1131 v1131fff. V1132 v1132fff. V1133 v1133fff.
         V1136 v1136fff. V1137 v1137fff. V1138 v1138fff.
         V1139 v1139fff. V1141 v1141fff. V1142 v1142fff.
         V1143 v1143fff. V1144 v1144fff. V1145 v1145fff.
         V1146 v1146fff. V1147 v1147fff. V1148 v1148fff.
         V1149 v1149fff. V1150 v1150fff. V1151 v1151fff.
         V1152 v1152fff. V1153 v1153fff. V1154 v1154fff.
         V1156 v1156fff. V1157 v1157fff. V1158 v1158fff.
         V1159 v1159fff. V1160 v1160fff. V1161 v1161fff.
         V1162 v1162fff. V1163 v1163fff. V1164 v1164fff.
         V1165 v1165fff. V1166 v1166fff. V1167 v1167fff.
         V1168 v1168fff. V1169 v1169fff. V1173 v1173fff.
         V1174 v1174fff. V1175 v1175fff. V1176 v1176fff.
         V1177 v1177fff. V1178 v1178fff. V1179 v1179fff.
         V1180 v1180fff. V1181 v1181fff. V1182 v1182fff.
         V1183 v1183fff. V1184 v1184fff. V1185 v1185fff.
         V1189 v1189fff. V1190 v1190fff. V1191 v1191fff.
         V1193 v1193fff. V1198 v1198fff. V1199 v1199fff.
         V1200 v1200fff. V1201 v1201fff. V1202 v1202fff.
         V1203 v1203fff. V1204 v1204fff. V1205 v1205fff.
         V1206 v1206fff. V1207 v1207fff. V1208 v1208fff.
         V1209 v1209fff. V1210 v1210fff. V1212 v1212fff.
         V1213 v1213fff. V1214 v1214fff. V1215 v1215fff.
         V1217 v1217fff. V1218 v1218fff. V1219 v1219fff.
         V1220 v1220fff. V1222 v1222fff. V1223 v1223fff.
         V1224 v1224fff. V1225 v1225fff. V1227 v1227fff.
         V1228 v1228fff. V1229 v1229fff. V1231 v1231fff.
         V1232 v1232fff. V1233 v1233fff. V1234 v1234fff.
         V1235 v1235fff. V1236 v1236fff. V1237 v1237fff.
         V1238 v1238fff. V1239 v1239fff. V1240 v1240fff.
         V1241 v1241fff. V1242 v1242fff. V1243 v1243fff.
         V1244 v1244fff. V1245 v1245fff. V1246 v1246fff.
         V1247 v1247fff. V1248 v1248fff. V1249 v1249fff.
         V1250 v1250fff. V1251 v1251fff. V1252 v1252fff.
         V1253 v1253fff. V1254 v1254fff. V1255 v1255fff.
         V1256 v1256fff. V1257 v1257fff. V1258 v1258fff.
         V1259 v1259fff. V1260 v1260fff. V1261 v1261fff.
         V1262 v1262fff. V1263 v1263fff. V1264 v1264fff.
         V1265 v1265fff. V1266 v1266fff. V1267 v1267fff.
         V1268 v1268fff. V1269 v1269fff. V1270 v1270fff.
         V1271 v1271fff. V1272 v1272fff. V1273 v1273fff.
         V1274 v1274fff. V1280 v1280fff. V1281 v1281fff.
         V1282 v1282fff. V1283 v1283fff. V1285 v1285fff.
         V1286 v1286fff. V1287 v1287fff. V1288 v1288fff.
         V1290 v1290fff. V1291 v1291fff. V1292 v1292fff.
         V1293 v1293fff. V1294 v1294fff. V1295 v1295fff.
         V1296 v1296fff. V1297 v1297fff. V1298 v1298fff.
         V1299 v1299fff. V1300 v1300fff. V1301 v1301fff.
         V1302 v1302fff. V1303 v1303fff. V1304 v1304fff.
         V1305 v1305fff. V1306 v1306fff. V1307 v1307fff.
         V1308 v1308fff. V1309 v1309fff. V1310 v1310fff.
         V1311 v1311fff. V1312 v1312fff. V1313 v1313fff.
         V1314 v1314fff. V1315 v1315fff. V1316 v1316fff.
         V1317 v1317fff. V1318 v1318fff. V1319 v1319fff.
         V1320 v1320fff. V1321 v1321fff. V1322 v1322fff.
         V1323 v1323fff. V1324 v1324fff. V1325 v1325fff.
         V1326 v1326fff. V1327 v1327fff. V1328 v1328fff.
         V1329 v1329fff. V1330 v1330fff. V1331 v1331fff.
         V1332 v1332fff. V1333 v1333fff. V1334 v1334fff.
         V1335 v1335fff. V1336 v1336fff. V1337 v1337fff.
         V1338 v1338fff. V1339 v1339fff. V1340 v1340fff.
         V1341 v1341fff. V1342 v1342fff. V1343 v1343fff.
         V1344 v1344fff. V1345 v1345fff. V1346 v1346fff.
         V1347 v1347fff. V1348 v1348fff. V1349 v1349fff.
         V1350 v1350fff. V1351 v1351fff. V1352 v1352fff.
         V1353 v1353fff. V1354 v1354fff. V1355 v1355fff.
         V1356 v1356fff. V1357 v1357fff. V1358 v1358fff.
         V1359 v1359fff. V1360 v1360fff. V1361 v1361fff.
         V1362 v1362fff. V1363 v1363fff. V1364 v1364fff.
         V1365 v1365fff. V1366 v1366fff. V1367 v1367fff.
         V1368 v1368fff. V1369 v1369fff. V1370 v1370fff.
         V1371 v1371fff. V1372 v1372fff. V1375 v1375fff.
         V1376 v1376fff. V1377 v1377fff. V1378 v1378fff.
         V1379 v1379fff. V1380 v1380fff. V1381 v1381fff.
         V1382 v1382fff. V1383 v1383fff. V1384 v1384fff.
         V1385 v1385fff. V1388 v1388fff. V1389 v1389fff.
         V1390 v1390fff. V1391 v1391fff. V1392 v1392fff.
         V1393 v1393fff. V1394 v1394fff. V1395 v1395fff.
         V1396 v1396fff. V1397 v1397fff. V1398 v1398fff.
         V1399 v1399fff. V1400 v1400fff. V1401 v1401fff.
         V1402 v1402fff. V1403 v1403fff. V1404 v1404fff.
         V1405 v1405fff. V1406 v1406fff. V1407 v1407fff.
         V1408 v1408fff. V1409 v1409fff. V1410 v1410fff.
         V1411 v1411fff. V1412 v1412fff. V1413 v1413fff.
         V1414 v1414fff. V1415 v1415fff. V1416 v1416fff.
         V1417 v1417fff. V1418 v1418fff. V1419 v1419fff.
         V1420 v1420fff. V1421 v1421fff. V1422 v1422fff.
         V1423 v1423fff. V1424 v1424fff. V1425 v1425fff.
         V1433 v1433fff. V1434 v1434fff. V1435 v1435fff.
         V1436 v1436fff. V1437 v1437fff. V1438 v1438fff.
         V1439 v1439fff. V1442 v1442fff. V1443 v1443fff.
         V1444 v1444fff. V1446 v1446fff. V1447 v1447fff.
         V1450 v1450fff. V1451 v1451fff. V1452 v1452fff.
         V1453 v1453fff. V1455 v1455fff. V1456 v1456fff.
         V1460 v1460fff. V1461 v1461fff. V1462 v1462fff.
         V1463 v1463fff. V1465 v1465fff. V1466 v1466fff.
         V1467 v1467fff. V1468 v1468fff. V1469 v1469fff.
         V1470 v1470fff. V1471 v1471fff. V1472 v1472fff.
         V1473 v1473fff. V1474 v1474fff. V1475 v1475fff.
         V1476 v1476fff. V1479 v1479fff. V1480 v1480fff.
         V1481 v1481fff. V1482 v1482fff. V1483 v1483fff.
         V1484 v1484fff. V1485 v1485fff. V1486 v1486fff.
         V1487 v1487fff. V1488 v1488fff. V1489 v1489fff.
         V1508 v1508fff.  ;

RUN ;
