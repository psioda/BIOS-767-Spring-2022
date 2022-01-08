/*-------------------------------------------------------------------------
 |                                                                         
 |             SAS SUPPLEMENTAL SYNTAX FILE FOR ICPSR 08375
 |                  NATIONAL YOUTH SURVEY (1976): WAVE 1
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
  VALUE v5ffffff  1='(1) Anglo' 2='(2) Black' 3='(3) Chicano' 4='(4) American Indian'
                  5='(5) Asian' 6='(6) Other' ;
  VALUE v6ffffff  1='(1) Male' 2='(2) Female' ;
  VALUE v7ffffff  1='(1) Single' 2='(2) Married' 3='(3) Divorced' 4='(4) Separated' 5='(5) Other' ;
  VALUE v8ffffff  1='(1) Father' 2='(2) Stepfather' 3='(3) Foster father' 4='(4) Mother'
                  5='(5) Stepmother' 6='(6) Foster mother' 7='(7) Other relative'
                  8='(8) Other' ;
  VALUE v9ffffff  1='(1) 19 or under' 2='(2) 20-29' 3='(3) 30-39' 4='(4) 40-49' 5='(5) 50-59'
                  6='(6) 60-69' 7='(7) 70 or older' ;
  VALUE v10fffff  1='(1) 19 or under' 2='(2) 20-29' 3='(3) 30-39' 4='(4) 40-49' 5='(5) 50-59'
                  6='(6) 60-69' 7='(7) 70 or older' 8='(8) Not applicable' ;
  VALUE v11fffff  1='(1) Post-grad degree' 2='(2) Completed college' 3='(3) Some college'
                  4='(4) High school/GED' 5='(5) Some high school' 6='(6) Grade school'
                  7='(7) Some grade school' ;
  VALUE v12fffff  1='(1) Post-grad degree' 2='(2) Completed college' 3='(3) Some college'
                  4='(4) High school/GED' 5='(5) Some high school' 6='(6) Grade school'
                  7='(7) Some grade school' ;
  VALUE v13fffff  1='(1) Father' 2='(2) Stepfather' 3='(3) Foster father' 4='(4) Mother'
                  5='(5) Stepmother' 6='(6) Foster mother' 7='(7) Other relative'
                  8='(8) Other' 9='(9) No wage earner' ;
  VALUE v14fffff  1='(1) Employed' 2='(2) Unemployed' 3='(3) Retired/disabled'
                  4='(4) Student' 5='(5) Housewife' 6='(6) Other' ;
  VALUE v15fffff  8='(8) Not applicable' 9='(9) Uncodable' ;
  VALUE v17fffff  1='(1) Employed' 2='(2) Unemployed' 3='(3) Retired/disabled'
                  4='(4) Student' 5='(5) Housewife' 6='(6) Other' ;
  VALUE v18fffff  8='(8) Not applicable' 9='(9) Uncodable' ;
  VALUE v19fffff  1='(1) $6,000 or less' 2='(2) $6,001-10,000' 3='(3) $10,001-14,000'
                  4='(4) $14,001-18,000' 5='(5) $18,001-22,000' 6='(6) $22,001-26,000'
                  7='(7) $26,001-30,000' 8='(8) $30,001-34,000' 9='(9) $34,001-38,000'
                  10='(10) $38,001 or more' ;
  VALUE v20fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v21fffff  9='(9) 9 youth or more' ;
  VALUE v22fffff  0='(0) None' ;
  VALUE v23fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v24fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v25fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v26fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v27fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v28fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v29fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v30fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v31fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v32fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v33fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v34fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v35fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v36fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v38fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v40fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v41fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v42fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v43fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v44fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v45fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v46fffff  1='(1) Single fam house' 2='(2) Multiple fam house'
                  3='(3) Apt w/priv bath' 4='(4) Apt w/shared bath'
                  5='(5) Mobile trail/home' 6='(6) Hotel/motel' 7='(7) Other' ;
  VALUE v47fffff  1='(1) Less than 1 yr' 2='(2) 1-2 years' 3='(3) 3-4 years'
                  4='(4) More than 4 yrs' ;
  VALUE v48fffff  1='(1) Not a prob' 2='(2) Somewhat of prob' 3='(3) Big prob' ;
  VALUE v49fffff  1='(1) Not a prob' 2='(2) Somewhat of prob' 3='(3) Big prob' ;
  VALUE v50fffff  1='(1) Not a prob' 2='(2) Somewhat of prob' 3='(3) Big prob' ;
  VALUE v51fffff  1='(1) Not a prob' 2='(2) Somewhat of prob' 3='(3) Big prob' ;
  VALUE v52fffff  1='(1) Not a prob' 2='(2) Somewhat of prob' 3='(3) Big prob' ;
  VALUE v53fffff  1='(1) Not a prob' 2='(2) Somewhat of prob' 3='(3) Big prob' ;
  VALUE v54fffff  1='(1) Not a prob' 2='(2) Somewhat of prob' 3='(3) Big prob' ;
  VALUE v55fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v56fffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v57fffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v58fffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v59fffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v60fffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v61fffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v62fffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v63fffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v64fffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v67fffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v68fffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v69fffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v70fffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v71fffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v72fffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v73fffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v74fffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v75fffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v76fffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v77fffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v78fffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v79fffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v80fffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v81fffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v82fffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v83fffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v84fffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v85fffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v86fffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v87fffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v88fffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v89fffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v90fffff  1='(1) No' 2='(2) Yes' 3='(3) Don''t know' ;
  VALUE v91fffff  1='(1) None of them' 2='(2) Few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v92fffff  1='(1) None of them' 2='(2) Few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v93fffff  1='(1) None of them' 2='(2) Few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v94fffff  1='(1) None of them' 2='(2) Few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v95fffff  1='(1) None of them' 2='(2) Few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v96fffff  1='(1) None of them' 2='(2) Few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v97fffff  1='(1) None of them' 2='(2) Few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v98fffff  1='(1) None of them' 2='(2) Few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v99fffff  1='(1) None of them' 2='(2) Few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v100ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v101ffff  1='(1) Not wrong at all' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE v102ffff  1='(1) Not wrong at all' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE v103ffff  1='(1) Not wrong at all' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE v104ffff  1='(1) Not wrong at all' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE v105ffff  1='(1) Not wrong at all' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE v106ffff  1='(1) Not wrong at all' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE v107ffff  1='(1) Not wrong at all' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE v108ffff  1='(1) Not wrong at all' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE v109ffff  1='(1) Not wrong at all' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE v110ffff  1='(1) Not wrong at all' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE v111ffff  1='(1) Not wrong at all' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE v112ffff  1='(1) Not wrong at all' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE v113ffff  1='(1) Not wrong at all' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE v114ffff  1='(1) Not wrong at all' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE v115ffff  1='(1) Not wrong at all' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE v116ffff  1='(1) Not wrong at all' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE v117ffff  1='(1) Not wrong at all' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE v118ffff  1='(1) Not wrong at all' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE v119ffff  1='(1) Not wrong at all' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE v120ffff  1='(1) Not wrong at all' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE v121ffff  1='(1) Definitely no' 2='(2) Probably no' 3='(3) Probably yes'
                  4='(4) Definitely yes' ;
  VALUE v122ffff  1='(1) Definitely no' 2='(2) Probably no' 3='(3) Probably yes'
                  4='(4) Definitely yes' ;
  VALUE v123ffff  1='(1) Definitely no' 2='(2) Probably no' 3='(3) Probably yes'
                  4='(4) Definitely yes' ;
  VALUE v124ffff  1='(1) Definitely no' 2='(2) Probably no' 3='(3) Probably yes'
                  4='(4) Definitely yes' ;
  VALUE v125ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v126ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v127ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v128ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v129ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v130ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v131ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v132ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v133ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v134ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v135ffff  1='(1) Non-inductive' 2='(2) Inductive' ;
  VALUE v136ffff  1='(1) Non-inductive' 2='(2) Inductive' ;
  VALUE v137ffff  1='(1) Non-inductive' 2='(2) Inductive' ;
  VALUE v138ffff  1='(1) Non-inductive' 2='(2) Inductive' ;
  VALUE v139ffff  1='(1) Non-inductive' 2='(2) Inductive' ;
  VALUE v140ffff  1='(1) Non-inductive' 2='(2) Inductive' ;
  VALUE v141ffff  1='(1) Non-inductive' 2='(2) Semi-inductive' 3='(3) Inductive' ;
  VALUE v142ffff  1='(1) Non-inductive' 2='(2) Semi-inductive' 3='(3) Inductive' ;
  VALUE v143ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v144ffff  1='(1) Income question' ;
  VALUE v145ffff  1='(1) Sexual questions' ;
  VALUE v149ffff  1='(1) Q. about time w/kids' ;
  VALUE v150ffff  1='(1) Q. about discipline' ;
  VALUE v151ffff  1='(1) Q. about affection' ;
  VALUE v152ffff  1='(1) Q. about communicating' ;
  VALUE v153ffff  1='(1) Q. about religion' ;
  VALUE v154ffff  1='(1) Other' ;
  VALUE v155ffff  1='(1) Good' 2='(2) Poor' ;
  VALUE v156ffff  1='(1) Not at all anxious' 2='(2) Somewhat anxious'
                  3='(3) Very anxious' ;
  VALUE v157ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v158ffff  1='(1) Very low' 2='(2) Below average' 3='(3) Average'
                  4='(4) Above average' 5='(5) Very high' ;
  VALUE v159ffff  1='(1) Diff w/language' ;
  VALUE v160ffff  1='(1) Diff w/ questions' ;
  VALUE v161ffff  1='(1) Interruptions' ;
  VALUE v162ffff  1='(1) Temp breakoff' ;
  VALUE v163ffff  1='(1) Breakoff' ;
  VALUE v164ffff  1='(1) Other' ;
  VALUE v165ffff  1='(1) Relaxed' 2='(2) Tense' 3='(3) Other' ;
  VALUE v166ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v167ffff  1='(1) Male' 2='(2) Female' ;
  VALUE v168ffff  1='(1) Anglo' 2='(2) Black' 3='(3) Chicano' 4='(4) American Indian'
                  5='(5) Asian' 6='(6) Other' ;
  VALUE v170ffff  17='(17) not in school' 18='(18) other' ;
  VALUE v171ffff  1='(1) Mostly F''s' 2='(2) Mostly D''s' 3='(3) Mostly C''s'
                  4='(4) Mostly B''s' 5='(5) Mostly A''s' ;
  VALUE v172ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v173ffff  1='(1) Not important' 2='(2) Not too important'
                  3='(3) Somewhat important' 4='(4) Pretty important'
                  5='(5) Very important' ;
  VALUE v174ffff  0='(0) Less than once wk' ;
  VALUE v175ffff  0='(0) Less than once a wk' ;
  VALUE v176ffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v177ffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v178ffff  1='(1) Not important' 2='(2) Not too important'
                  3='(3) Somewhat important' 4='(4) Pretty important'
                  5='(5) Very important' ;
  VALUE v179ffff  0='(0) Less than once a wk' ;
  VALUE v180ffff  1='(1) Not important' 2='(2) Not too important'
                  3='(3) Somewhat important' 4='(4) Pretty important'
                  5='(5) Very important' ;
  VALUE v181ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v182ffff  0='(0) Less than once a wk' ;
  VALUE v183ffff  0='(0) Less than once a wk' ;
  VALUE v184ffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v185ffff  1='(1) Not important' 2='(2) Not too important'
                  3='(3) Somewhat important' 4='(4) Pretty important'
                  5='(5) Very important' ;
  VALUE v186ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v187ffff  1='(1) Not important' 2='(2) Not too important'
                  3='(3) Somewhat important' 4='(4) Pretty important'
                  5='(5) Very important' ;
  VALUE v188ffff  0='(0) Less than once a wk' ;
  VALUE v189ffff  0='(0) Less than once a wk' ;
  VALUE v190ffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v191ffff  1='(1) Not important' 2='(2) Not too important'
                  3='(3) Somewhat important' 4='(4) Pretty important'
                  5='(5) Very important' ;
  VALUE v192ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v193ffff  1='(1) Not important' 2='(2) Not too important'
                  3='(3) Somewhat important' 4='(4) Pretty important'
                  5='(5) Very important' ;
  VALUE v194ffff  0='(0) Less than once a wk' ;
  VALUE v195ffff  0='(0) Less than once a wk' ;
  VALUE v196ffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v197ffff  1='(1) Athlete' 2='(2) Activities member' 3='(3) Social type'
                  4='(4) Good student' 5='(5) Average student' 6='(6) None of the above'
                  7='(7) Other' ;
  VALUE v198ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v199ffff  1='(1) Not important' 2='(2) Not too important'
                  3='(3) Somewhat important' 4='(4) Pretty important'
                  5='(5) Very important' ;
  VALUE v200ffff  0='(0) Less than once a wk' ;
  VALUE v201ffff  0='(0) Less than once a wk' ;
  VALUE v202ffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v203ffff  1='(1) Not important' 2='(2) Not too important'
                  3='(3) Somewhat important' 4='(4) Pretty important'
                  5='(5) Very important' ;
  VALUE v204ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v205ffff  1='(1) Not important' 2='(2) Not too important'
                  3='(3) Somewhat important' 4='(4) Pretty important'
                  5='(5) Very important' ;
  VALUE v206ffff  1='(1) Part-time' 2='(2) Full-time' ;
  VALUE v207ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v208ffff  0='(0) Less than once a wk' ;
  VALUE v209ffff  0='(0) Less than once a wk' ;
  VALUE v210ffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v211ffff  1='(1) Not important at All"' 2='(2) Not too Important'
                  3='(3) Somewhat Important' 4='(4) Pretty Important'
                  5='(5) Very Important' ;
  VALUE v212ffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v213ffff  1='(1) Almost never' 2='(2) Sometimes' 3='(3) Often' 4='(4) Almost always' ;
  VALUE v214ffff  1='(1) Almost never' 2='(2) Sometimes' 3='(3) Often' 4='(4) Almost always' ;
  VALUE v215ffff  1='(1) Almost never' 2='(2) Sometimes' 3='(3) Often' 4='(4) Almost always' ;
  VALUE v217ffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v218ffff  1='(1) Not well' 3='(3) O.K.' 5='(5) Very well' ;
  VALUE v219ffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v220ffff  1='(1) Not well' 3='(3) O.K.' 5='(5) Very well' ;
  VALUE v221ffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v222ffff  1='(1) Not well' 3='(3) O.K.' 5='(5) Very well' ;
  VALUE v223ffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v224ffff  1='(1) Not well' 3='(3) O.K.' 5='(5) Very well' ;
  VALUE v225ffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v226ffff  1='(1) Not well' 3='(3) O.K.' 5='(5) Very well' ;
  VALUE v227ffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v228ffff  1='(1) Not well' 3='(3) O.K.' 5='(5) Very well' ;
  VALUE v229ffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v230ffff  1='(1) Not well' 3='(3) O.K.' 5='(5) Very well' ;
  VALUE v231ffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v232ffff  1='(1) Not well' 3='(3) O.K.' 5='(5) Very well' ;
  VALUE v233ffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v234ffff  1='(1) Not well' 3='(3) O.K.' 5='(5) Very well' ;
  VALUE v235ffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v236ffff  1='(1) Not well' 3='(3) O.K.' 5='(5) Very well' ;
  VALUE v237ffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v238ffff  1='(1) Not well' 3='(3) O.K.' 5='(5) Very well' ;
  VALUE v239ffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v240ffff  1='(1) Not well' 3='(3) O.K.' 5='(5) Very well' ;
  VALUE v241ffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v242ffff  1='(1) Not well' 3='(3) O.K.' 5='(5) Very well' ;
  VALUE v243ffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v244ffff  1='(1) Not well' 3='(3) O.K.' 5='(5) Very well' ;
  VALUE v245ffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v246ffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v247ffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v248ffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v249ffff  1='(1) Poor' 2='(2) Fair' 3='(3) Good' ;
  VALUE v250ffff  1='(1) Poor' 2='(2) Fair' 3='(3) Good' ;
  VALUE v251ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v252ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v253ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v254ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v255ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v256ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v257ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v258ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v259ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v260ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v261ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v262ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v263ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v264ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v265ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v266ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v267ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v268ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v269ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v270ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v271ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v272ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v273ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v274ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v275ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v276ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v277ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v278ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v279ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v280ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v281ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v282ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
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
  VALUE v315ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
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
  VALUE v343ffff  1='(1) Almost never' 2='(2) Sometimes' 3='(3) Often' 4='(4) Almost always' ;
  VALUE v344ffff  1='(1) Almost never' 2='(2) Sometimes' 3='(3) Often' 4='(4) Almost always' ;
  VALUE v345ffff  1='(1) Almost never' 2='(2) Sometimes' 3='(3) Often' 4='(4) Almost always' ;
  VALUE v346ffff  1='(1) Almost never' 2='(2) Sometimes' 3='(3) Often' 4='(4) Almost always' ;
  VALUE v347ffff  1='(1) Almost never' 2='(2) Sometimes' 3='(3) Often' 4='(4) Almost always' ;
  VALUE v348ffff  1='(1) Almost never' 2='(2) Sometimes' 3='(3) Often' 4='(4) Almost always' ;
  VALUE v349ffff  1='(1) Almost never' 2='(2) Sometimes' 3='(3) Often' 4='(4) Almost always' ;
  VALUE v350ffff  1='(1) Almost never' 2='(2) Sometimes' 3='(3) Often' 4='(4) Almost always' ;
  VALUE v351ffff  1='(1) Almost never' 2='(2) Sometimes' 3='(3) Often' 4='(4) Almost always' ;
  VALUE v352ffff  1='(1) Almost never' 2='(2) Sometimes' 3='(3) Often' 4='(4) Almost always' ;
  VALUE v353ffff  1='(1) Almost never' 2='(2) Sometimes' 3='(3) Often' 4='(4) Almost always' ;
  VALUE v354ffff  1='(1) Almost never' 2='(2) Sometimes' 3='(3) Often' 4='(4) Almost always' ;
  VALUE v355ffff  1='(1) Mother' 2='(2) Father' 3='(3) Both the same' ;
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
  VALUE v365ffff  1='(1) None of them' 2='(2) Very few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v366ffff  1='(1) None of them' 2='(2) Very few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v367ffff  1='(1) None of them' 2='(2) Very few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v368ffff  1='(1) None of them' 2='(2) Very few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
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
  VALUE v375ffff  1='(1) No' 2='(2) Don''t know' 3='(3) Yes' ;
  VALUE v376ffff  1='(1) No' 2='(2) Don''t know' 3='(3) Yes' ;
  VALUE v377ffff  1='(1) No' 2='(2) Don''t know' 3='(3) Yes' ;
  VALUE v379ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v381ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v383ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v385ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v387ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v389ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v391ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v393ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v395ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v397ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v399ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v401ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v403ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v405ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v407ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v409ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v411ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v413ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v415ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v417ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v419ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v421ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v423ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v425ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v427ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v429ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v431ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v433ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v435ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v437ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v439ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v441ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v443ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v445ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v447ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v449ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v451ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v453ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v455ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v457ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v459ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v461ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v463ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v465ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v467ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v468ffff  0='(0) None' ;
  VALUE v469ffff  0='(0) None' ;
  VALUE v470ffff  0='(0) None' ;
  VALUE v471ffff  0='(0) None' ;
  VALUE v472ffff  0='(0) None' ;
  VALUE v473ffff  0='(0) None' ;
  VALUE v474ffff  0='(0) None' ;
  VALUE v475ffff  0='(0) None' ;
  VALUE v476ffff  0='(0) None' ;
  VALUE v477ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v478ffff  1='(1) less than 1 yr ago' 2='(2) 1-2 yrs ago'
                  3='(3) More than 2 yrs ago' ;
  VALUE v479ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v480ffff  1='(1) less than 1 yr ago' 2='(2) 1-2 years ago'
                  3='(3) More than 2 yrs ago' ;
  VALUE v481ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v482ffff  1='(1) less than 1 yr ago' 2='(2) 1-2 yrs ago'
                  3='(3) More than 2 yrs ago' ;
  VALUE v483ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v484ffff  1='(1) less than 1 yr ago' 2='(2) 1-2 yrs ago'
                  3='(3) More than 2 yrs ago' ;
  VALUE v485ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v486ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v487ffff  1='(1) less than 1 yr ago' 2='(2) 1-2 yrs ago'
                  3='(3) More than 2 yrs ago' ;
  VALUE v488ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v489ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v490ffff  1='(1) less than 1 yr ago' 2='(2) 1-2 yrs ago'
                  3='(3) More than 2 yrs ago' ;
  VALUE v491ffff  1='(1) Sniffing' 2='(2) Injection' 3='(3) Combination of 1 & 2'
                  4='(4) Other' ;
  VALUE v492ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a month' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2 to 3 times/wk' 8='(8) Once a day' 9='(9) 2 to 3 times/day' ;
  VALUE v493ffff  1='(1) less than 1 yr ago' 2='(2) 1-2 yrs ago'
                  3='(3) More than 2 yrs ago' ;
  VALUE v494ffff  1='(1) Sniffing' 2='(2) Injection' 3='(3) Combination of 1 & 2'
                  4='(4) Other' ;
  VALUE v495ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v496ffff  1='(1) Drugs' ;
  VALUE v497ffff  1='(1) Sex' ;
  VALUE v501ffff  1='(1) Friends' ;
  VALUE v502ffff  1='(1) Drugs/alcohol' ;
  VALUE v503ffff  1='(1) Family' ;
  VALUE v504ffff  1='(1) Activities' ;
  VALUE v505ffff  1='(1) School' ;
  VALUE v506ffff  1='(1) Other' ;
  VALUE v507ffff  1='(1) Good understanding' 2='(2) Poor understanding' ;
  VALUE v508ffff  1='(1) Not at all anxious' 2='(2) Somewhat anxious'
                  3='(3) Very anxious' ;
  VALUE v509ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v510ffff  1='(1) Very low' 2='(2) Below average' 3='(3) Average'
                  4='(4) Above average' 5='(5) Very high' ;
  VALUE v511ffff  1='(1) Diff w/language' ;
  VALUE v512ffff  1='(1) Diff w/questions' ;
  VALUE v513ffff  1='(1) Interruptions' ;
  VALUE v514ffff  1='(1) Temp breakoff' ;
  VALUE v515ffff  1='(1) Breakoff' ;
  VALUE v516ffff  1='(1) Other' ;
  VALUE v517ffff  1='(1) Relaxed' 2='(2) Tense' 3='(3) Other' ;
  VALUE v518ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v519ffff  0='(0) Does not live in SMSA' 1='(1) Lives in SMSA' ;
  VALUE v520ffff  1='(1) City of SMSA' 2='(2) City of urban area'
                  3='(3) City of SMSA urban area' 4='(4) Other inc place'
                  5='(5) Not incorporated' ;
  VALUE v521ffff  0='(0) Under 200' 1='(1) 200-499' 2='(2) 500-999' 3='(3) 1,000-1,499'
                  4='(4) 1,500-1,999' 5='(5) 2,000-2,499' 6='(6) 2,500-4,999'
                  7='(7) 5,000-9,999' 8='(8) 10,000-19,999' 9='(9) 20,000-24,999'
                  10='(10) 25,000-49,999' 11='(11) 50,000-99,999' 12='(12) 100,000-249,999'
                  13='(13) 250,000-499,999' 14='(14) 500,000-999,999'
                  15='(15) 1,000,000 or more' ;
  VALUE v522ffff  1='(1) Urban' 2='(2) Suburban' 3='(3) Rural' ;
RUN;

* SAS DATA STEP;
DATA;
SET SAS-dataset ;


* USER-DEFINED MISSING VALUES RECODE TO SAS SYSMIS;

/*
   IF (V5 = 9) THEN V5 = .;
   IF (V6 = 9) THEN V6 = .;
   IF (V7 = 9) THEN V7 = .;
   IF (V8 = 9) THEN V8 = .;
   IF (V9 = 9) THEN V9 = .;
   IF (V10 = 8) THEN V10 = .;
   IF (V11 = 9) THEN V11 = .;
   IF (V12 = 9) THEN V12 = .;
   IF (V14 = 9) THEN V14 = .;
   IF (V15 = 8) THEN V15 = .;
   IF (V16 = 99) THEN V16 = .;
   IF (V17 = 9) THEN V17 = .;
   IF (V18 = 8) THEN V18 = .;
   IF (V19 = 99) THEN V19 = .;
   IF (V20 = 9) THEN V20 = .;
   IF (V22 = 9) THEN V22 = .;
   IF (V23 = 9) THEN V23 = .;
   IF (V24 = 9) THEN V24 = .;
   IF (V25 = 9) THEN V25 = .;
   IF (V26 = 9) THEN V26 = .;
   IF (V27 = 9) THEN V27 = .;
   IF (V28 = 9) THEN V28 = .;
   IF (V29 = 9) THEN V29 = .;
   IF (V30 = 9) THEN V30 = .;
   IF (V31 = 9) THEN V31 = .;
   IF (V32 = 9) THEN V32 = .;
   IF (V33 = 9) THEN V33 = .;
   IF (V34 = 9) THEN V34 = .;
   IF (V35 = 9) THEN V35 = .;
   IF (V36 = 9) THEN V36 = .;
   IF (V37 = 99) THEN V37 = .;
   IF (V38 = 9) THEN V38 = .;
   IF (V39 = 99) THEN V39 = .;
   IF (V40 = 9) THEN V40 = .;
   IF (V41 = 9) THEN V41 = .;
   IF (V42 = 9) THEN V42 = .;
   IF (V43 = 9) THEN V43 = .;
   IF (V44 = 9) THEN V44 = .;
   IF (V45 = 9) THEN V45 = .;
   IF (V46 = 9) THEN V46 = .;
   IF (V47 = 9) THEN V47 = .;
   IF (V48 = 9) THEN V48 = .;
   IF (V49 = 9) THEN V49 = .;
   IF (V50 = 9) THEN V50 = .;
   IF (V51 = 9) THEN V51 = .;
   IF (V52 = 9) THEN V52 = .;
   IF (V53 = 9) THEN V53 = .;
   IF (V54 = 9) THEN V54 = .;
   IF (V55 = 9) THEN V55 = .;
   IF (V56 = 9) THEN V56 = .;
   IF (V57 = 9) THEN V57 = .;
   IF (V58 = 9) THEN V58 = .;
   IF (V59 = 9) THEN V59 = .;
   IF (V60 = 9) THEN V60 = .;
   IF (V61 = 9) THEN V61 = .;
   IF (V62 = 9) THEN V62 = .;
   IF (V63 = 9) THEN V63 = .;
   IF (V64 = 9) THEN V64 = .;
   IF (V65 = 9999) THEN V65 = .;
   IF (V66 = 99) THEN V66 = .;
   IF (V67 = 9) THEN V67 = .;
   IF (V68 = 9) THEN V68 = .;
   IF (V69 = 9) THEN V69 = .;
   IF (V70 = 9) THEN V70 = .;
   IF (V71 = 9) THEN V71 = .;
   IF (V72 = 9) THEN V72 = .;
   IF (V73 = 9) THEN V73 = .;
   IF (V74 = 9) THEN V74 = .;
   IF (V75 = 9) THEN V75 = .;
   IF (V76 = 9) THEN V76 = .;
   IF (V77 = 9) THEN V77 = .;
   IF (V78 = 9) THEN V78 = .;
   IF (V79 = 9) THEN V79 = .;
   IF (V80 = 9) THEN V80 = .;
   IF (V81 = 9) THEN V81 = .;
   IF (V82 = 9) THEN V82 = .;
   IF (V83 = 9) THEN V83 = .;
   IF (V84 = 9) THEN V84 = .;
   IF (V85 = 9) THEN V85 = .;
   IF (V86 = 9) THEN V86 = .;
   IF (V87 = 9) THEN V87 = .;
   IF (V88 = 9) THEN V88 = .;
   IF (V89 = 9) THEN V89 = .;
   IF (V90 = 9) THEN V90 = .;
   IF (V91 = 9) THEN V91 = .;
   IF (V92 = 9) THEN V92 = .;
   IF (V93 = 9) THEN V93 = .;
   IF (V94 = 9) THEN V94 = .;
   IF (V95 = 9) THEN V95 = .;
   IF (V96 = 9) THEN V96 = .;
   IF (V97 = 9) THEN V97 = .;
   IF (V98 = 9) THEN V98 = .;
   IF (V99 = 9) THEN V99 = .;
   IF (V100 = 9) THEN V100 = .;
   IF (V101 = 9) THEN V101 = .;
   IF (V102 = 9) THEN V102 = .;
   IF (V103 = 9) THEN V103 = .;
   IF (V104 = 9) THEN V104 = .;
   IF (V105 = 9) THEN V105 = .;
   IF (V106 = 9) THEN V106 = .;
   IF (V107 = 9) THEN V107 = .;
   IF (V108 = 9) THEN V108 = .;
   IF (V109 = 9) THEN V109 = .;
   IF (V110 = 9) THEN V110 = .;
   IF (V111 = 9) THEN V111 = .;
   IF (V112 = 9) THEN V112 = .;
   IF (V113 = 9) THEN V113 = .;
   IF (V114 = 9) THEN V114 = .;
   IF (V115 = 9) THEN V115 = .;
   IF (V116 = 9) THEN V116 = .;
   IF (V117 = 9) THEN V117 = .;
   IF (V118 = 9) THEN V118 = .;
   IF (V119 = 9) THEN V119 = .;
   IF (V120 = 9) THEN V120 = .;
   IF (V121 = 9) THEN V121 = .;
   IF (V122 = 9) THEN V122 = .;
   IF (V123 = 9) THEN V123 = .;
   IF (V124 = 9) THEN V124 = .;
   IF (V125 = 9) THEN V125 = .;
   IF (V126 = 9) THEN V126 = .;
   IF (V127 = 9) THEN V127 = .;
   IF (V128 = 9) THEN V128 = .;
   IF (V129 = 9) THEN V129 = .;
   IF (V130 = 9) THEN V130 = .;
   IF (V131 = 9) THEN V131 = .;
   IF (V132 = 9) THEN V132 = .;
   IF (V133 = 9) THEN V133 = .;
   IF (V134 = 9) THEN V134 = .;
   IF (V135 = 9) THEN V135 = .;
   IF (V136 = 9) THEN V136 = .;
   IF (V137 = 9) THEN V137 = .;
   IF (V138 = 9) THEN V138 = .;
   IF (V139 = 9) THEN V139 = .;
   IF (V140 = 9) THEN V140 = .;
   IF (V141 = 9) THEN V141 = .;
   IF (V142 = 9) THEN V142 = .;
   IF (V143 = 9) THEN V143 = .;
   IF (V144 = 9) THEN V144 = .;
   IF (V145 = 9) THEN V145 = .;
   IF (V146 = 999) THEN V146 = .;
   IF (V147 = 999) THEN V147 = .;
   IF (V148 = 999) THEN V148 = .;
   IF (V149 = 9) THEN V149 = .;
   IF (V150 = 9) THEN V150 = .;
   IF (V151 = 9) THEN V151 = .;
   IF (V152 = 9) THEN V152 = .;
   IF (V153 = 9) THEN V153 = .;
   IF (V154 = 9) THEN V154 = .;
   IF (V155 = 9) THEN V155 = .;
   IF (V156 = 9) THEN V156 = .;
   IF (V157 = 9) THEN V157 = .;
   IF (V158 = 9) THEN V158 = .;
   IF (V159 = 9) THEN V159 = .;
   IF (V160 = 9) THEN V160 = .;
   IF (V161 = 9) THEN V161 = .;
   IF (V162 = 9) THEN V162 = .;
   IF (V163 = 9) THEN V163 = .;
   IF (V164 = 9) THEN V164 = .;
   IF (V165 = 9) THEN V165 = .;
   IF (V166 = 9) THEN V166 = .;
   IF (V167 = 9) THEN V167 = .;
   IF (V169 = 99) THEN V169 = .;
   IF (V170 = 0 OR V170 = 99) THEN V170 = .;
   IF (V171 = 9) THEN V171 = .;
   IF (V172 = 9) THEN V172 = .;
   IF (V173 = 9) THEN V173 = .;
   IF (V174 = 9) THEN V174 = .;
   IF (V175 = 9) THEN V175 = .;
   IF (V176 = 9) THEN V176 = .;
   IF (V177 = 9) THEN V177 = .;
   IF (V178 = 9) THEN V178 = .;
   IF (V179 = 9) THEN V179 = .;
   IF (V180 = 9) THEN V180 = .;
   IF (V181 = 9) THEN V181 = .;
   IF (V182 = 9) THEN V182 = .;
   IF (V183 = 9) THEN V183 = .;
   IF (V184 = 9) THEN V184 = .;
   IF (V185 = 9) THEN V185 = .;
   IF (V186 = 9) THEN V186 = .;
   IF (V187 = 9) THEN V187 = .;
   IF (V188 = 9) THEN V188 = .;
   IF (V189 = 9) THEN V189 = .;
   IF (V190 = 9) THEN V190 = .;
   IF (V191 = 9) THEN V191 = .;
   IF (V192 = 9) THEN V192 = .;
   IF (V193 = 9) THEN V193 = .;
   IF (V194 = 9) THEN V194 = .;
   IF (V195 = 9) THEN V195 = .;
   IF (V196 = 9) THEN V196 = .;
   IF (V198 = 9) THEN V198 = .;
   IF (V199 = 9) THEN V199 = .;
   IF (V200 = 9) THEN V200 = .;
   IF (V201 = 9) THEN V201 = .;
   IF (V202 = 9) THEN V202 = .;
   IF (V203 = 9) THEN V203 = .;
   IF (V204 = 9) THEN V204 = .;
   IF (V205 = 9) THEN V205 = .;
   IF (V206 = 9) THEN V206 = .;
   IF (V207 = 9) THEN V207 = .;
   IF (V208 = 9) THEN V208 = .;
   IF (V209 = 9) THEN V209 = .;
   IF (V210 = 9) THEN V210 = .;
   IF (V211 = 99) THEN V211 = .;
   IF (V212 = 9) THEN V212 = .;
   IF (V213 = 9) THEN V213 = .;
   IF (V214 = 9) THEN V214 = .;
   IF (V215 = 9) THEN V215 = .;
   IF (V216 = 99) THEN V216 = .;
   IF (V217 = 9) THEN V217 = .;
   IF (V218 = 9) THEN V218 = .;
   IF (V219 = 9) THEN V219 = .;
   IF (V220 = 9) THEN V220 = .;
   IF (V221 = 9) THEN V221 = .;
   IF (V222 = 9) THEN V222 = .;
   IF (V223 = 9) THEN V223 = .;
   IF (V224 = 9) THEN V224 = .;
   IF (V225 = 9) THEN V225 = .;
   IF (V226 = 9) THEN V226 = .;
   IF (V227 = 9) THEN V227 = .;
   IF (V228 = 9) THEN V228 = .;
   IF (V229 = 9) THEN V229 = .;
   IF (V230 = 9) THEN V230 = .;
   IF (V231 = 9) THEN V231 = .;
   IF (V232 = 9) THEN V232 = .;
   IF (V233 = 9) THEN V233 = .;
   IF (V234 = 9) THEN V234 = .;
   IF (V235 = 9) THEN V235 = .;
   IF (V236 = 9) THEN V236 = .;
   IF (V237 = 9) THEN V237 = .;
   IF (V238 = 9) THEN V238 = .;
   IF (V239 = 9) THEN V239 = .;
   IF (V240 = 9) THEN V240 = .;
   IF (V241 = 9) THEN V241 = .;
   IF (V242 = 9) THEN V242 = .;
   IF (V243 = 9) THEN V243 = .;
   IF (V244 = 9) THEN V244 = .;
   IF (V245 = 9) THEN V245 = .;
   IF (V246 = 9) THEN V246 = .;
   IF (V247 = 9) THEN V247 = .;
   IF (V248 = 9) THEN V248 = .;
   IF (V249 = 9) THEN V249 = .;
   IF (V250 = 9) THEN V250 = .;
   IF (V251 = 9) THEN V251 = .;
   IF (V252 = 9) THEN V252 = .;
   IF (V253 = 9) THEN V253 = .;
   IF (V254 = 9) THEN V254 = .;
   IF (V255 = 9) THEN V255 = .;
   IF (V256 = 9) THEN V256 = .;
   IF (V257 = 9) THEN V257 = .;
   IF (V258 = 9) THEN V258 = .;
   IF (V259 = 9) THEN V259 = .;
   IF (V260 = 9) THEN V260 = .;
   IF (V261 = 9) THEN V261 = .;
   IF (V262 = 9) THEN V262 = .;
   IF (V263 = 9) THEN V263 = .;
   IF (V264 = 9) THEN V264 = .;
   IF (V265 = 9) THEN V265 = .;
   IF (V266 = 9) THEN V266 = .;
   IF (V267 = 9) THEN V267 = .;
   IF (V268 = 9) THEN V268 = .;
   IF (V269 = 9) THEN V269 = .;
   IF (V270 = 9) THEN V270 = .;
   IF (V271 = 9) THEN V271 = .;
   IF (V272 = 9) THEN V272 = .;
   IF (V273 = 9) THEN V273 = .;
   IF (V274 = 9) THEN V274 = .;
   IF (V275 = 9) THEN V275 = .;
   IF (V276 = 9) THEN V276 = .;
   IF (V277 = 9) THEN V277 = .;
   IF (V278 = 9) THEN V278 = .;
   IF (V279 = 9) THEN V279 = .;
   IF (V280 = 9) THEN V280 = .;
   IF (V281 = 9) THEN V281 = .;
   IF (V282 = 9) THEN V282 = .;
   IF (V283 = 9) THEN V283 = .;
   IF (V284 = 9) THEN V284 = .;
   IF (V285 = 9) THEN V285 = .;
   IF (V286 = 9) THEN V286 = .;
   IF (V287 = 9) THEN V287 = .;
   IF (V288 = 9) THEN V288 = .;
   IF (V289 = 9) THEN V289 = .;
   IF (V290 = 9) THEN V290 = .;
   IF (V291 = 9) THEN V291 = .;
   IF (V292 = 9) THEN V292 = .;
   IF (V293 = 9) THEN V293 = .;
   IF (V294 = 9) THEN V294 = .;
   IF (V295 = 9) THEN V295 = .;
   IF (V296 = 9) THEN V296 = .;
   IF (V297 = 9) THEN V297 = .;
   IF (V298 = 9) THEN V298 = .;
   IF (V299 = 9) THEN V299 = .;
   IF (V300 = 9) THEN V300 = .;
   IF (V301 = 9) THEN V301 = .;
   IF (V302 = 9) THEN V302 = .;
   IF (V303 = 9) THEN V303 = .;
   IF (V304 = 9) THEN V304 = .;
   IF (V305 = 9) THEN V305 = .;
   IF (V306 = 9) THEN V306 = .;
   IF (V307 = 9) THEN V307 = .;
   IF (V308 = 9) THEN V308 = .;
   IF (V309 = 9) THEN V309 = .;
   IF (V310 = 9) THEN V310 = .;
   IF (V311 = 9) THEN V311 = .;
   IF (V312 = 9) THEN V312 = .;
   IF (V313 = 9) THEN V313 = .;
   IF (V314 = 9) THEN V314 = .;
   IF (V315 = 9) THEN V315 = .;
   IF (V316 = 9) THEN V316 = .;
   IF (V317 = 9) THEN V317 = .;
   IF (V318 = 9) THEN V318 = .;
   IF (V319 = 9) THEN V319 = .;
   IF (V320 = 9) THEN V320 = .;
   IF (V321 = 9) THEN V321 = .;
   IF (V322 = 9) THEN V322 = .;
   IF (V323 = 9) THEN V323 = .;
   IF (V324 = 9) THEN V324 = .;
   IF (V325 = 9) THEN V325 = .;
   IF (V326 = 9) THEN V326 = .;
   IF (V327 = 9) THEN V327 = .;
   IF (V328 = 9) THEN V328 = .;
   IF (V329 = 9) THEN V329 = .;
   IF (V330 = 9) THEN V330 = .;
   IF (V331 = 9) THEN V331 = .;
   IF (V332 = 9) THEN V332 = .;
   IF (V333 = 9) THEN V333 = .;
   IF (V334 = 9) THEN V334 = .;
   IF (V335 = 9) THEN V335 = .;
   IF (V336 = 9) THEN V336 = .;
   IF (V337 = 9) THEN V337 = .;
   IF (V338 = 9) THEN V338 = .;
   IF (V339 = 9) THEN V339 = .;
   IF (V340 = 9) THEN V340 = .;
   IF (V341 = 9) THEN V341 = .;
   IF (V342 = 9) THEN V342 = .;
   IF (V343 = 9) THEN V343 = .;
   IF (V344 = 9) THEN V344 = .;
   IF (V345 = 9) THEN V345 = .;
   IF (V346 = 9) THEN V346 = .;
   IF (V347 = 9) THEN V347 = .;
   IF (V348 = 9) THEN V348 = .;
   IF (V349 = 9) THEN V349 = .;
   IF (V350 = 9) THEN V350 = .;
   IF (V351 = 9) THEN V351 = .;
   IF (V352 = 9) THEN V352 = .;
   IF (V353 = 9) THEN V353 = .;
   IF (V354 = 9) THEN V354 = .;
   IF (V355 = 9) THEN V355 = .;
   IF (V356 = 9) THEN V356 = .;
   IF (V357 = 9) THEN V357 = .;
   IF (V358 = 9) THEN V358 = .;
   IF (V359 = 9) THEN V359 = .;
   IF (V360 = 9) THEN V360 = .;
   IF (V361 = 9) THEN V361 = .;
   IF (V362 = 9) THEN V362 = .;
   IF (V363 = 9) THEN V363 = .;
   IF (V364 = 9) THEN V364 = .;
   IF (V365 = 9) THEN V365 = .;
   IF (V366 = 9) THEN V366 = .;
   IF (V367 = 9) THEN V367 = .;
   IF (V368 = 9) THEN V368 = .;
   IF (V369 = 9) THEN V369 = .;
   IF (V370 = 9) THEN V370 = .;
   IF (V371 = 9) THEN V371 = .;
   IF (V372 = 9) THEN V372 = .;
   IF (V373 = 9) THEN V373 = .;
   IF (V376 = 9) THEN V376 = .;
   IF (V377 = 9) THEN V377 = .;
   IF (V378 = 999) THEN V378 = .;
   IF (V380 = 999) THEN V380 = .;
   IF (V382 = 999) THEN V382 = .;
   IF (V384 = 999) THEN V384 = .;
   IF (V386 = 999) THEN V386 = .;
   IF (V388 = 999) THEN V388 = .;
   IF (V390 = 999) THEN V390 = .;
   IF (V392 = 999) THEN V392 = .;
   IF (V394 = 999) THEN V394 = .;
   IF (V396 = 999) THEN V396 = .;
   IF (V398 = 999) THEN V398 = .;
   IF (V400 = 999) THEN V400 = .;
   IF (V402 = 999) THEN V402 = .;
   IF (V404 = 999) THEN V404 = .;
   IF (V406 = 999) THEN V406 = .;
   IF (V408 = 999) THEN V408 = .;
   IF (V410 = 999) THEN V410 = .;
   IF (V412 = 999) THEN V412 = .;
   IF (V414 = 999) THEN V414 = .;
   IF (V416 = 999) THEN V416 = .;
   IF (V418 = 999) THEN V418 = .;
   IF (V420 = 999) THEN V420 = .;
   IF (V422 = 999) THEN V422 = .;
   IF (V424 = 999) THEN V424 = .;
   IF (V426 = 999) THEN V426 = .;
   IF (V428 = 999) THEN V428 = .;
   IF (V430 = 999) THEN V430 = .;
   IF (V432 = 999) THEN V432 = .;
   IF (V434 = 999) THEN V434 = .;
   IF (V436 = 999) THEN V436 = .;
   IF (V438 = 999) THEN V438 = .;
   IF (V440 = 999) THEN V440 = .;
   IF (V442 = 999) THEN V442 = .;
   IF (V444 = 999) THEN V444 = .;
   IF (V446 = 999) THEN V446 = .;
   IF (V448 = 999) THEN V448 = .;
   IF (V450 = 999) THEN V450 = .;
   IF (V452 = 999) THEN V452 = .;
   IF (V454 = 999) THEN V454 = .;
   IF (V456 = 999) THEN V456 = .;
   IF (V458 = 999) THEN V458 = .;
   IF (V460 = 999) THEN V460 = .;
   IF (V462 = 999) THEN V462 = .;
   IF (V464 = 999) THEN V464 = .;
   IF (V466 = 999) THEN V466 = .;
   IF (V468 = 999) THEN V468 = .;
   IF (V469 = 999) THEN V469 = .;
   IF (V470 = 999) THEN V470 = .;
   IF (V471 = 999) THEN V471 = .;
   IF (V472 = 999) THEN V472 = .;
   IF (V473 = 999) THEN V473 = .;
   IF (V474 = 999) THEN V474 = .;
   IF (V475 = 999) THEN V475 = .;
   IF (V476 = 999) THEN V476 = .;
   IF (V478 = 9) THEN V478 = .;
   IF (V480 = 9) THEN V480 = .;
   IF (V482 = 9) THEN V482 = .;
   IF (V484 = 9) THEN V484 = .;
   IF (V485 = 9) THEN V485 = .;
   IF (V487 = 9) THEN V487 = .;
   IF (V488 = 9) THEN V488 = .;
   IF (V490 = 9) THEN V490 = .;
   IF (V491 = 4) THEN V491 = .;
   IF (V493 = 9) THEN V493 = .;
   IF (V494 = 9) THEN V494 = .;
   IF (V495 = 9) THEN V495 = .;
   IF (V496 = 9) THEN V496 = .;
   IF (V497 = 9) THEN V497 = .;
   IF (V498 = 999) THEN V498 = .;
   IF (V499 = 999) THEN V499 = .;
   IF (V500 = 999) THEN V500 = .;
   IF (V501 = 9) THEN V501 = .;
   IF (V502 = 9) THEN V502 = .;
   IF (V503 = 9) THEN V503 = .;
   IF (V504 = 9) THEN V504 = .;
   IF (V505 = 9) THEN V505 = .;
   IF (V506 = 1) THEN V506 = .;
   IF (V507 = 9) THEN V507 = .;
   IF (V508 = 9) THEN V508 = .;
   IF (V509 = 9) THEN V509 = .;
   IF (V510 = 9) THEN V510 = .;
   IF (V511 = 9) THEN V511 = .;
   IF (V512 = 9) THEN V512 = .;
   IF (V513 = 9) THEN V513 = .;
   IF (V514 = 9) THEN V514 = .;
   IF (V515 = 9) THEN V515 = .;
   IF (V516 = 1) THEN V516 = .;
   IF (V518 = 9) THEN V518 = .;
   IF (V519 = 9) THEN V519 = .;
   IF (V520 = 9) THEN V520 = .;
   IF (V521 = 99) THEN V521 = .;
   IF (V522 = 9) THEN V522 = .;
*/

* SAS FORMAT STATEMENT;

  FORMAT V5 v5ffffff. V6 v6ffffff. V7 v7ffffff.
         V8 v8ffffff. V9 v9ffffff. V10 v10fffff.
         V11 v11fffff. V12 v12fffff. V13 v13fffff.
         V14 v14fffff. V15 v15fffff. V17 v17fffff.
         V18 v18fffff. V19 v19fffff. V20 v20fffff.
         V21 v21fffff. V22 v22fffff. V23 v23fffff.
         V24 v24fffff. V25 v25fffff. V26 v26fffff.
         V27 v27fffff. V28 v28fffff. V29 v29fffff.
         V30 v30fffff. V31 v31fffff. V32 v32fffff.
         V33 v33fffff. V34 v34fffff. V35 v35fffff.
         V36 v36fffff. V38 v38fffff. V40 v40fffff.
         V41 v41fffff. V42 v42fffff. V43 v43fffff.
         V44 v44fffff. V45 v45fffff. V46 v46fffff.
         V47 v47fffff. V48 v48fffff. V49 v49fffff.
         V50 v50fffff. V51 v51fffff. V52 v52fffff.
         V53 v53fffff. V54 v54fffff. V55 v55fffff.
         V56 v56fffff. V57 v57fffff. V58 v58fffff.
         V59 v59fffff. V60 v60fffff. V61 v61fffff.
         V62 v62fffff. V63 v63fffff. V64 v64fffff.
         V67 v67fffff. V68 v68fffff. V69 v69fffff.
         V70 v70fffff. V71 v71fffff. V72 v72fffff.
         V73 v73fffff. V74 v74fffff. V75 v75fffff.
         V76 v76fffff. V77 v77fffff. V78 v78fffff.
         V79 v79fffff. V80 v80fffff. V81 v81fffff.
         V82 v82fffff. V83 v83fffff. V84 v84fffff.
         V85 v85fffff. V86 v86fffff. V87 v87fffff.
         V88 v88fffff. V89 v89fffff. V90 v90fffff.
         V91 v91fffff. V92 v92fffff. V93 v93fffff.
         V94 v94fffff. V95 v95fffff. V96 v96fffff.
         V97 v97fffff. V98 v98fffff. V99 v99fffff.
         V100 v100ffff. V101 v101ffff. V102 v102ffff.
         V103 v103ffff. V104 v104ffff. V105 v105ffff.
         V106 v106ffff. V107 v107ffff. V108 v108ffff.
         V109 v109ffff. V110 v110ffff. V111 v111ffff.
         V112 v112ffff. V113 v113ffff. V114 v114ffff.
         V115 v115ffff. V116 v116ffff. V117 v117ffff.
         V118 v118ffff. V119 v119ffff. V120 v120ffff.
         V121 v121ffff. V122 v122ffff. V123 v123ffff.
         V124 v124ffff. V125 v125ffff. V126 v126ffff.
         V127 v127ffff. V128 v128ffff. V129 v129ffff.
         V130 v130ffff. V131 v131ffff. V132 v132ffff.
         V133 v133ffff. V134 v134ffff. V135 v135ffff.
         V136 v136ffff. V137 v137ffff. V138 v138ffff.
         V139 v139ffff. V140 v140ffff. V141 v141ffff.
         V142 v142ffff. V143 v143ffff. V144 v144ffff.
         V145 v145ffff. V149 v149ffff. V150 v150ffff.
         V151 v151ffff. V152 v152ffff. V153 v153ffff.
         V154 v154ffff. V155 v155ffff. V156 v156ffff.
         V157 v157ffff. V158 v158ffff. V159 v159ffff.
         V160 v160ffff. V161 v161ffff. V162 v162ffff.
         V163 v163ffff. V164 v164ffff. V165 v165ffff.
         V166 v166ffff. V167 v167ffff. V168 v168ffff.
         V170 v170ffff. V171 v171ffff. V172 v172ffff.
         V173 v173ffff. V174 v174ffff. V175 v175ffff.
         V176 v176ffff. V177 v177ffff. V178 v178ffff.
         V179 v179ffff. V180 v180ffff. V181 v181ffff.
         V182 v182ffff. V183 v183ffff. V184 v184ffff.
         V185 v185ffff. V186 v186ffff. V187 v187ffff.
         V188 v188ffff. V189 v189ffff. V190 v190ffff.
         V191 v191ffff. V192 v192ffff. V193 v193ffff.
         V194 v194ffff. V195 v195ffff. V196 v196ffff.
         V197 v197ffff. V198 v198ffff. V199 v199ffff.
         V200 v200ffff. V201 v201ffff. V202 v202ffff.
         V203 v203ffff. V204 v204ffff. V205 v205ffff.
         V206 v206ffff. V207 v207ffff. V208 v208ffff.
         V209 v209ffff. V210 v210ffff. V211 v211ffff.
         V212 v212ffff. V213 v213ffff. V214 v214ffff.
         V215 v215ffff. V217 v217ffff. V218 v218ffff.
         V219 v219ffff. V220 v220ffff. V221 v221ffff.
         V222 v222ffff. V223 v223ffff. V224 v224ffff.
         V225 v225ffff. V226 v226ffff. V227 v227ffff.
         V228 v228ffff. V229 v229ffff. V230 v230ffff.
         V231 v231ffff. V232 v232ffff. V233 v233ffff.
         V234 v234ffff. V235 v235ffff. V236 v236ffff.
         V237 v237ffff. V238 v238ffff. V239 v239ffff.
         V240 v240ffff. V241 v241ffff. V242 v242ffff.
         V243 v243ffff. V244 v244ffff. V245 v245ffff.
         V246 v246ffff. V247 v247ffff. V248 v248ffff.
         V249 v249ffff. V250 v250ffff. V251 v251ffff.
         V252 v252ffff. V253 v253ffff. V254 v254ffff.
         V255 v255ffff. V256 v256ffff. V257 v257ffff.
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
         V379 v379ffff. V381 v381ffff. V383 v383ffff.
         V385 v385ffff. V387 v387ffff. V389 v389ffff.
         V391 v391ffff. V393 v393ffff. V395 v395ffff.
         V397 v397ffff. V399 v399ffff. V401 v401ffff.
         V403 v403ffff. V405 v405ffff. V407 v407ffff.
         V409 v409ffff. V411 v411ffff. V413 v413ffff.
         V415 v415ffff. V417 v417ffff. V419 v419ffff.
         V421 v421ffff. V423 v423ffff. V425 v425ffff.
         V427 v427ffff. V429 v429ffff. V431 v431ffff.
         V433 v433ffff. V435 v435ffff. V437 v437ffff.
         V439 v439ffff. V441 v441ffff. V443 v443ffff.
         V445 v445ffff. V447 v447ffff. V449 v449ffff.
         V451 v451ffff. V453 v453ffff. V455 v455ffff.
         V457 v457ffff. V459 v459ffff. V461 v461ffff.
         V463 v463ffff. V465 v465ffff. V467 v467ffff.
         V468 v468ffff. V469 v469ffff. V470 v470ffff.
         V471 v471ffff. V472 v472ffff. V473 v473ffff.
         V474 v474ffff. V475 v475ffff. V476 v476ffff.
         V477 v477ffff. V478 v478ffff. V479 v479ffff.
         V480 v480ffff. V481 v481ffff. V482 v482ffff.
         V483 v483ffff. V484 v484ffff. V485 v485ffff.
         V486 v486ffff. V487 v487ffff. V488 v488ffff.
         V489 v489ffff. V490 v490ffff. V491 v491ffff.
         V492 v492ffff. V493 v493ffff. V494 v494ffff.
         V495 v495ffff. V496 v496ffff. V497 v497ffff.
         V501 v501ffff. V502 v502ffff. V503 v503ffff.
         V504 v504ffff. V505 v505ffff. V506 v506ffff.
         V507 v507ffff. V508 v508ffff. V509 v509ffff.
         V510 v510ffff. V511 v511ffff. V512 v512ffff.
         V513 v513ffff. V514 v514ffff. V515 v515ffff.
         V516 v516ffff. V517 v517ffff. V518 v518ffff.
         V519 v519ffff. V520 v520ffff. V521 v521ffff.
         V522 v522ffff.  ;

RUN ;
