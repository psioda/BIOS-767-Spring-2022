/*-------------------------------------------------------------------------
 |                                                                         
 |             SAS SUPPLEMENTAL SYNTAX FILE FOR ICPSR 08424
 |                  NATIONAL YOUTH SURVEY (1977): WAVE 2
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
  VALUE v5ffffff  1='(1) Male' 2='(2) Female' ;
  VALUE v6ffffff  1='(1) Anglo' 2='(2) Black' 3='(3) Chicano' 4='(4) American Indian'
                  5='(5) Asian' 6='(6) Other' ;
  VALUE v8ffffff  17='(17) Not in school' 18='(18) Other' ;
  VALUE v9ffffff  1='(1) Mostly F''s' 2='(2) Mostly D''s' 3='(3) Mostly C''s'
                  4='(4) Mostly B''s' 5='(5) Mostly A''s' ;
  VALUE v10fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v11fffff  1='(1) Not important' 2='(2) Not too important'
                  3='(3) Somewhat important' 4='(4) Pretty important'
                  5='(5) Very important' ;
  VALUE v12fffff  0='(0) Less than once wk' ;
  VALUE v13fffff  0='(0) Less than once wk' ;
  VALUE v14fffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v15fffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v16fffff  1='(1) Not important' 2='(2) Not too important'
                  3='(3) Somewhat important' 4='(4) Pretty important'
                  5='(5) Very important' ;
  VALUE v17fffff  0='(0) Less than once wk' ;
  VALUE v18fffff  1='(1) Not important' 2='(2) Not too important'
                  3='(3) Somewhat important' 4='(4) Pretty important'
                  5='(5) Very important' ;
  VALUE v19fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v20fffff  0='(0) Less than once wk' ;
  VALUE v21fffff  0='(0) Less than once wk' ;
  VALUE v22fffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v23fffff  1='(1) Not important' 2='(2) Not too important'
                  3='(3) Somewhat important' 4='(4) Pretty important'
                  5='(5) Very important' ;
  VALUE v24fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v25fffff  1='(1) Not important' 2='(2) Not too important'
                  3='(3) Somewhat important' 4='(4) Pretty important'
                  5='(5) Very important' ;
  VALUE v26fffff  0='(0) Less than once wk' ;
  VALUE v27fffff  0='(0) Less than once wk' ;
  VALUE v28fffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v29fffff  1='(1) Not important' 2='(2) Not too important'
                  3='(3) Somewhat important' 4='(4) Pretty important'
                  5='(5) Very important' ;
  VALUE v30fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v31fffff  1='(1) Not important' 2='(2) Not too important'
                  3='(3) Somewhat important' 4='(4) Pretty important'
                  5='(5) Very important' ;
  VALUE v32fffff  0='(0) Less than once wk' ;
  VALUE v33fffff  0='(0) Less than once wk' ;
  VALUE v34fffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v35fffff  1='(1) Not important' 2='(2) Not too important'
                  3='(3) Somewhat important' 4='(4) Pretty important'
                  5='(5) Very important' ;
  VALUE v36fffff  1='(1) Athlete' 2='(2) Activities member' 3='(3) Social type'
                  4='(4) Good student' 5='(5) Average student' 6='(6) None of the above'
                  7='(7) Other' ;
  VALUE v37fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v38fffff  1='(1) Not important' 2='(2) Not too important'
                  3='(3) Somewhat important' 4='(4) Pretty important'
                  5='(5) Very important' ;
  VALUE v39fffff  0='(0) Less than once wk' ;
  VALUE v40fffff  0='(0) Less than once wk' ;
  VALUE v41fffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v42fffff  1='(1) Not important' 2='(2) Not too important'
                  3='(3) Somewhat important' 4='(4) Pretty important'
                  5='(5) Very important' ;
  VALUE v43fffff  1='(1) No' 2='(2) Yes' ;
  VALUE v44fffff  1='(1) Not important' 2='(2) Not too important'
                  3='(3) Somewhat important' 4='(4) Pretty important'
                  5='(5) Very important' ;
  VALUE v45fffff  1='(1) Part-time' 2='(2) Full-time' ;
  VALUE v46fffff  1='(1) Informal' 2='(2) Un/semi skilled' 3='(3) Skilled manual'
                  4='(4) Cler/tech/sales' 5='(5) Exec/prof/admin' ;
  VALUE v47fffff  1='(1) Not important' 2='(2) Not too important'
                  3='(3) Somewhat important' 4='(4) Pretty important'
                  5='(5) Very important' ;
  VALUE v48fffff  1='(1) Yes' 2='(2) No' ;
  VALUE v49fffff  0='(0) Less than once wk' ;
  VALUE v50fffff  0='(0) Less than once wk' ;
  VALUE v51fffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v52fffff  1='(1) Not important' 2='(2) Not too important'
                  3='(3) Somewhat important' 4='(4) Pretty important'
                  5='(5) Very important' ;
  VALUE v53fffff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE v54fffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v55fffff  1='(1) Not well' 3='(3) O.K.' 5='(5) Very well' ;
  VALUE v56fffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v57fffff  1='(1) Not well' 3='(3) O.K.' 5='(5) Very well' ;
  VALUE v58fffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v59fffff  1='(1) Not well' 3='(3) O.K.' 5='(5) Very well' ;
  VALUE v60fffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v61fffff  1='(1) Not well' 3='(3) O.K.' 5='(5) Very well' ;
  VALUE v62fffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v63fffff  1='(1) Not well' 3='(3) O.K.' 5='(5) Very well' ;
  VALUE v64fffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v65fffff  1='(1) Not well' 3='(3) O.K.' 5='(5) Very well' ;
  VALUE v66fffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v67fffff  1='(1) Not well' 3='(3) O.K.' 5='(5) Very well' ;
  VALUE v72fffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v73fffff  1='(1) Not well' 3='(3) O.K.' 5='(5) Very well' ;
  VALUE v74fffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v75fffff  1='(1) Not well' 3='(3) O.K.' 5='(5) Very well' ;
  VALUE v76fffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v77fffff  1='(1) Not well' 3='(3) O.K.' 5='(5) Very well' ;
  VALUE v78fffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v79fffff  1='(1) Not well' 3='(3) O.K.' 5='(5) Very well' ;
  VALUE v80fffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v81fffff  1='(1) Not well' 3='(3) O.K.' 5='(5) Very well' ;
  VALUE v82fffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v83fffff  1='(1) Not well' 3='(3) O.K.' 5='(5) Very well' ;
  VALUE v84fffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v85fffff  1='(1) Not well' 3='(3) O.K.' 5='(5) Very well' ;
  VALUE v86fffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v87fffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v88fffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v89fffff  1='(1) Not important' 3='(3) Somewhat important' 5='(5) Very important' ;
  VALUE v90fffff  1='(1) Poor' 2='(2) Fair' 3='(3) Good' ;
  VALUE v91fffff  1='(1) Poor' 2='(2) Fair' 3='(3) Good' ;
  VALUE v92fffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v93fffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v94fffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v95fffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v96fffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v97fffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v98fffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v99fffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v100ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v101ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v102ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v103ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v104ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v105ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v106ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v107ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v108ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v109ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v110ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v111ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v112ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v113ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v114ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v115ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v116ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v117ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v118ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v119ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v120ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v121ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v122ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v123ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v124ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v125ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v126ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v127ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v128ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v129ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v130ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v131ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v133ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v134ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v135ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v136ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v137ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v138ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v139ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v140ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v141ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v142ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v143ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v144ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v145ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v146ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v147ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v148ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v149ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v150ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v151ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v152ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v153ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v154ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v155ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v156ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v157ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v158ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v159ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v160ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v161ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v162ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v163ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v164ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v165ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v166ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v167ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v168ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v169ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v170ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v171ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v172ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v173ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v174ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v175ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v176ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v177ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v178ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v179ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v180ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v181ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v182ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v183ffff  1='(1) Strongly approve' 2='(2) Approve' 3='(3) Neither' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE v184ffff  1='(1) Almost never' 2='(2) Sometimes' 3='(3) Often' 4='(4) Almost always' ;
  VALUE v185ffff  1='(1) Almost never' 2='(2) Sometimes' 3='(3) Often' 4='(4) Almost always' ;
  VALUE v186ffff  1='(1) Almost never' 2='(2) Sometimes' 3='(3) Often' 4='(4) Almost always' ;
  VALUE v187ffff  1='(1) Almost never' 2='(2) Sometimes' 3='(3) Often' 4='(4) Almost always' ;
  VALUE v188ffff  1='(1) Almost never' 2='(2) Sometimes' 3='(3) Often' 4='(4) Almost always' ;
  VALUE v189ffff  1='(1) Almost never' 2='(2) Sometimes' 3='(3) Often' 4='(4) Almost always' ;
  VALUE v190ffff  1='(1) Almost never' 2='(2) Sometimes' 3='(3) Often' 4='(4) Almost always' ;
  VALUE v191ffff  1='(1) Almost never' 2='(2) Sometimes' 3='(3) Often' 4='(4) Almost always' ;
  VALUE v192ffff  1='(1) Almost never' 2='(2) Sometimes' 3='(3) Often' 4='(4) Almost always' ;
  VALUE v193ffff  1='(1) Almost never' 2='(2) Sometimes' 3='(3) Often' 4='(4) Almost always' ;
  VALUE v194ffff  1='(1) Almost never' 2='(2) Sometimes' 3='(3) Often' 4='(4) Almost always' ;
  VALUE v195ffff  1='(1) Almost never' 2='(2) Sometimes' 3='(3) Often' 4='(4) Almost always' ;
  VALUE v196ffff  1='(1) Not wrong' 2='(2) A little wrong' 3='(3) Wrong' 4='(4) Very wrong' ;
  VALUE v197ffff  1='(1) Not wrong' 2='(2) A little wrong' 3='(3) Wrong' 4='(4) Very wrong' ;
  VALUE v198ffff  1='(1) Not wrong' 2='(2) A little wrong' 3='(3) Wrong' 4='(4) Very wrong' ;
  VALUE v199ffff  1='(1) Not wrong' 2='(2) A little wrong' 3='(3) Wrong' 4='(4) Very wrong' ;
  VALUE v200ffff  1='(1) Not wrong' 2='(2) A little wrong' 3='(3) Wrong' 4='(4) Very wrong' ;
  VALUE v201ffff  1='(1) Not wrong' 2='(2) A little wrong' 3='(3) Wrong' 4='(4) Very wrong' ;
  VALUE v202ffff  1='(1) Not wrong' 2='(2) A little wrong' 3='(3) Wrong' 4='(4) Very wrong' ;
  VALUE v203ffff  1='(1) Not wrong' 2='(2) A little wrong' 3='(3) Wrong' 4='(4) Very wrong' ;
  VALUE v204ffff  1='(1) Not wrong' 2='(2) A little wrong' 3='(3) Wrong' 4='(4) Very wrong' ;
  VALUE v205ffff  1='(1) Not wrong' 2='(2) A little wrong' 3='(3) Wrong' 4='(4) Very wrong' ;
  VALUE v206ffff  1='(1) Not wrong' 2='(2) A little wrong' 3='(3) Wrong' 4='(4) Very wrong' ;
  VALUE v207ffff  1='(1) Not wrong' 2='(2) A little wrong' 3='(3) Wrong' 4='(4) Very wrong' ;
  VALUE v208ffff  1='(1) None of them' 2='(2) Few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v209ffff  1='(1) None of them' 2='(2) Few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v210ffff  1='(1) None of them' 2='(2) Few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v211ffff  1='(1) None of them' 2='(2) Few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v212ffff  1='(1) None of them' 2='(2) Few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v213ffff  1='(1) None of them' 2='(2) Few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v214ffff  1='(1) None of them' 2='(2) Few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v215ffff  1='(1) None of them' 2='(2) Few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v216ffff  1='(1) None of them' 2='(2) Few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v217ffff  1='(1) None of them' 2='(2) Few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v218ffff  1='(1) None of them' 2='(2) Few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v219ffff  1='(1) None of them' 2='(2) Few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v220ffff  1='(1) None of them' 2='(2) Few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE v221ffff  1='(1) No' 2='(2) Don''t know' 3='(3) Yes' ;
  VALUE v222ffff  1='(1) No' 2='(2) Don''t know' 3='(3) Yes' ;
  VALUE v223ffff  1='(1) No' 2='(2) Don''t know' 3='(3) Yes' ;
  VALUE v224ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v225ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v226ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v227ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v228ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v229ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v230ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v231ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v232ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v233ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v234ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v235ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v236ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v237ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v238ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v239ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v240ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v241ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v242ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v243ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v244ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v245ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v246ffff  1='(1) Strongly disagree' 2='(2) Disagree' 3='(3) Neither' 4='(4) Agree'
                  5='(5) Strongly agree' ;
  VALUE v247ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Several times' 4='(4) Often' ;
  VALUE v248ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Several times' 4='(4) Often' ;
  VALUE v249ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Several times' 4='(4) Often' ;
  VALUE v250ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Several times' 4='(4) Often' ;
  VALUE v251ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Several times' 4='(4) Often' ;
  VALUE v252ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Several times' 4='(4) Often' ;
  VALUE v253ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Several times' 4='(4) Often' ;
  VALUE v254ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Several times' 4='(4) Often' ;
  VALUE v255ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Several times' 4='(4) Often' ;
  VALUE v256ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Several times' 4='(4) Often' ;
  VALUE v258ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v260ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v262ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v264ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v266ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v268ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v270ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v272ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v274ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v276ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v278ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v280ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v282ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v284ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v286ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v288ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v290ffff  1='(1) Never' 2='(2) Once or twice a yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times/wk' 8='(8) Once a day' 9='(9) 2-3 times/day' ;
  VALUE v292ffff  1='(1) Never' 2='(2) Once or twice a yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times/wk' 8='(8) Once a day' 9='(9) 2-3 times/day' ;
  VALUE v294ffff  1='(1) Never' 2='(2) Once or twice a yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times/wk' 8='(8) Once a day' 9='(9) 2-3 times/day' ;
  VALUE v296ffff  1='(1) Never' 2='(2) Once or twice a yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times/wk' 8='(8) Once a day' 9='(9) 2-3 times/day' ;
  VALUE v298ffff  1='(1) Never' 2='(2) Once or twice a yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times/wk' 8='(8) Once a day' 9='(9) 2-3 times/day' ;
  VALUE v300ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v302ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v304ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v306ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v308ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v310ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v312ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v314ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v316ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v318ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v320ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v322ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v324ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v326ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v328ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v330ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v332ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v334ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v336ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v338ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v340ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v342ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v344ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v346ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v348ffff  1='(1) Never' 2='(2) Once/twice yr' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v349ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times a wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v350ffff  1='(1) No' 2='(2) Yes' 3='(3) Yes, episodic' ;
  VALUE v351ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times a wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v352ffff  1='(1) No' 2='(2) Yes' 3='(3) Yes, episodic' ;
  VALUE v353ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times a wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v354ffff  1='(1) No' 2='(2) Yes' 3='(3) Yes, episodic' ;
  VALUE v355ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times a wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v356ffff  1='(1) No' 2='(2) Yes' 3='(3) Yes, episodic' ;
  VALUE v357ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times a wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v358ffff  1='(1) No' 2='(2) Yes' 3='(3) Yes, episodic' ;
  VALUE v359ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times a wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v360ffff  1='(1) No' 2='(2) Yes' 3='(3) Yes, episodic' ;
  VALUE v361ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times a wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v362ffff  1='(1) No' 2='(2) Yes' 3='(3) Yes, episodic' ;
  VALUE v363ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times a wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v364ffff  1='(1) No' 2='(2) Yes' 3='(3) Yes, episodic' ;
  VALUE v365ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times a wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v366ffff  1='(1) No' 2='(2) Yes' 3='(3) Yes, episodic' ;
  VALUE v367ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times a wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v368ffff  1='(1) No' 2='(2) Yes' 3='(3) Yes, episodic' ;
  VALUE v369ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times a wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v370ffff  1='(1) No' 2='(2) Yes' 3='(3) Yes, episodic' ;
  VALUE v371ffff  0='(0) Don''t know' 1='(1) More than 1 yr ago' 2='(2) Within last yr'
                  3='(3) Within last 6 mos' 4='(4) Within last mo' ;
  VALUE v372ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v373ffff  0='(0) Less than 1 can' 1='(1) 1 can' 2='(2) 2 cans' 3='(3) 3 cans'
                  4='(4) 4 or 5 cans' 5='(5) 6 pack or more' ;
  VALUE v374ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v375ffff  1='(1) No' 2='(2) Yes' 3='(3) Relieve tension' 4='(4) For pleasure'
                  5='(5) Be different' ;
  VALUE v376ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v377ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v378ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v379ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v380ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v381ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v382ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v383ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v384ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v385ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v386ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v387ffff  1='(1) Relieve pain' 2='(2) Relieve boredom' 3='(3) Relieve tension'
                  4='(4) For pleasure' 5='(5) Be different' 6='(6) Be accepted'
                  7='(7) Be relaxed' 8='(8) Appear grown up' 10='(10) Get thru day'
                  11='(11) Curiosity' 12='(12) Special occasions' 13='(13) Family encourage'
                  14='(14) Other' ;
  VALUE v388ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v389ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v390ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v391ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v392ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v393ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v394ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v395ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v396ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v397ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v398ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v399ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v400ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v401ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v402ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v403ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v404ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v405ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v406ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v407ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v408ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v409ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v410ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v411ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v412ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v413ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v414ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v415ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v416ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v417ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v418ffff  1='(1) Disliked taste' 2='(2) Bad phys effects'
                  3='(3) Bad emotion effects' 4='(4) Felt it was wrong'
                  5='(5) Friends pressure' 6='(6) Trouble w/parents'
                  7='(7) Fearful of addict' 9='(9) Lost effects' 10='(10) Didn''t need it'
                  11='(11) Other' ;
  VALUE v419ffff  1='(1) No' 2='(2) Yes' 3='(3) Yes, episodic' ;
  VALUE v420ffff  0='(0) Don''t know' 1='(1) More than 1 yr ago' 2='(2) Within last yr'
                  3='(3) Within last 6 mos' 4='(4) Within last 6 mo' ;
  VALUE v421ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times a wk' 8='(8) Once a day' 9='(9) 2-3 times day' ;
  VALUE v422ffff  0='(0) Less than a glass' 1='(1) 1 glass' 2='(2) 2 glasses'
                  3='(3) 3 glasses' 4='(4) 4 to 4 glasses' 5='(5) 6 or more glasses' ;
  VALUE v423ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v424ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v425ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v426ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v427ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v428ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v429ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v430ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v431ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v432ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v433ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v434ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v435ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v436ffff  1='(1) Relieve phys pain' 2='(2) Relieve boredom'
                  3='(3) Relieve tension' 4='(4) For pleasure' 5='(5) Be different'
                  6='(6) To be accepted' 7='(7) To be relaxed' 8='(8) Appear grown up'
                  10='(10) Get thru day' 11='(11) Curiosity' 12='(12) Special occasion'
                  13='(13) Family encourage' 14='(14) Other' ;
  VALUE v437ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v438ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v439ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v440ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v441ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v442ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v443ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v444ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v445ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v446ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v447ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v448ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v449ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v450ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v451ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v452ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v453ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v454ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v455ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v456ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v457ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v458ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v459ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v460ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v461ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v462ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v463ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v464ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v465ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v466ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v467ffff  1='(1) Disliked taste' 2='(2) Bad phys effect'
                  3='(3) Bad emotion effect' 4='(4) Felt it was wrong'
                  5='(5) Friends pressured' 6='(6) Trouble w/parents'
                  7='(7) Fearful of addict' 9='(9) Lost effect' 10='(10) Didn''t need it'
                  11='(11) Other' ;
  VALUE v468ffff  1='(1) No' 2='(2) Yes' 3='(3) Yes, episodic' ;
  VALUE v469ffff  0='(0) Don''t know' 1='(1) More than 1 yr ago' 2='(2) Within last yr'
                  3='(3) Within last 6 mos' 4='(4) Within last mo' ;
  VALUE v470ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a week'
                  7='(7) 2-3 times/wk' 8='(8) Once a day' 9='(9) 2-3 times/day' ;
  VALUE v471ffff  0='(0) Less than 1 drink' 1='(1) 1 drink' 2='(2) 2 drinks' 3='(3) 3 drinks'
                  4='(4) 4 or 5 drinks' 5='(5) 6 or more drinks' ;
  VALUE v472ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v473ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v474ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v475ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v476ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v477ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v478ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v479ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v480ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v481ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v482ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v483ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v484ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v485ffff  1='(1) Relieve phys pain' 2='(2) Relieve boredom'
                  3='(3) Relieve tension' 4='(4) For pleasure' 5='(5) Be different'
                  6='(6) To be accepted' 7='(7) To be relaxed' 8='(8) Appear grown up'
                  10='(10) Get thru day' 11='(11) Curiosity' 12='(12) Special occasion'
                  13='(13) Family encourage' 14='(14) Other' ;
  VALUE v486ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v487ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v488ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v489ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v490ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v491ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v492ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v493ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v494ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v495ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v496ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v497ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v498ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v499ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v500ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v501ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v502ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v503ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v504ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v505ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v506ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v507ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v508ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v509ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v510ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v511ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v512ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v513ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v514ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v515ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v516ffff  1='(1) Disliked taste' 2='(2) Bad phys effect'
                  3='(3) Bad emotion effect' 4='(4) Felt it was wrong'
                  5='(5) Friends pressured' 6='(6) Trouble w/parents'
                  7='(7) Fearful of addict' 9='(9) Lost effect' 10='(10) Didn''t need it'
                  11='(11) Other' ;
  VALUE v517ffff  1='(1) No' 2='(2) Yes' 3='(3) Yes, episodic' ;
  VALUE v518ffff  0='(0) Don''t know' 1='(1) More than 1 yr ago' 2='(2) Within last yr'
                  3='(3) Within last 6 mos' 4='(4) Within last mo' ;
  VALUE v519ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times/wk' 8='(8) Once a day' 9='(9) 2-3 times/day' ;
  VALUE v523ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v524ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v525ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v526ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v527ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v528ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v529ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v530ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v531ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v532ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v533ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v534ffff  1='(1) Relieve phys pain' 2='(2) Relieve boredom'
                  3='(3) Relieve tension' 4='(4) For pleasure' 5='(5) Be different'
                  6='(6) To be accepted' 7='(7) To be relaxed' 8='(8) Appear grown up'
                  10='(10) Get thru day' 11='(11) Curiosity' 12='(12) Special occasion'
                  13='(13) Family encourage' 14='(14) Other' ;
  VALUE v535ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v536ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v537ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v538ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v539ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v540ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v541ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v542ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v543ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v544ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v545ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v546ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v547ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v548ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v549ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v550ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v551ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v552ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v553ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v554ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v555ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v556ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v557ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v558ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v559ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v560ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v561ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v562ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v563ffff  1='(1) Disliked taste' 2='(2) Bad phys effect'
                  3='(3) Bad emotion effect' 4='(4) Felt it was wrong'
                  5='(5) Friends pressured' 6='(6) Trouble w/parents'
                  7='(7) Fearful of addict' 9='(9) Lost effect' 10='(10) Didn''t need it'
                  11='(11) Other' ;
  VALUE v564ffff  1='(1) No' 2='(2) Yes' 3='(3) Yes, episodic' ;
  VALUE v565ffff  0='(0) Don''t know' 1='(1) More than 1 yr ago' 2='(2) Within last yr'
                  3='(3) Within last 6 mos' 4='(4) Within last mo' ;
  VALUE v566ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times/wk' 8='(8) Once a day' 9='(9) 2-3 times/day' ;
  VALUE v567ffff  1='(1) Share joint' 2='(2) 1 joint' 3='(3) 2 joints'
                  4='(4) More than 2 joints' ;
  VALUE v568ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v569ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v570ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v571ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v572ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v573ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v574ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v575ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v576ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v577ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v578ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v579ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v580ffff  1='(1) Relieve phys pain' 2='(2) Relieve boredom'
                  3='(3) Relieve tension' 4='(4) For pleasure' 5='(5) Be different'
                  6='(6) To be accepted' 7='(7) To be relaxed' 8='(8) Appear grown up'
                  9='(9) Increase awareness' 10='(10) Get thru day' 11='(11) Curiosity'
                  14='(14) Other' ;
  VALUE v581ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v582ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v583ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v584ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v585ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v586ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v587ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v588ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v589ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v590ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v591ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v592ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v593ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v594ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v595ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v596ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v597ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v598ffff  1='(1) Free' 2='(2) Less than $1.00' 3='(3) $1.00 or more' ;
  VALUE v599ffff  1='(1) $10 or less' 2='(2) $11-$25' 3='(3) $26-$50' 4='(4) $51 or more' ;
  VALUE v600ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v601ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v602ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v603ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v604ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v605ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v606ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v607ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v608ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v609ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v610ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v611ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v612ffff  1='(1) Disliked taste' 2='(2) Bad phys effect'
                  3='(3) Bad emotion effect' 4='(4) Felt it was wrong'
                  5='(5) Friends pressured' 6='(6) Trouble w/parents'
                  7='(7) Fearful of addict' 8='(8) Not available' 9='(9) Lost effect'
                  10='(10) Didn''t need it' 11='(11) Other' ;
  VALUE v613ffff  1='(1) No' 2='(2) Yes' 3='(3) Yes, episodically' ;
  VALUE v614ffff  0='(0) Don''t know' 1='(1) More than 1 yr ago' 2='(2) Within last yr'
                  3='(3) Within last 6 mos' 4='(4) Within last mo' ;
  VALUE v615ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times/wk' 8='(8) Once a day' 9='(9) 2-3 times/day' ;
  VALUE v616ffff  1='(1) 1 dose' 2='(2) 2 doses' 3='(3) 3 doses' ;
  VALUE v617ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v618ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v619ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v620ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v621ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v622ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v623ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v624ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v625ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v626ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v627ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v628ffff  1='(1) Relieve phys pain' 2='(2) Relieve boredom'
                  3='(3) Relieve tension' 4='(4) For pleasure' 5='(5) Be different'
                  6='(6) To be accepted' 7='(7) To be relaxed' 8='(8) Appear grown up'
                  9='(9) Increase awareness' 10='(10) Get thru day' 11='(11) Curiosity' ;
  VALUE v629ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v630ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v631ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v632ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v633ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v634ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v635ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v636ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v637ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v638ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v639ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v640ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v641ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v642ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v643ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v644ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v645ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v646ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v647ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v648ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v649ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v650ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v651ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v652ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v653ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v654ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v655ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v656ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v657ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v658ffff  1='(1) Disliked taste' 2='(2) Bad phys effect'
                  3='(3) Bad emotion effect' 4='(4) Felt it was wrong'
                  5='(5) Friends pressured' 6='(6) Trouble w/parents'
                  7='(7) Fearful of addict' 9='(9) Lost effect' 10='(10) Didn''t need it'
                  11='(11) Other' ;
  VALUE v659ffff  1='(1) No' 2='(2) Yes' 3='(3) Yes, episodic' ;
  VALUE v660ffff  0='(0) Don''t know' 1='(1) More than 1 yr ago' 2='(2) Within last yr'
                  3='(3) Within last 6 mos' 4='(4) Within last mo' ;
  VALUE v661ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times/wk' 8='(8) Once a day' 9='(9) 2-3 times/day' ;
  VALUE v662ffff  1='(1) Yes' 2='(2) No' ;
  VALUE v663ffff  1='(1) < prescribed' 2='(2) Amount prescribed'
                  3='(3) > than prescribed' ;
  VALUE v664ffff  1='(1) Relieve phys pain' 2='(2) Relieve boredom'
                  3='(3) Relieve tension' 4='(4) For pleasure' 5='(5) Be different'
                  6='(6) Be accepted' 7='(7) Be relaxed' 8='(8) Appear grown up'
                  9='(9) Increase awareness' 10='(10) Get thru day' 11='(11) Curiosity'
                  12='(12) Special occasion' 13='(13) Family encourage' 14='(14) Other' ;
  VALUE v665ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v666ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v667ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v668ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v669ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v670ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v671ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v672ffff  1='(1) Free' 2='(2) < 50 cents/tablet' 3='(3) 50 cents or > per tablet' ;
  VALUE v673ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v674ffff  1='(1) Disliked taste' 2='(2) Bad phys effect'
                  3='(3) Bad emotion effect' 4='(4) Felt it was wrong'
                  5='(5) Friends pressured' 6='(6) Trouble w/parents'
                  7='(7) Fearful of addict' 9='(9) Lost effect' 10='(10) Didn''t need it'
                  11='(11) Other' ;
  VALUE v675ffff  1='(1) No' 2='(2) Yes' 3='(3) Yes, episodic' ;
  VALUE v676ffff  0='(0) Don''t know' 1='(1) More than 1 yr ago' 2='(2) Within last yr'
                  3='(3) Within last 6 mos' 4='(4) Within last mo' ;
  VALUE v677ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times/wk' 8='(8) Once a day' 9='(9) 2-3 times/day' ;
  VALUE v678ffff  1='(1) Yes' 2='(2) No' ;
  VALUE v679ffff  1='(1) < prescribed' 2='(2) Amount prescribed' 3='(3) > prescribed' ;
  VALUE v680ffff  1='(1) Relieve phys pain' 2='(2) Relieve boredom'
                  3='(3) Relieve tension' 4='(4) For pleasure' 5='(5) To be different'
                  6='(6) To be accepted' 7='(7) To be relaxed' 8='(8) Appear grown up'
                  9='(9) Increase awareness' 10='(10) Get thru day' 11='(11) Curiosity'
                  12='(12) Special occasion' 13='(13) Family encourage' 14='(14) Other' ;
  VALUE v681ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v682ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v683ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v684ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v685ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v686ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v687ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v688ffff  1='(1) Free' 2='(2) < 50 cts/tablet' 3='(3) 50 cts - $1.50 tablet'
                  4='(4) Over $1.50 per tablet' ;
  VALUE v689ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v690ffff  1='(1) Disliked taste' 2='(2) Bad phys effect'
                  3='(3) Bad emotion effect' 4='(4) Felt it was wrong'
                  5='(5) Friends pressured' 6='(6) Trouble w/parents'
                  7='(7) Fearful of addict' 8='(8) Not available' 9='(9) Lost its effect'
                  10='(10) Didn''t need it' 11='(11) Other' ;
  VALUE v691ffff  1='(1) No' 2='(2) Yes' 3='(3) Yes, episodic' ;
  VALUE v692ffff  0='(0) Don''t know' 1='(1) More than 1 yr ago' 2='(2) Within last yr'
                  3='(3) Within last 6 mos' 4='(4) Within last mo' ;
  VALUE v693ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times/wk' 8='(8) Once a day' 9='(9) 2-3 times/day' ;
  VALUE v694ffff  1='(1) Yes' 2='(2) No' 3='(3) Yes, someone else' ;
  VALUE v695ffff  1='(1) < prescribed' 2='(2) Amount prescribed' 3='(3) > prescribed' ;
  VALUE v696ffff  1='(1) Relieve phys pain' 2='(2) Relieve boredom'
                  3='(3) Relieve tension' 4='(4) For pleasure' 5='(5) To be different'
                  6='(6) To be accepted' 7='(7) To be relaxed' 8='(8) Appear grown up'
                  9='(9) Increase awareness' 10='(10) Get thru day' 11='(11) Curiosity'
                  12='(12) Special occasion' 13='(13) Family encourage' 14='(14) Other' ;
  VALUE v697ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v698ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v699ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v700ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v701ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v702ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v703ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v704ffff  1='(1) Free' 2='(2) < 50 cts/tablet' 3='(3) 50 cts - $1.50 tablet'
                  4='(4) Over $1.50 tablet' ;
  VALUE v705ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v706ffff  1='(1) Disliked taste' 2='(2) Bad phys effect'
                  3='(3) Bad emotion effect' 4='(4) Felt it was wrong'
                  5='(5) Friends pressured' 6='(6) Trouble w/parents'
                  7='(7) Fearful of addict' 8='(8) Not available' 9='(9) Lost its effect'
                  10='(10) Didn''t need it' 11='(11) Other' ;
  VALUE v707ffff  1='(1) No' 2='(2) Yes' 3='(3) Yes, episodic' ;
  VALUE v708ffff  0='(0) Don''t know' 1='(1) More than 1 year ago'
                  2='(2) Within last year' 3='(3) Within last 6 months'
                  4='(4) Within last month' ;
  VALUE v709ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 weeks' 6='(6) Once a wk'
                  7='(7) 2-3 times/week' 8='(8) Once a day' 9='(9) 2-3 times/day' ;
  VALUE v710ffff  1='(1) Yes' 2='(2) No' ;
  VALUE v711ffff  1='(1) < prescribed' 2='(2) Amount prescribed' 3='(3) > prescribed' ;
  VALUE v712ffff  1='(1) Relieve phys pain' 2='(2) Relieve boredom'
                  3='(3) Relieve tension' 4='(4) For pleasure' 5='(5) To be different'
                  6='(6) To be accepted' 7='(7) To be relaxed' 8='(8) Appear grown up'
                  9='(9) Increase awareness' 10='(10) Get thru day' 11='(11) Curiosity'
                  12='(12) Special occasion' 13='(13) Family encourage' 14='(14) Other' ;
  VALUE v713ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v714ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v715ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v716ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v717ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v718ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v719ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v720ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v721ffff  1='(1) Disliked taste' 2='(2) Bad phys effect'
                  3='(3) Bad emotion effect' 4='(4) Felt it was wrong'
                  5='(5) Friends pressured' 6='(6) Trouble w/parents'
                  7='(7) Fearful of addict' 8='(8) Not available' 9='(9) Lost its effect'
                  10='(10) Didn''t need it' 11='(11) Other' ;
  VALUE v722ffff  1='(1) No' 2='(2) Yes' 3='(3) Yes, episodic' ;
  VALUE v723ffff  0='(0) Don''t know' 1='(1) More than 1 yr ago' 2='(2) Within last yr'
                  3='(3) Within last 6 mos' 4='(4) Within last mo' ;
  VALUE v724ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times/wk' 8='(8) Once a day' 9='(9) 2-3 times/day' ;
  VALUE v725ffff  1='(1) Relieve phys pain' 2='(2) Relieve boredom'
                  3='(3) Relieve tension' 4='(4) For pleasure' 5='(5) To be different'
                  6='(6) To be accepted' 7='(7) To be relaxed' 8='(8) Appear grown up'
                  9='(9) Increase awareness' 10='(10) Get thru day' 11='(11) Curiosity'
                  12='(12) Special occasion' 13='(13) Family encourage' 14='(14) Other' ;
  VALUE v726ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v727ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v728ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v729ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v730ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v731ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v732ffff  1='(1) Disliked taste' 2='(2) Bad phys effect'
                  3='(3) Bad emotion effect' 4='(4) Felt it was wrong'
                  5='(5) Friends pressured' 6='(6) Trouble w/parents'
                  7='(7) Fearful of addict' 8='(8) Not available' 9='(9) Lost its effect'
                  10='(10) Didn''t need it' 11='(11) Other' ;
  VALUE v733ffff  1='(1) No' 2='(2) Yes' 3='(3) Yes, episodic' ;
  VALUE v734ffff  0='(0) Don''t know' 1='(1) More than 1 yr ago' 2='(2) Within last yr'
                  3='(3) Within last 6 mos' 4='(4) Within last mo' ;
  VALUE v735ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times/week' 8='(8) Once a day' 9='(9) 2-3 times/day' ;
  VALUE v736ffff  0='(0) < 1 line' 1='(1) 1 line' 2='(2) 2 lines' 3='(3) > 2 lines' ;
  VALUE v737ffff  1='(1) Relieve phys pain' 2='(2) Relieve boredom'
                  3='(3) Relieve tension' 4='(4) For pleasure' 5='(5) To be different'
                  6='(6) To be accepted' 7='(7) To be relaxed' 8='(8) Appear grown up'
                  9='(9) Increase awareness' 10='(10) Get thru day' 11='(11) Curiosity'
                  12='(12) Special occasion' 13='(13) Family encourage' 14='(14) Other' ;
  VALUE v738ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v739ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v740ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v741ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v742ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v745ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v746ffff  1='(1) Disliked taste' 2='(2) Bad phys effect'
                  3='(3) Bad emotion effect' 4='(4) Felt it was wrong'
                  5='(5) Friends pressured' 6='(6) Trouble w/parents'
                  7='(7) Fearful of addict' 8='(8) Not available' 9='(9) Lost its effect'
                  10='(10) Didn''t need it' 11='(11) Other' ;
  VALUE v747ffff  1='(1) No' 2='(2) Yes' 3='(3) Yes, episodic' ;
  VALUE v748ffff  0='(0) Don''t know' 1='(1) More than 1 yr ago' 2='(2) Within last yr'
                  3='(3) Within last 6 mos' 4='(4) Within last mo' ;
  VALUE v749ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) -Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times/wk' 8='(8) Once a day' 9='(9) 2-3 times/day' ;
  VALUE v750ffff  1='(1) Relieve phys pain' 2='(2) Relieve boredom'
                  3='(3) Relieve tension' 4='(4) For pleasure' 5='(5) To be different'
                  6='(6) To be accepted' 7='(7) To be relaxed' 8='(8) Appear grown up'
                  9='(9) Increase awareness' 10='(10) Get thru day' 11='(11) Curiosity'
                  12='(12) Special occasion' 13='(13) Family encourage' 14='(14) Other' ;
  VALUE v751ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v752ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v753ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v754ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v755ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v756ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v757ffff  1='(1) Disliked taste' 2='(2) Bad phys effect'
                  3='(3) Bad emotion effect' 4='(4) Felt it was wrong'
                  5='(5) Friends pressured' 6='(6) Trouble w/parents'
                  7='(7) Fearful of addict' 8='(8) Not available' 9='(9) Lost its effect'
                  10='(10) Didn''t need it' 11='(11) Other' ;
  VALUE v758ffff  1='(1) No' 2='(2) Yes' 3='(3) Yes, episodic' ;
  VALUE v759ffff  0='(0) Don''t know' 1='(1) More than 1 yr ago' 2='(2) Within last yr'
                  3='(3) Within last 6 mos' 4='(4) Within last mo' ;
  VALUE v760ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times/wk' 8='(8) Once a day' 9='(9) 2-3 times/day' ;
  VALUE v761ffff  1='(1) W/marijuana' 2='(2) Powder' 3='(3) Capsule' ;
  VALUE v762ffff  1='(1) Relieve phys pain' 2='(2) Relieve boredom'
                  3='(3) Relieve tension' 4='(4) For pleasure' 5='(5) To be different'
                  6='(6) To be accepted' 7='(7) To be relaxed' 8='(8) Appear grown up'
                  9='(9) Increase awareness' 10='(10) Get thru day' 11='(11) Curiosity'
                  12='(12) Special occasion' 13='(13) Family encourage' 14='(14) Other' ;
  VALUE v763ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v764ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v765ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v766ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v767ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v768ffff  1='(1) Free' 2='(2) $1.00 or less' 3='(3) $1.01 to $5.00'
                  4='(4) Over $5.00' ;
  VALUE v769ffff  1='(1) $10.00 or less' 2='(2) $10.01 - $20.00' 3='(3) $20.01 or more' ;
  VALUE v770ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v771ffff  1='(1) Disliked taste' 2='(2) Bad phys effect'
                  3='(3) Bad emotion effect' 4='(4) Felt it was wrong'
                  5='(5) Friends pressured' 6='(6) Trouble w/parents'
                  7='(7) Fearful of addict' 8='(8) Not available' 9='(9) Lost its effect'
                  10='(10) Didn''t need it' 11='(11) Other' ;
  VALUE v772ffff  1='(1) No' 2='(2) Yes' 3='(3) Yes, episodic' ;
  VALUE v773ffff  1='(1) THC' ;
  VALUE v774ffff  0='(0) Don''t know' 1='(1) More than 1 yr ago' 2='(2) Within last yr'
                  3='(3) Within last 6 mos' 4='(4) Within last mo' ;
  VALUE v775ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 mos'
                  4='(4) Once a mo' 5='(5) Once every 2-3 wks' 6='(6) Once a wk'
                  7='(7) 2-3 times/wk' 8='(8) Once a day' 9='(9) 2-3 times/day' ;
  VALUE v776ffff  0='(0) < 1 tablet' 1='(1) 1 tablet' 2='(2) 2 tablets or more' ;
  VALUE v777ffff  1='(1) Relieve phys pain' 2='(2) Relieve boredom'
                  3='(3) Relieve tension' 4='(4) For pleasure' 5='(5) To be different'
                  6='(6) To be accepted' 7='(7) To be relaxed' 8='(8) Appear grown up'
                  9='(9) Increase awareness' 10='(10) Get thru day' 11='(11) Curiosity'
                  12='(12) Special occasion' 13='(13) Family encourage' 14='(14) Other' ;
  VALUE v778ffff  1='(1) Not effective' 2='(2) Effective' ;
  VALUE v779ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v780ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v781ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v782ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v783ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v784ffff  1='(1) Disliked taste' 2='(2) Bad phys effect'
                  3='(3) Bad emotion effect' 4='(4) Felt it was wrong'
                  5='(5) Friends pressured' 6='(6) Trouble w/parents'
                  7='(7) Fearful of addict' 8='(8) Not available' 9='(9) Lost its effect'
                  10='(10) Didn''t need it' 11='(11) Other' ;
  VALUE v785ffff  1='(1) Not anticipate use' 2='(2) Anticipate use' ;
  VALUE v786ffff  1='(1) Not anticipate use' 2='(2) Anticipate use' ;
  VALUE v787ffff  1='(1) Not anticipate use' 2='(2) Anticipate use' ;
  VALUE v788ffff  1='(1) Not anticipate use' 2='(2) Anticipate use' ;
  VALUE v789ffff  1='(1) Not anticipate use' 2='(2) Anticipate use' ;
  VALUE v790ffff  1='(1) Not anticipate use' 2='(2) Anticipate use' ;
  VALUE v791ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times'
                  4='(4) 5 or 6 times' 5='(5) More than 6 times' ;
  VALUE v792ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times'
                  4='(4) 5 or 6 times' 5='(5) More than 6 times' ;
  VALUE v793ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times'
                  4='(4) 5 or 6 times' 5='(5) More than 6 times' ;
  VALUE v794ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times'
                  4='(4) 5 or 6 times' 5='(5) More than 6 times' ;
  VALUE v795ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times'
                  4='(4) 5 or 6 times' 5='(5) More than 6 times' ;
  VALUE v796ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times'
                  4='(4) 5 or 6 times' 5='(5) More than 6 times' ;
  VALUE v797ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times'
                  4='(4) 5 or 6 times' 5='(5) More than 6 times' ;
  VALUE v798ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times'
                  4='(4) 5 or 6 times' 5='(5) More than 6 times' ;
  VALUE v799ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times'
                  4='(4) 5 or 6 times' 5='(5) More than 6 times' ;
  VALUE v800ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times'
                  4='(4) 5 or 6 times' 5='(5) More than 6 times' ;
  VALUE v801ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times'
                  4='(4) 5 or 6 times' 5='(5) More than 6 times' ;
  VALUE v802ffff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times'
                  4='(4) 5 or 6 times' 5='(5) More than 6 times' ;
  VALUE v803ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v804ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v805ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v806ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v807ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v808ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v809ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v827ffff  1='(1) Buy from store' 2='(2) Buy from person' 3='(3) Borrow' 4='(4) Steal'
                  5='(5) Other' 6='(6) Don''t know' ;
  VALUE v828ffff  1='(1) 1 half day/less' 2='(2) About a day' 3='(3) 2-7 days'
                  4='(4) 1-2 wks' 5='(5) > 2 wks' 6='(6) Don''t know' ;
  VALUE v829ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v830ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v831ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v832ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v833ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v834ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v835ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v836ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v837ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v838ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v839ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v840ffff  1='(1) Drugs' ;
  VALUE v841ffff  1='(1) Sex' ;
  VALUE v845ffff  1='(1) Friends' ;
  VALUE v846ffff  1='(1) Drugs/alcohol' ;
  VALUE v847ffff  1='(1) Family' ;
  VALUE v848ffff  1='(1) Activities' ;
  VALUE v849ffff  1='(1) School' ;
  VALUE v850ffff  1='(1) Other' ;
  VALUE v851ffff  1='(1) Good understand' 2='(2) Poor understand' ;
  VALUE v852ffff  1='(1) Not anxious' 2='(2) Somewhat anxious' 3='(3) Very anxious' ;
  VALUE v853ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v854ffff  1='(1) Very low' 2='(2) Below average' 3='(3) Average'
                  4='(4) Above average' 5='(5) Very high' ;
  VALUE v855ffff  1='(1) Difficulty w/language' ;
  VALUE v856ffff  1='(1) Difficulty w/questions' ;
  VALUE v857ffff  1='(1) Interruptions' ;
  VALUE v858ffff  1='(1) Temp breakoff' ;
  VALUE v859ffff  1='(1) Breakoff' ;
  VALUE v860ffff  1='(1) Other' ;
  VALUE v861ffff  1='(1) Relaxed' 2='(2) Tense' 3='(3) Other' ;
  VALUE v862ffff  1='(1) No' 2='(2) Yes' ;
  VALUE v863ffff  0='(0) Resp not in SMSA' 1='(1) Resp in SMSA' ;
  VALUE v864ffff  1='(1) City of SMSA' 2='(2) City of urban area'
                  3='(3) City of SMSA/urban area' 4='(4) Other inc place'
                  5='(5) Not incorporated' ;
  VALUE v865ffff  0='(0) Under 200' 1='(1) 200-499' 2='(2) 500-999' 3='(3) 1,000-1,499'
                  4='(4) 1,500-1,999' 5='(5) 2,000-2,499' 6='(6) 2,500-4,999'
                  7='(7) 5,000-9,999' 8='(8) 10,000-19,999' 9='(9) 20,000-24,999'
                  10='(10) 25,000-49,999' 11='(11) -50,000-99,999' 12='(12) 100,000-249,999'
                  13='(13) 250,000-499,999' 14='(14) 500,000-999,999'
                  15='(15) 1,000,000 or more' ;
  VALUE v866ffff  1='(1) Urban' 2='(2) Suburban' 3='(3) Rural' ;
RUN;

* SAS DATA STEP;
DATA;
SET SAS-dataset ;


* USER-DEFINED MISSING VALUES RECODE TO SAS SYSMIS;

/*
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
   IF (V47 = -1) THEN V47 = .;
   IF (V48 = -1) THEN V48 = .;
   IF (V49 = -1) THEN V49 = .;
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
   IF (V70 = -1) THEN V70 = .;
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
   IF (V82 = -1) THEN V82 = .;
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
   IF (V264 = -1) THEN V264 = .;
   IF (V265 = -1) THEN V265 = .;
   IF (V266 = -1) THEN V266 = .;
   IF (V267 = -1) THEN V267 = .;
   IF (V268 = -1) THEN V268 = .;
   IF (V269 = -1) THEN V269 = .;
   IF (V270 = -1) THEN V270 = .;
   IF (V271 = -1) THEN V271 = .;
   IF (V272 = -1) THEN V272 = .;
   IF (V273 = -1) THEN V273 = .;
   IF (V274 = -1) THEN V274 = .;
   IF (V275 = -1) THEN V275 = .;
   IF (V276 = -1) THEN V276 = .;
   IF (V277 = -1) THEN V277 = .;
   IF (V278 = -1) THEN V278 = .;
   IF (V279 = -1) THEN V279 = .;
   IF (V280 = -1) THEN V280 = .;
   IF (V281 = -1) THEN V281 = .;
   IF (V282 = -1) THEN V282 = .;
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
*/

* SAS FORMAT STATEMENT;

  FORMAT V5 v5ffffff. V6 v6ffffff. V8 v8ffffff.
         V9 v9ffffff. V10 v10fffff. V11 v11fffff.
         V12 v12fffff. V13 v13fffff. V14 v14fffff.
         V15 v15fffff. V16 v16fffff. V17 v17fffff.
         V18 v18fffff. V19 v19fffff. V20 v20fffff.
         V21 v21fffff. V22 v22fffff. V23 v23fffff.
         V24 v24fffff. V25 v25fffff. V26 v26fffff.
         V27 v27fffff. V28 v28fffff. V29 v29fffff.
         V30 v30fffff. V31 v31fffff. V32 v32fffff.
         V33 v33fffff. V34 v34fffff. V35 v35fffff.
         V36 v36fffff. V37 v37fffff. V38 v38fffff.
         V39 v39fffff. V40 v40fffff. V41 v41fffff.
         V42 v42fffff. V43 v43fffff. V44 v44fffff.
         V45 v45fffff. V46 v46fffff. V47 v47fffff.
         V48 v48fffff. V49 v49fffff. V50 v50fffff.
         V51 v51fffff. V52 v52fffff. V53 v53fffff.
         V54 v54fffff. V55 v55fffff. V56 v56fffff.
         V57 v57fffff. V58 v58fffff. V59 v59fffff.
         V60 v60fffff. V61 v61fffff. V62 v62fffff.
         V63 v63fffff. V64 v64fffff. V65 v65fffff.
         V66 v66fffff. V67 v67fffff. V72 v72fffff.
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
         V130 v130ffff. V131 v131ffff. V133 v133ffff.
         V134 v134ffff. V135 v135ffff. V136 v136ffff.
         V137 v137ffff. V138 v138ffff. V139 v139ffff.
         V140 v140ffff. V141 v141ffff. V142 v142ffff.
         V143 v143ffff. V144 v144ffff. V145 v145ffff.
         V146 v146ffff. V147 v147ffff. V148 v148ffff.
         V149 v149ffff. V150 v150ffff. V151 v151ffff.
         V152 v152ffff. V153 v153ffff. V154 v154ffff.
         V155 v155ffff. V156 v156ffff. V157 v157ffff.
         V158 v158ffff. V159 v159ffff. V160 v160ffff.
         V161 v161ffff. V162 v162ffff. V163 v163ffff.
         V164 v164ffff. V165 v165ffff. V166 v166ffff.
         V167 v167ffff. V168 v168ffff. V169 v169ffff.
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
         V258 v258ffff. V260 v260ffff. V262 v262ffff.
         V264 v264ffff. V266 v266ffff. V268 v268ffff.
         V270 v270ffff. V272 v272ffff. V274 v274ffff.
         V276 v276ffff. V278 v278ffff. V280 v280ffff.
         V282 v282ffff. V284 v284ffff. V286 v286ffff.
         V288 v288ffff. V290 v290ffff. V292 v292ffff.
         V294 v294ffff. V296 v296ffff. V298 v298ffff.
         V300 v300ffff. V302 v302ffff. V304 v304ffff.
         V306 v306ffff. V308 v308ffff. V310 v310ffff.
         V312 v312ffff. V314 v314ffff. V316 v316ffff.
         V318 v318ffff. V320 v320ffff. V322 v322ffff.
         V324 v324ffff. V326 v326ffff. V328 v328ffff.
         V330 v330ffff. V332 v332ffff. V334 v334ffff.
         V336 v336ffff. V338 v338ffff. V340 v340ffff.
         V342 v342ffff. V344 v344ffff. V346 v346ffff.
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
         V381 v381ffff. V382 v382ffff. V383 v383ffff.
         V384 v384ffff. V385 v385ffff. V386 v386ffff.
         V387 v387ffff. V388 v388ffff. V389 v389ffff.
         V390 v390ffff. V391 v391ffff. V392 v392ffff.
         V393 v393ffff. V394 v394ffff. V395 v395ffff.
         V396 v396ffff. V397 v397ffff. V398 v398ffff.
         V399 v399ffff. V400 v400ffff. V401 v401ffff.
         V402 v402ffff. V403 v403ffff. V404 v404ffff.
         V405 v405ffff. V406 v406ffff. V407 v407ffff.
         V408 v408ffff. V409 v409ffff. V410 v410ffff.
         V411 v411ffff. V412 v412ffff. V413 v413ffff.
         V414 v414ffff. V415 v415ffff. V416 v416ffff.
         V417 v417ffff. V418 v418ffff. V419 v419ffff.
         V420 v420ffff. V421 v421ffff. V422 v422ffff.
         V423 v423ffff. V424 v424ffff. V425 v425ffff.
         V426 v426ffff. V427 v427ffff. V428 v428ffff.
         V429 v429ffff. V430 v430ffff. V431 v431ffff.
         V432 v432ffff. V433 v433ffff. V434 v434ffff.
         V435 v435ffff. V436 v436ffff. V437 v437ffff.
         V438 v438ffff. V439 v439ffff. V440 v440ffff.
         V441 v441ffff. V442 v442ffff. V443 v443ffff.
         V444 v444ffff. V445 v445ffff. V446 v446ffff.
         V447 v447ffff. V448 v448ffff. V449 v449ffff.
         V450 v450ffff. V451 v451ffff. V452 v452ffff.
         V453 v453ffff. V454 v454ffff. V455 v455ffff.
         V456 v456ffff. V457 v457ffff. V458 v458ffff.
         V459 v459ffff. V460 v460ffff. V461 v461ffff.
         V462 v462ffff. V463 v463ffff. V464 v464ffff.
         V465 v465ffff. V466 v466ffff. V467 v467ffff.
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
         V498 v498ffff. V499 v499ffff. V500 v500ffff.
         V501 v501ffff. V502 v502ffff. V503 v503ffff.
         V504 v504ffff. V505 v505ffff. V506 v506ffff.
         V507 v507ffff. V508 v508ffff. V509 v509ffff.
         V510 v510ffff. V511 v511ffff. V512 v512ffff.
         V513 v513ffff. V514 v514ffff. V515 v515ffff.
         V516 v516ffff. V517 v517ffff. V518 v518ffff.
         V519 v519ffff. V523 v523ffff. V524 v524ffff.
         V525 v525ffff. V526 v526ffff. V527 v527ffff.
         V528 v528ffff. V529 v529ffff. V530 v530ffff.
         V531 v531ffff. V532 v532ffff. V533 v533ffff.
         V534 v534ffff. V535 v535ffff. V536 v536ffff.
         V537 v537ffff. V538 v538ffff. V539 v539ffff.
         V540 v540ffff. V541 v541ffff. V542 v542ffff.
         V543 v543ffff. V544 v544ffff. V545 v545ffff.
         V546 v546ffff. V547 v547ffff. V548 v548ffff.
         V549 v549ffff. V550 v550ffff. V551 v551ffff.
         V552 v552ffff. V553 v553ffff. V554 v554ffff.
         V555 v555ffff. V556 v556ffff. V557 v557ffff.
         V558 v558ffff. V559 v559ffff. V560 v560ffff.
         V561 v561ffff. V562 v562ffff. V563 v563ffff.
         V564 v564ffff. V565 v565ffff. V566 v566ffff.
         V567 v567ffff. V568 v568ffff. V569 v569ffff.
         V570 v570ffff. V571 v571ffff. V572 v572ffff.
         V573 v573ffff. V574 v574ffff. V575 v575ffff.
         V576 v576ffff. V577 v577ffff. V578 v578ffff.
         V579 v579ffff. V580 v580ffff. V581 v581ffff.
         V582 v582ffff. V583 v583ffff. V584 v584ffff.
         V585 v585ffff. V586 v586ffff. V587 v587ffff.
         V588 v588ffff. V589 v589ffff. V590 v590ffff.
         V591 v591ffff. V592 v592ffff. V593 v593ffff.
         V594 v594ffff. V595 v595ffff. V596 v596ffff.
         V597 v597ffff. V598 v598ffff. V599 v599ffff.
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
         V657 v657ffff. V658 v658ffff. V659 v659ffff.
         V660 v660ffff. V661 v661ffff. V662 v662ffff.
         V663 v663ffff. V664 v664ffff. V665 v665ffff.
         V666 v666ffff. V667 v667ffff. V668 v668ffff.
         V669 v669ffff. V670 v670ffff. V671 v671ffff.
         V672 v672ffff. V673 v673ffff. V674 v674ffff.
         V675 v675ffff. V676 v676ffff. V677 v677ffff.
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
         V741 v741ffff. V742 v742ffff. V745 v745ffff.
         V746 v746ffff. V747 v747ffff. V748 v748ffff.
         V749 v749ffff. V750 v750ffff. V751 v751ffff.
         V752 v752ffff. V753 v753ffff. V754 v754ffff.
         V755 v755ffff. V756 v756ffff. V757 v757ffff.
         V758 v758ffff. V759 v759ffff. V760 v760ffff.
         V761 v761ffff. V762 v762ffff. V763 v763ffff.
         V764 v764ffff. V765 v765ffff. V766 v766ffff.
         V767 v767ffff. V768 v768ffff. V769 v769ffff.
         V770 v770ffff. V771 v771ffff. V772 v772ffff.
         V773 v773ffff. V774 v774ffff. V775 v775ffff.
         V776 v776ffff. V777 v777ffff. V778 v778ffff.
         V779 v779ffff. V780 v780ffff. V781 v781ffff.
         V782 v782ffff. V783 v783ffff. V784 v784ffff.
         V785 v785ffff. V786 v786ffff. V787 v787ffff.
         V788 v788ffff. V789 v789ffff. V790 v790ffff.
         V791 v791ffff. V792 v792ffff. V793 v793ffff.
         V794 v794ffff. V795 v795ffff. V796 v796ffff.
         V797 v797ffff. V798 v798ffff. V799 v799ffff.
         V800 v800ffff. V801 v801ffff. V802 v802ffff.
         V803 v803ffff. V804 v804ffff. V805 v805ffff.
         V806 v806ffff. V807 v807ffff. V808 v808ffff.
         V809 v809ffff. V827 v827ffff. V828 v828ffff.
         V829 v829ffff. V830 v830ffff. V831 v831ffff.
         V832 v832ffff. V833 v833ffff. V834 v834ffff.
         V835 v835ffff. V836 v836ffff. V837 v837ffff.
         V838 v838ffff. V839 v839ffff. V840 v840ffff.
         V841 v841ffff. V845 v845ffff. V846 v846ffff.
         V847 v847ffff. V848 v848ffff. V849 v849ffff.
         V850 v850ffff. V851 v851ffff. V852 v852ffff.
         V853 v853ffff. V854 v854ffff. V855 v855ffff.
         V856 v856ffff. V857 v857ffff. V858 v858ffff.
         V859 v859ffff. V860 v860ffff. V861 v861ffff.
         V862 v862ffff. V863 v863ffff. V864 v864ffff.
         V865 v865ffff. V866 v866ffff.  ;

RUN ;
