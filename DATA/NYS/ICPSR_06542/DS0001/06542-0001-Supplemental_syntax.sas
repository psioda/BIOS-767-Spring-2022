/*-------------------------------------------------------------------------
 |                                                                         
 |             SAS SUPPLEMENTAL SYNTAX FILE FOR ICPSR 06542
 |                              NYS WAVE VII
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
  VALUE y7_1ffff  1='(1) Face to Face Interview' 2='(2) Telephone Interview'
                  3='(3) Telephone Interview' 4='(4) Face to Face Interview' ;
  VALUE y7_2ffff  1='(1) Male' 2='(2) Female' ;
  VALUE y7_3ffff  1='(1) Anglo' 2='(2) Black' 3='(3) Hispanic' 4='(4) American Indian'
                  5='(5) Asian' 6='(6) Other' ;
  VALUE y7_8ffff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_9ffff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_10fff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_11fff  1='(1) Army' 2='(2) Navy' 3='(3) Air Force' 4='(4) Marines' 5='(5) Coast Guard'
                  6='(6) Inactive' ;
  VALUE y7_12fff  1='(1) Single' 2='(2) Married' 3='(3) Divorced' 4='(4) Separated'
                  5='(5) Widowed' ;
  VALUE y7_13fff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_14fff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_15fff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_16fff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_17fff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_18fff  1='(1) Jan' 2='(2) Feb' 3='(3) Mar' 4='(4) Apr' 5='(5) May' 6='(6) Jun' 7='(7) Jul'
                  8='(8) Aug' 9='(9) Sept' 10='(10) Oct' 11='(11) Nov' 12='(12) Dec' ;
  VALUE y7_19fff  13='(13) Winter' 14='(14) Spring' 15='(15) Summer' 16='(16) Fall' 17='(17) All Year'
                  84='(84) 1984' 85='(85) 1985' 86='(86) 1986' 99='(99) Dont Know' ;
  VALUE y7_20fff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_21fff  1='(1) Jan' 2='(2) Feb' 3='(3) Mar' 4='(4) Apr' 5='(5) May' 6='(6) Jun' 7='(7) Jul'
                  8='(8) Aug' 9='(9) Sept' 10='(10) Oct' 11='(11) Nov' 12='(12) Dec' ;
  VALUE y7_22fff  13='(13) Winter' 14='(14) Spring' 15='(15) Summer' 16='(16) Fall' 17='(17) All Year'
                  84='(84) 1984' 85='(85) 1985' 86='(86) 1986' 99='(99) Dont Know' ;
  VALUE y7_23fff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_24fff  1='(1) Jan84' 2='(2) Feb84' 3='(3) Mar84' 4='(4) Apr84' 5='(5) May84' 6='(6) Jun84'
                  7='(7) Jul84' 8='(8) Aug84' 9='(9) Sept84' 10='(10) Oct84' 11='(11) Nov84'
                  12='(12) Dec84' ;
  VALUE y7_25fff  1='(1) Jan85' 2='(2) Feb85' 3='(3) Mar85' 4='(4) Apr85' 5='(5) May85' 6='(6) Jun85'
                  7='(7) Jul85' 8='(8) Aug85' 9='(9) Sept85' 10='(10) Oct85' 11='(11) Nov85'
                  12='(12) Dec85' ;
  VALUE y7_26fff  1='(1) Jan86' 2='(2) Feb86' 3='(3) Mar86' 4='(4) Apr86' 5='(5) May86' 6='(6) Jun86'
                  7='(7) Jul86' 8='(8) Aug86' 9='(9) Sept86' 10='(10) Oct86' 11='(11) Nov86'
                  12='(12) Dec86' ;
  VALUE y7_27fff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_28fff  1='(1) Jan' 2='(2) Feb' 3='(3) Mar' 4='(4) Apr' 5='(5) May' 6='(6) Jun' 7='(7) Jul'
                  8='(8) Aug' 9='(9) Sept' 10='(10) Oct' 11='(11) Nov' 12='(12) Dec' ;
  VALUE y7_29fff  84='(84) 1984' 85='(85) 1985' 86='(86) 1986' ;
  VALUE y7_30fff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_31fff  1='(1) Jan' 2='(2) Feb' 3='(3) Mar' 4='(4) Apr' 5='(5) May' 6='(6) Jun' 7='(7) Jul'
                  8='(8) Aug' 9='(9) Sept' 10='(10) Oct' 11='(11) Nov' 12='(12) Dec' ;
  VALUE y7_32fff  84='(84) 1984' 85='(85) 1985' 86='(86) 1986' ;
  VALUE y7_33fff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_34fff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_35fff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_36fff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_37fff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_38fff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_39fff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_40fff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_41fff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_42fff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_43fff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_44fff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_45fff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_46fff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_47fff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_48fff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_49fff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_50fff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_51fff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_52fff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_53fff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_54fff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_55fff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_56fff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_57fff  1='(1) Mother and Father' 2='(2) Mother only' 3='(3) Father only'
                  4='(4) Mother/Stepfather' 5='(5) Father/Stepmother' 6='(6) Spouse'
                  7='(7) Roommate' 8='(8) Bfriend/gfriend' 9='(9) Alone' 10='(10) Military'
                  11='(11) Other' 12='(12) Mother/other (reltd or not)'
                  13='(13) Father/other (reltd or not)' 14='(14) Mother/father/other'
                  15='(15) Relatives (not parents)' 16='(16) In-laws'
                  17='(17) Spouse and in-laws' 18='(18) Prison' 19='(19) Spouse and parents'
                  20='(20) Boyfr/girlfr/parents' 21='(21) Boyfr/girlfr/in-laws'
                  22='(22) Boyfr/girlfr' 23='(23) Alone w/own children' ;
  VALUE y7_58fff  1='(1) Mother and Father' 2='(2) Mother only' 3='(3) Father only'
                  4='(4) Mother/Stepfather' 5='(5) Father/Stepmother' 6='(6) Spouse'
                  7='(7) Roommate' 8='(8) Bfriend/gfriend' 9='(9) Alone' 10='(10) Military'
                  11='(11) Other' 12='(12) Mother/other (reltd or not)'
                  13='(13) Father/other (reltd or not)' 14='(14) Mother/father/other'
                  15='(15) Relatives (not parents)' 16='(16) In-laws'
                  17='(17) Spouse and in-laws' 18='(18) Prison' 19='(19) Spouse and parents'
                  20='(20) Boyfr/girlfr/parents' 21='(21) Boyfr/girlfr/in-laws'
                  22='(22) Boyfr/girlfr' 23='(23) Alone w/own children' ;
  VALUE y7_59fff  1='(1) Mother and Father' 2='(2) Mother only' 3='(3) Father only'
                  4='(4) Mother/Stepfather' 5='(5) Father/Stepmother' 6='(6) Spouse'
                  7='(7) Roommate' 8='(8) Bfriend/gfriend' 9='(9) Alone' 10='(10) Military'
                  11='(11) Other' 12='(12) Mother/other (reltd or not)'
                  13='(13) Father/other (reltd or not)' 14='(14) Mother/father/other'
                  15='(15) Relatives (not parents)' 16='(16) In-laws'
                  17='(17) Spouse and in-laws' 18='(18) Prison' 19='(19) Spouse and parents'
                  20='(20) Boyfr/girlfr/parents' 21='(21) Boyfr/girlfr/in-laws'
                  22='(22) Boyfr/girlfr' 23='(23) Alone w/own children' ;
  VALUE y7_60fff  1='(1) Not a problem' 2='(2) Somewhat of a problem' 3='(3) Big problem' ;
  VALUE y7_61fff  1='(1) Not a problem' 2='(2) Somewhat of a problem' 3='(3) Big problem' ;
  VALUE y7_62fff  1='(1) Not a problem' 2='(2) Somewhat of a problem' 3='(3) Big problem' ;
  VALUE y7_63fff  1='(1) Not a problem' 2='(2) Somewhat of a problem' 3='(3) Big problem' ;
  VALUE y7_64fff  1='(1) Not a problem' 2='(2) Somewhat of a problem' 3='(3) Big problem' ;
  VALUE y7_65fff  1='(1) Not a problem' 2='(2) Somewhat of a problem' 3='(3) Big problem' ;
  VALUE y7_66fff  1='(1) Not a problem' 2='(2) Somewhat of a problem' 3='(3) Big problem' ;
  VALUE y7_67fff  1='(1) Not a problem' 2='(2) Somewhat of a problem' 3='(3) Big problem' ;
  VALUE y7_68fff  1='(1) Not a problem' 2='(2) Somewhat of a problem' 3='(3) Big problem' ;
  VALUE y7_69fff  1='(1) Not a problem' 2='(2) Somewhat of a problem' 3='(3) Big problem' ;
  VALUE y7_70fff  1='(1) Not a problem' 2='(2) Somewhat of a problem' 3='(3) Big problem' ;
  VALUE y7_71fff  1='(1) Not a problem' 2='(2) Somewhat of a problem' 3='(3) Big problem' ;
  VALUE y7_72fff  1='(1) Not a problem' 2='(2) Somewhat of a problem' 3='(3) Big problem' ;
  VALUE y7_73fff  1='(1) Not a problem' 2='(2) Somewhat of a problem' 3='(3) Big problem' ;
  VALUE y7_74fff  1='(1) Not a problem' 2='(2) Somewhat of a problem' 3='(3) Big problem' ;
  VALUE y7_75fff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_76fff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_77fff  1='(1) Not important at all' 2='(2) Not too important'
                  3='(3) Somewhat important' 4='(4) Pretty important'
                  5='(5) Very important' ;
  VALUE y7_78fff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_79fff  0='(0) > than once aftn/weekday' 1='(1) one aftn/weekday'
                  2='(2) two aftn/weekday' 3='(3) three aftn/weekday'
                  4='(4) four aftn/weekday' 5='(5) five aftn/weekday' ;
  VALUE y7_80fff  0='(0) > than once even/weekday' 1='(1) 1 evenings/weekday'
                  2='(2) 2 evenings/weekday' 3='(3) three evenings/weekday'
                  4='(4) four evenings/weekday' 5='(5) five evenings/weekday' ;
  VALUE y7_81fff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_83fff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_84fff  1='(1) Not at all' 2='(2) In a few ways' 3='(3) In some ways'
                  4='(4) In most ways' 5='(5) In all ways' ;
  VALUE y7_85fff  1='(1) Not important at all' 2='(2) Not too important'
                  3='(3) Somewhat important' 4='(4) Pretty important'
                  5='(5) Very important' ;
  VALUE y7_86fff  1='(1) very dissatisfied' 2='(2) Somewhat dissatisfied' 3='(3) Neither'
                  4='(4) Somewhat satisfied' 5='(5) Very satisfied' ;
  VALUE y7_87fff  1='(1) None' 2='(2) A few' 3='(3) Some' 4='(4) Most' 5='(5) All' ;
  VALUE y7_88fff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_89fff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_90fff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_91fff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_92fff  1='(1) Academic Program' 2='(2) Business/Vocational School'
                  3='(3) Other' 4='(4) No' ;
  VALUE y7_93fff  5='(5) 5th grade' 6='(6) 6th grade' 7='(7) 7th grade' 8='(8) 8th grade'
                  9='(9) 9th grade' 10='(10) 10th grade' 11='(11) 11th grade'
                  12='(12) 12th grade' 13='(13) 1st college' 14='(14) 2nd college'
                  15='(15) 3rd college' 16='(16) 4th college' 17='(17) 1st grad sch' ;
  VALUE y7_94fff  74='(74) 1974' 75='(75) 1975' 76='(76) 1976' 77='(77) 1977' 78='(78) 1978' 79='(79) 1979'
                  80='(80) 1980' 81='(81) 1981' 82='(82) 1982' 83='(83) 1983' 84='(84) 1984' 85='(85) 1985'
                  99='(99) Dont Remember' ;
  VALUE y7_95fff  1='(1) Very dissatisfied' 2='(2) Somewhat dissatisfied' 3='(3) Neither'
                  4='(4) Somewhat satisfied' 5='(5) Very satisfied' ;
  VALUE y7_96fff  1='(1) Not important at all' 2='(2) Not too important'
                  3='(3) Somewhat important' 4='(4) Pretty important'
                  5='(5) Very important' ;
  VALUE y7_97fff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_98fff  5='(5) 5th grade' 6='(6) 6th grade' 7='(7) 7th grade' 8='(8) 8th grade'
                  9='(9) 9th grade' 10='(10) 10th grade' 11='(11) 11th grade'
                  12='(12) 12th grade' 13='(13) 1st college' 14='(14) 2nd college'
                  15='(15) 3rd college' 16='(16) 4th college' 17='(17) Graduate School' ;
  VALUE y7_99fff  1='(1) Fs Mostly' 2='(2) Ds Mostly' 3='(3) Cs Mostly' 4='(4) Bs Mostly'
                  5='(5) As Mostly' ;
  VALUE y7_100ff  0='(0) > than once aftn/weekday' 1='(1) one aftn/weekday'
                  2='(2) two aftn/weekday' 3='(3) three aftn/weekday'
                  4='(4) four aftn/weekday' 5='(5) five aftn/weekday' ;
  VALUE y7_101ff  0='(0) > than once even/weekday' 1='(1) 1 evenings/weekday'
                  2='(2) 2 evenings/weekday' 3='(3) three evenings/weekday'
                  4='(4) four evenings/weekday' 5='(5) five evenings/weekday' ;
  VALUE y7_102ff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_103ff  99='(99) 99 hours or more' ;
  VALUE y7_104ff  1='(1) Not important at all' 2='(2) Not too important'
                  3='(3) Somewhat important' 4='(4) Pretty important'
                  5='(5) Very important' ;
  VALUE y7_105ff  1='(1) Very dissatisfied' 2='(2) Somewhat dissatisfied' 3='(3) Neither'
                  4='(4) Somewhat satisfied' 5='(5) Very satisfied' ;
  VALUE y7_106ff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_107ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_108ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_109ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_110ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_111ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_112ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_113ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_114ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_115ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_116ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_117ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_118ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_119ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_121ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_122ff  1='(1) Not important at all' 2='(2) Not too important'
                  3='(3) Somewhat important' 4='(4) Pretty important'
                  5='(5) Very important' ;
  VALUE y7_123ff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_124ff  1='(1) 1 job' 2='(2) 2 jobs' 3='(3) 3 jobs' 4='(4) 4 jobs' 5='(5) 5 jobs'
                  6='(6) 6 jobs' 7='(7) 7 jobs' 8='(8) 8 jobs' 9='(9) 9 jobs' 10='(10) 10 jobs' ;
  VALUE y7_149ff  1='(1) Not important at all' 2='(2) Not too important'
                  3='(3) Somewhat important' 4='(4) Pretty important'
                  5='(5) Very important' ;
  VALUE y7_150ff  1='(1) Very dissatisfied' 2='(2) Somewhat dissatisfied' 3='(3) Neither'
                  4='(4) Somewhat satisfied' 5='(5) Very satisfied' ;
  VALUE y7_151ff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_152ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_153ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_154ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_155ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_156ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_157ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_158ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_159ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_160ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_161ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_162ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_163ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_165ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_166ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_167ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_168ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_169ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_170ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_171ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_172ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_173ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_174ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_175ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_176ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_177ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_178ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_179ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_180ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_181ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_182ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_183ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_184ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_185ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_187ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_188ff  1='(1) 1 job' 2='(2) 2 jobs' 3='(3) 3 jobs' 4='(4) 4 jobs' 5='(5) 5 jobs'
                  6='(6) 6 jobs' 7='(7) 7 jobs' 8='(8) 8 jobs' 9='(9) 9 jobs' 10='(10) 10 jobs' ;
  VALUE y7_210ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_211ff  1='(1) 1 job' 2='(2) 2 jobs' 3='(3) 3 jobs' 4='(4) 4 jobs' 5='(5) 5 jobs'
                  6='(6) 6 jobs' 7='(7) 7 jobs' 8='(8) 8 jobs' 9='(9) 9 jobs' 10='(10) 10 jobs' ;
  VALUE y7_233ff  1='(1) Spouse' 2='(2) Girlfr/boyfr (opposite sex)'
                  3='(3) Girlfr/boyfr (same sex)' ;
  VALUE y7_234ff  1='(1) (>1 month' 2='(2) 2 months' 3='(3) 3 months' 4='(4) 4 months'
                  5='(5) 5 months' 6='(6) 6 months' 7='(7) 7 months' 8='(8) 8 months'
                  9='(9) 9 months' 10='(10) 10 months' 11='(11) 11 months' 12='(12) 12 months' ;
  VALUE y7_235ff  1='(1) Not important at all' 2='(2) Not too important'
                  3='(3) Somewhat important' 4='(4) Pretty important'
                  5='(5) Very important' ;
  VALUE y7_236ff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_237ff  1='(1) Not at all' 2='(2) In a few ways' 3='(3) In some ways'
                  4='(4) In most ways' 5='(5) In all ways' ;
  VALUE y7_238ff  1='(1) very dissatisfied' 2='(2) Somewhat dissatisfied' 3='(3) Neither'
                  4='(4) Somewhat satisfied' 5='(5) Very satisfied' ;
  VALUE y7_239ff  1='(1) None' 2='(2) A few' 3='(3) Some' 4='(4) Most' 5='(5) All' ;
  VALUE y7_240ff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_241ff  1='(1) very dissatisfied' 2='(2) Somewhat dissatisfied' 3='(3) Neither'
                  4='(4) Somewhat satisfied' 5='(5) Very satisfied' ;
  VALUE y7_242ff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_243ff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_244ff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_245ff  0='(0) No' 1='(1) Once' 2='(2) Two or three times'
                  3='(3) Four or more times' ;
  VALUE y7_246ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_247ff  1='(1) 1 job' 2='(2) 2 jobs' 3='(3) 3 jobs' 4='(4) 4 jobs' 5='(5) 5 jobs'
                  6='(6) 6 jobs' 7='(7) 7 jobs' 8='(8) 8 jobs' 9='(9) 9 jobs' 10='(10) 10 jobs' ;
  VALUE y7_261ff  6='(6) 6th grade' 7='(7) 7th grade' 8='(8) 8th grade' 9='(9) 9th grade'
                  10='(10) 10th grade' 11='(11) 11th grade' 12='(12) 12th grade'
                  13='(13) 1st college' 14='(14) 2nd college' 15='(15) 3rd college'
                  16='(16) Bachelors degree' 17='(17) Graduate degrees' 99='(99) Dont Know' ;
  VALUE y7_263ff  1='(1) Amount given is only a guess' ;
  VALUE y7_264ff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times' 4='(4) Monthly'
                  5='(5) Weekly (or more often)' ;
  VALUE y7_265ff  0='(0) >1 month' 1='(1) 1 month' 2='(2) 2 months' 3='(3) 3 months'
                  4='(4) 4 months' 5='(5) 5 months' 6='(6) 6 months' 7='(7) 7 months'
                  8='(8) 8 months' 9='(9) 9 months' 10='(10) 10 months' 11='(11) 11 months'
                  12='(12) 12 months' ;
  VALUE y7_266ff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times' 4='(4) Monthly'
                  5='(5) Weekly (or more often)' ;
  VALUE y7_267ff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_268ff  1='(1) Not important at all' 2='(2) Not too important'
                  3='(3) Somewhat important' 4='(4) Pretty important'
                  5='(5) Very important' ;
  VALUE y7_269ff  1='(1) very dissatisfied' 2='(2) Somewhat dissatisfied' 3='(3) Neither'
                  4='(4) Somewhat satisfied' 5='(5) Very satisfied' ;
  VALUE y7_270ff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_271ff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times' 4='(4) Monthly'
                  5='(5) Weekly (or more often)' ;
  VALUE y7_272ff  0='(0) >1 month' 1='(1) 1 month' 2='(2) 2 months' 3='(3) 3 months'
                  4='(4) 4 months' 5='(5) 5 months' 6='(6) 6 months' 7='(7) 7 months'
                  8='(8) 8 months' 9='(9) 9 months' 10='(10) 10 months' ;
  VALUE y7_273ff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times' 4='(4) Monthly'
                  5='(5) Weekly (or more often)' ;
  VALUE y7_274ff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_275ff  1='(1) Not important at all' 2='(2) Not too important'
                  3='(3) Somewhat important' 4='(4) Pretty important'
                  5='(5) Very important' ;
  VALUE y7_276ff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_277ff  1='(1) Very dissatisfied' 2='(2) Somewhat dissatisfied' 3='(3) Neither'
                  4='(4) Somewhat satisfied' 5='(5) Very satisfied' ;
  VALUE y7_278ff  0='(0) >No wkday aftn with fam' 1='(1) 1 Wkday aftn with fam'
                  2='(2) 2 Wkday aftn with fam' 3='(3) 3 Wkday aftn with fam'
                  4='(4) 4 Wkday aftn with fam' 5='(5) 5 Wkday aftn with fam' ;
  VALUE y7_279ff  0='(0) >No wkday even with fam' 1='(1) 1 Wkday even with fam'
                  2='(2) 2 Wkday even with fam' 3='(3) 3 Wkday even with fam'
                  4='(4) 4 Wkday even with fam' 5='(5) 5 Wkday even with fam' ;
  VALUE y7_280ff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_281ff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times' 4='(4) Monthly'
                  5='(5) Weekly (or more often)' ;
  VALUE y7_282ff  0='(0) >1 month' 1='(1) 1 month' 2='(2) 2 months' 3='(3) 3 months'
                  4='(4) 4 months' 5='(5) 5 months' 6='(6) 6 months' 7='(7) 7 months'
                  8='(8) 8 months' 9='(9) 9 months' 10='(10) 10 months' 11='(11) 11 months'
                  12='(12) 12 months' ;
  VALUE y7_283ff  1='(1) Never' 2='(2) Once or twice' 3='(3) 3 or 4 times' 4='(4) Monthly'
                  5='(5) Weekly (or more often)' ;
  VALUE y7_284ff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_285ff  1='(1) Not important at all' 2='(2) Not too important'
                  3='(3) Somewhat important' 4='(4) Pretty important'
                  5='(5) Very important' ;
  VALUE y7_286ff  1='(1) very dissatisfied' 2='(2) Somewhat dissatisfied' 3='(3) Neither'
                  4='(4) Somewhat satisfied' 5='(5) Very satisfied' ;
  VALUE y7_287ff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_288ff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_289ff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_290ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_291ff  1='(1) Jan' 2='(2) Feb' 3='(3) Mar' 4='(4) Apr' 5='(5) May' 6='(6) Jun' 7='(7) Jul'
                  8='(8) Aug' 9='(9) Sept' 10='(10) Oct' 11='(11) Nov' 12='(12) Dec' 99='(99) Dont know' ;
  VALUE y7_292ff  70='(70) 1970' 71='(71) 1971' 72='(72) 1972' 73='(73) 1973' 74='(74) 1974' 75='(75) 1975'
                  76='(76) 1976' 77='(77) 1977' 78='(78) 1978' 79='(79) 1979' 80='(80) 1980' 81='(81) 1981'
                  82='(82) 1982' 83='(83) 1983' 84='(84) 1984' 85='(85) 1985' 86='(86) 1986' 87='(87) 1987' ;
  VALUE y7_293ff  1='(1) Boy' 2='(2) Girl' ;
  VALUE y7_294ff  1='(1) Yes' 2='(2) No' ;
  VALUE y7_295ff  1='(1) No' 2='(2) Yes' 9='(9) Dont Know' ;
  VALUE y7_296ff  1='(1) Jan' 2='(2) Feb' 3='(3) Mar' 4='(4) Apr' 5='(5) May' 6='(6) Jun' 7='(7) Jul'
                  8='(8) Aug' 9='(9) Sept' 10='(10) Oct' 11='(11) Nov' 12='(12) Dec' ;
  VALUE y7_297ff  70='(70) 1970' 71='(71) 1971' 72='(72) 1972' 73='(73) 1973' 74='(74) 1974' 75='(75) 1975'
                  76='(76) 1976' 77='(77) 1977' 78='(78) 1978' 79='(79) 1979' 80='(80) 1980' 81='(81) 1981'
                  82='(82) 1982' 83='(83) 1983' 84='(84) 1984' 85='(85) 1985' 86='(86) 1986' 87='(87) 1987' ;
  VALUE y7_298ff  1='(1) Boy' 2='(2) Girl' ;
  VALUE y7_299ff  1='(1) Yes' 2='(2) No' ;
  VALUE y7_300ff  1='(1) No' 2='(2) Yes' 9='(9) Dont Know' ;
  VALUE y7_301ff  1='(1) Jan' 2='(2) Feb' 3='(3) Mar' 4='(4) Apr' 5='(5) May' 6='(6) Jun' 7='(7) Jul'
                  8='(8) Aug' 9='(9) Sept' 10='(10) Oct' 11='(11) Nov' 12='(12) Dec' ;
  VALUE y7_302ff  70='(70) 1970' 71='(71) 1971' 72='(72) 1972' 73='(73) 1973' 74='(74) 1974' 75='(75) 1975'
                  76='(76) 1976' 77='(77) 1977' 78='(78) 1978' 79='(79) 1979' 80='(80) 1980' 81='(81) 1981'
                  82='(82) 1982' 83='(83) 1983' 84='(84) 1984' 85='(85) 1985' 86='(86) 1986' 87='(87) 1987' ;
  VALUE y7_303ff  1='(1) Boy' 2='(2) Girl' ;
  VALUE y7_304ff  1='(1) Yes' 2='(2) No' ;
  VALUE y7_305ff  1='(1) No' 2='(2) Yes' 9='(9) Dont Know' ;
  VALUE y7_306ff  1='(1) Jan' 2='(2) Feb' 3='(3) Mar' 4='(4) Apr' 5='(5) May' 6='(6) Jun' 7='(7) Jul'
                  8='(8) Aug' 9='(9) Sept' 10='(10) Oct' 11='(11) Nov' 12='(12) Dec' ;
  VALUE y7_307ff  70='(70) 1970' 71='(71) 1971' 72='(72) 1972' 73='(73) 1973' 74='(74) 1974' 75='(75) 1975'
                  76='(76) 1976' 77='(77) 1977' 78='(78) 1978' 79='(79) 1979' 80='(80) 1980' 81='(81) 1981'
                  82='(82) 1982' 83='(83) 1983' 84='(84) 1984' 85='(85) 1985' 86='(86) 1986' 87='(87) 1987' ;
  VALUE y7_308ff  1='(1) Boy' 2='(2) Girl' ;
  VALUE y7_309ff  1='(1) Yes' 2='(2) No' ;
  VALUE y7_310ff  1='(1) No' 2='(2) Yes' 9='(9) Dont Know' ;
  VALUE y7_311ff  1='(1) Jan' 2='(2) Feb' 3='(3) Mar' 4='(4) Apr' 5='(5) May' 6='(6) Jun' 7='(7) Jul'
                  8='(8) Aug' 9='(9) Sept' 10='(10) Oct' 11='(11) Nov' 12='(12) Dec' ;
  VALUE y7_312ff  70='(70) 1970' 71='(71) 1971' 72='(72) 1972' 73='(73) 1973' 74='(74) 1974' 75='(75) 1975'
                  76='(76) 1976' 77='(77) 1977' 78='(78) 1978' 79='(79) 1979' 80='(80) 1980' 81='(81) 1981'
                  82='(82) 1982' 83='(83) 1983' 84='(84) 1984' 85='(85) 1985' 86='(86) 1986' 87='(87) 1987' ;
  VALUE y7_313ff  1='(1) Boy' 2='(2) Girl' ;
  VALUE y7_314ff  1='(1) Yes' 2='(2) No' ;
  VALUE y7_315ff  1='(1) No' 2='(2) Yes' 9='(9) Dont Know' ;
  VALUE y7_316ff  1='(1) Jan' 2='(2) Feb' 3='(3) Mar' 4='(4) Apr' 5='(5) May' 6='(6) Jun' 7='(7) Jul'
                  8='(8) Aug' 9='(9) Sept' 10='(10) Oct' 11='(11) Nov' 12='(12) Dec' ;
  VALUE y7_317ff  70='(70) 1970' 71='(71) 1971' 72='(72) 1972' 73='(73) 1973' 74='(74) 1974' 75='(75) 1975'
                  76='(76) 1976' 77='(77) 1977' 78='(78) 1978' 79='(79) 1979' 80='(80) 1980' 81='(81) 1981'
                  82='(82) 1982' 83='(83) 1983' 84='(84) 1984' 85='(85) 1985' 86='(86) 1986' 87='(87) 1987' ;
  VALUE y7_318ff  1='(1) Boy' 2='(2) Girl' ;
  VALUE y7_319ff  1='(1) Yes' 2='(2) No' ;
  VALUE y7_320ff  1='(1) No' 2='(2) Yes' 9='(9) Dont Know' ;
  VALUE y7_322ff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_323ff  1='(1) very dissatisfied' 2='(2) Somewhat dissatisfied' 3='(3) Neither'
                  4='(4) Somewhat satisfied' 5='(5) Very satisfied' ;
  VALUE y7_324ff  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_325ff  1='(1) Never (Once or twice)' 2='(2) Several times a year'
                  3='(3) Once or twice a month' 4='(4) Once a week'
                  5='(5) Several times a week' ;
  VALUE y7_326ff  1='(1) Not important at all' 2='(2) Not too important'
                  3='(3) Somewhat important' 4='(4) Pretty important'
                  5='(5) Very important' ;
  VALUE y7_327ff  1='(1) Not important at all' 3='(3) Somewhat important'
                  5='(5) Very important' ;
  VALUE y7_328ff  1='(1) Poor' 3='(3) Fair' 5='(5) Good' 8='(8) Already achieved' ;
  VALUE y7_329ff  1='(1) Not important at all' 3='(3) Somewhat important'
                  5='(5) Very important' ;
  VALUE y7_330ff  1='(1) Poor' 3='(3) Fair' 5='(5) Good' 8='(8) Already achieved' ;
  VALUE y7_331ff  1='(1) Not important at all' 3='(3) Somewhat important'
                  5='(5) Very important' ;
  VALUE y7_332ff  1='(1) Poor' 3='(3) Fair' 5='(5) Good' 8='(8) Already achieved' ;
  VALUE y7_333ff  1='(1) Not important at all' 3='(3) Somewhat important'
                  5='(5) Very important' ;
  VALUE y7_334ff  1='(1) Poor' 3='(3) Fair' 5='(5) Good' 8='(8) Already achieved' ;
  VALUE y7_335ff  1='(1) Not important at all' 3='(3) Somewhat important'
                  5='(5) Very important' ;
  VALUE y7_336ff  1='(1) Poor' 3='(3) Fair' 5='(5) Good' 8='(8) Already achieved' ;
  VALUE y7_337ff  1='(1) Not important at all' 3='(3) Somewhat important'
                  5='(5) Very important' ;
  VALUE y7_338ff  1='(1) Poor' 3='(3) Fair' 5='(5) Good' 8='(8) Already achieved' ;
  VALUE y7_339ff  1='(1) Not important at all' 3='(3) Somewhat important'
                  5='(5) Very important' ;
  VALUE y7_340ff  1='(1) Poor' 3='(3) Fair' 5='(5) Good' 8='(8) Already achieved' ;
  VALUE y7_341ff  1='(1) Not important at all' 3='(3) Somewhat important'
                  5='(5) Very important' ;
  VALUE y7_342ff  1='(1) Poor' 3='(3) Fair' 5='(5) Good' 8='(8) Already achieved' ;
  VALUE y7_343ff  1='(1) Not important at all' 3='(3) Somewhat important'
                  5='(5) Very important' ;
  VALUE y7_344ff  1='(1) Poor' 3='(3) Fair' 5='(5) Good' 8='(8) Already achieved' ;
  VALUE y7_345ff  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_346ff  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_347ff  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_348ff  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_349ff  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_350ff  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_351ff  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_352ff  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_353ff  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_354ff  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_355ff  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_356ff  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_357ff  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_358ff  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_359ff  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_360ff  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_361ff  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_362ff  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_363ff  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_364ff  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_365ff  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_366ff  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_367ff  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_368ff  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_369ff  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_370ff  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_371ff  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_372ff  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_373ff  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_374ff  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_375ff  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_376ff  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_377ff  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_378ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_379ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_380ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_381ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_382ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_383ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_384ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_385ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_386ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_387ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_388ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_389ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_390ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_391ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_392ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_393ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_394ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_395ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_396ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_397ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_398ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_399ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_400ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_401ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_402ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_403ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_404ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_405ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_406ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_407ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_408ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_409ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_410ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_411ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_412ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_413ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_414ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_415ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_416ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_417ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_418ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_419ff  1='(1) Strongly approve' 2='(2) Approve'
                  3='(3) Neither approve nor disapprove' 4='(4) Disapprove'
                  5='(5) Strongly disapprove' ;
  VALUE y7_420ff  1='(1) Not wrong at all' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE y7_421ff  1='(1) Not wrong at all' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE y7_422ff  1='(1) Not wrong at all' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE y7_423ff  1='(1) Not wrong at all' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE y7_424ff  1='(1) Not wrong at all' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE y7_425ff  1='(1) Not wrong at all' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE y7_426ff  1='(1) Not wrong at all' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE y7_427ff  1='(1) Not wrong at all' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE y7_428ff  1='(1) Not wrong at all' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE y7_429ff  1='(1) Not wrong at all' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE y7_430ff  1='(1) Not wrong at all' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE y7_431ff  1='(1) Not wrong at all' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE y7_432ff  1='(1) Not wrong at all' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE y7_433ff  1='(1) Not wrong at all' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE y7_434ff  1='(1) Not wrong at all' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE y7_435ff  1='(1) Not wrong at all' 2='(2) A little bit wrong' 3='(3) Wrong'
                  4='(4) Very wrong' ;
  VALUE y7_436ff  1='(1) None of them' 2='(2) Very few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE y7_437ff  1='(1) None of them' 2='(2) Very few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE y7_438ff  1='(1) None of them' 2='(2) Very few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE y7_439ff  1='(1) None of them' 2='(2) Very few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE y7_440ff  1='(1) None of them' 2='(2) Very few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE y7_441ff  1='(1) None of them' 2='(2) Very few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE y7_442ff  1='(1) None of them' 2='(2) Very few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE y7_443ff  1='(1) None of them' 2='(2) Very few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE y7_444ff  1='(1) None of them' 2='(2) Very few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE y7_445ff  1='(1) None of them' 2='(2) Very few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE y7_446ff  1='(1) None of them' 2='(2) Very few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE y7_447ff  1='(1) None of them' 2='(2) Very few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE y7_448ff  1='(1) None of them' 2='(2) Very few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE y7_449ff  1='(1) None of them' 2='(2) Very few of them' 3='(3) Some of them'
                  4='(4) Most of them' 5='(5) All of them' ;
  VALUE y7_451ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_453ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_455ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_457ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_459ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_461ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_463ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_465ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_467ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_469ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_471ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_473ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_475ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_477ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_479ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_481ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_483ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_485ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_487ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_489ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_491ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_493ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_495ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_497ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_499ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_501ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_503ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_505ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_507ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_509ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_511ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_513ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_515ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_517ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_519ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_521ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_523ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_525ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_526ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_527ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_528ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_529ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_530ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_531ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_532ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_533ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_534ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_535ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_536ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_537ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_538ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_539ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_540ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_541ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_542ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_543ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_544ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_545ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_546ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_547ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_548ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_549ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_550ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_551ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_552ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_553ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_554ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_555ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_556ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_557ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_558ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_559ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_560ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_561ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_562ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_563ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_564ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_565ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_566ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_567ff  1='(1) Inappropriate' 2='(2) Appropriate but trivial'
                  3='(3) Appropriate and nontrivial' ;
  VALUE y7_569ff  0='(0) Alone' 1='(1) 1 person' 2='(2) 2 people' 3='(3) 3 people'
                  4='(4) 4 people' 5='(5) 5 people' 6='(6) 6 people' 7='(7) 7 people'
                  8='(8) 8 people' 9='(9) 9 people' ;
  VALUE y7_570ff  0='(0) No' ;
  VALUE y7_571ff  0='(0) No' ;
  VALUE y7_573ff  0='(0) Alone' 1='(1) 1 person' 2='(2) 2 people' 3='(3) 3 people'
                  4='(4) 4 people' 5='(5) 5 people' 6='(6) 6 people' 7='(7) 7 people'
                  8='(8) 8 people' 9='(9) 9 people' ;
  VALUE y7_578ff  0='(0) No' ;
  VALUE y7_579ff  0='(0) No' ;
  VALUE y7_580ff  1='(1) Car' 2='(2) Truck' 3='(3) Motorcycle' 4='(4) Other' ;
  VALUE y7_581ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_582ff  1='(1) Family member' 2='(2) Friend' 3='(3) Other' ;
  VALUE y7_583ff  1='(1) Had keys' 2='(2) Hot wired' 3='(3) Keys in ignition' 4='(4) Other' ;
  VALUE y7_584ff  1='(1) Resping' 2='(2) Keep' 3='(3) Keep parts' 4='(4) Sell' 5='(5) Sell parts'
                  6='(6) Other' ;
  VALUE y7_585ff  0='(0) Alone' 1='(1) 1 person' 2='(2) 2 people' 3='(3) 3 people'
                  4='(4) 4 people' 5='(5) 5 people' 6='(6) 6 people' 7='(7) 7 people'
                  8='(8) 8 people' 9='(9) 9 people' ;
  VALUE y7_586ff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking and drugs' ;
  VALUE y7_587ff  0='(0) No' ;
  VALUE y7_588ff  0='(0) No' ;
  VALUE y7_589ff  1='(1) Car' 2='(2) Truck' 3='(3) Motorcycle' 4='(4) Other' ;
  VALUE y7_590ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_591ff  1='(1) Family member' 2='(2) Friend' 3='(3) Other' ;
  VALUE y7_592ff  1='(1) Had keys' 2='(2) Hot wired' 3='(3) Keys in ignition' 4='(4) Other' ;
  VALUE y7_593ff  1='(1) Resping' 2='(2) Keep' 3='(3) Keep parts' 4='(4) Sell' 5='(5) Sell parts'
                  6='(6) Other' ;
  VALUE y7_594ff  0='(0) Alone' 1='(1) 1 person' 2='(2) 2 people' 3='(3) 3 people'
                  4='(4) 4 people' 5='(5) 5 people' 6='(6) 6 people' 7='(7) 7 people'
                  8='(8) 8 people' 9='(9) 9 people' ;
  VALUE y7_595ff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking and drugs' ;
  VALUE y7_596ff  0='(0) No' ;
  VALUE y7_597ff  0='(0) No' ;
  VALUE y7_598ff  1='(1) Car' 2='(2) Truck' 3='(3) Motorcycle' 4='(4) Other' ;
  VALUE y7_599ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_600ff  1='(1) Family member' 2='(2) Friend' 3='(3) Other' ;
  VALUE y7_601ff  1='(1) Had keys' 2='(2) Hot wired' 3='(3) Keys in ignition' 4='(4) Other' ;
  VALUE y7_602ff  1='(1) Riding' 2='(2) Keep' 3='(3) Keep parts' 4='(4) Sell' 5='(5) Sell parts'
                  6='(6) Other' ;
  VALUE y7_603ff  0='(0) Alone' 1='(1) 1 person' 2='(2) 2 people' 3='(3) 3 people'
                  4='(4) 4 people' 5='(5) 5 people' 6='(6) 6 people' 7='(7) 7 people'
                  8='(8) 8 people' 9='(9) 9 people' ;
  VALUE y7_604ff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking and drugs' ;
  VALUE y7_605ff  0='(0) No' ;
  VALUE y7_606ff  0='(0) No' ;
  VALUE y7_608ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_609ff  1='(1) Retail store' 2='(2) Private home' 3='(3) Auto' 4='(4) Work place'
                  5='(5) College/school' 6='(6) Construction site' 7='(7) Warehouse'
                  8='(8) Other' ;
  VALUE y7_610ff  0='(0) Alone' 1='(1) 1 person' 2='(2) 2 people' 3='(3) 3 people'
                  4='(4) 4 people' 5='(5) 5 people' 6='(6) 6 people' 7='(7) 7 people'
                  8='(8) 8 people' 9='(9) 9 people' ;
  VALUE y7_611ff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking and drugs' ;
  VALUE y7_612ff  0='(0) No' ;
  VALUE y7_613ff  0='(0) No' ;
  VALUE y7_615ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_616ff  1='(1) Retail store' 2='(2) Private home' 3='(3) Auto' 4='(4) Work place'
                  5='(5) College/school' 6='(6) Construction site' 7='(7) Warehouse'
                  8='(8) Other' ;
  VALUE y7_617ff  0='(0) Alone' 1='(1) 1 person' 2='(2) 2 people' 3='(3) 3 people'
                  4='(4) 4 people' 5='(5) 5 people' 6='(6) 6 people' 7='(7) 7 people'
                  8='(8) 8 people' 9='(9) 9 people' ;
  VALUE y7_618ff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking and drugs' ;
  VALUE y7_619ff  0='(0) No' ;
  VALUE y7_620ff  0='(0) No' ;
  VALUE y7_622ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_623ff  1='(1) Retail store' 2='(2) Private home' 3='(3) Auto' 4='(4) Work place'
                  5='(5) College/school' 6='(6) Construction site' 7='(7) Warehouse'
                  8='(8) Other' ;
  VALUE y7_624ff  0='(0) Alone' 1='(1) 1 person' 2='(2) 2 people' 3='(3) 3 people'
                  4='(4) 4 people' 5='(5) 5 people' 6='(6) 6 people' 7='(7) 7 people'
                  8='(8) 8 people' 9='(9) 9 people' ;
  VALUE y7_625ff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking and drugs' ;
  VALUE y7_626ff  0='(0) No' ;
  VALUE y7_627ff  0='(0) No' ;
  VALUE y7_628ff  1='(1) Try to buy' 2='(2) Try to sell' 3='(3) Try to hold' 4='(4) Buy'
                  5='(5) Sell' 6='(6) Hold' 7='(7) Other' ;
  VALUE y7_630ff  0='(0) Alone' 1='(1) 1 person' 2='(2) 2 people' 3='(3) 3 people'
                  4='(4) 4 people' 5='(5) 5 people' 6='(6) 6 people' 7='(7) 7 people'
                  8='(8) 8 people' 9='(9) 9 people' ;
  VALUE y7_631ff  0='(0) No' ;
  VALUE y7_632ff  0='(0) No' ;
  VALUE y7_633ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_634ff  0='(0) Alone' 1='(1) 1 person' 2='(2) 2 people' 3='(3) 3 people'
                  4='(4) 4 people' 5='(5) 5 people' 6='(6) 6 people' 7='(7) 7 people'
                  8='(8) 8 people' 9='(9) 9 people' ;
  VALUE y7_635ff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking and drugs' ;
  VALUE y7_636ff  0='(0) No' ;
  VALUE y7_637ff  0='(0) No' ;
  VALUE y7_638ff  1='(1) Knife, cutting/stabbing thing'
                  2='(2) Chain, bat/hitting thing' 3='(3) Hard knuckles/numchucks'
                  4='(4) Gun and other firearm' 5='(5) Other'
                  6='(6) Mixed weapons excluding gun'
                  7='(7) Mixed weapons including gun'
                  8='(8) Mixed weapons-no gun or knife types' ;
  VALUE y7_639ff  0='(0) $0' 1='(1) $1' 2='(2) $2' 3='(3) $3' 4='(4) $4' 5='(5) $5' 6='(6) $6' 7='(7) $7'
                  8='(8) $8' 9='(9) $9' ;
  VALUE y7_640ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_641ff  0='(0) Alone' 1='(1) 1 person' 2='(2) 2 people' 3='(3) 3 people'
                  4='(4) 4 people' 5='(5) 5 people' 6='(6) 6 people' 7='(7) 7 people'
                  8='(8) 8 people' 9='(9) 9 people' ;
  VALUE y7_642ff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking and drugs' ;
  VALUE y7_643ff  0='(0) No' ;
  VALUE y7_644ff  0='(0) No' ;
  VALUE y7_645ff  1='(1) Hit' 2='(2) Beat/choked' 3='(3) Attacked with weapon' 4='(4) Other' ;
  VALUE y7_646ff  0='(0) No injury' 1='(1) Knocked down' 2='(2) Bruised' 3='(3) Cut/bleeding'
                  4='(4) Unconscious' 5='(5) Hospitalized'
                  6='(6) Required medical treatment' 7='(7) Other' ;
  VALUE y7_647ff  1='(1) A stranger' 2='(2) An acquaintance' 3='(3) A friend'
                  4='(4) Family member' 5='(5) Other' ;
  VALUE y7_648ff  0='(0) Alone' 1='(1) 1 person' 2='(2) 2 people' 3='(3) 3 people'
                  4='(4) 4 people' 5='(5) 5 people' 6='(6) 6 people' 7='(7) 7 people'
                  8='(8) 8 people' 9='(9) 9 people' ;
  VALUE y7_649ff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking and drugs' ;
  VALUE y7_650ff  0='(0) No' ;
  VALUE y7_651ff  0='(0) No' ;
  VALUE y7_652ff  1='(1) Hit' 2='(2) Beat/choked' 3='(3) Attacked with weapon' 4='(4) Other' ;
  VALUE y7_653ff  0='(0) No injury' 1='(1) Knocked down' 2='(2) Bruised' 3='(3) Cut/bleeding'
                  4='(4) Unconscious' 5='(5) Hospitalized'
                  6='(6) Required medical treatment' 7='(7) Other' ;
  VALUE y7_654ff  1='(1) A stranger' 2='(2) An acquaintance' 3='(3) A friend'
                  4='(4) Family member' 5='(5) Other' ;
  VALUE y7_655ff  0='(0) Alone' 1='(1) 1 person' 2='(2) 2 people' 3='(3) 3 people'
                  4='(4) 4 people' 5='(5) 5 people' 6='(6) 6 people' 7='(7) 7 people'
                  8='(8) 8 people' 9='(9) 9 people' ;
  VALUE y7_656ff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking and drugs' ;
  VALUE y7_657ff  0='(0) No' ;
  VALUE y7_658ff  0='(0) No' ;
  VALUE y7_659ff  1='(1) Hit' 2='(2) Beat/choked' 3='(3) Attacked with weapon' 4='(4) Other' ;
  VALUE y7_660ff  0='(0) No injury' 1='(1) Knocked down' 2='(2) Bruised' 3='(3) Cut/bleeding'
                  4='(4) Unconscious' 5='(5) Hospitalized'
                  6='(6) Required medical treatment' 7='(7) Other' ;
  VALUE y7_661ff  1='(1) A stranger' 2='(2) An acquaintance' 3='(3) A friend'
                  4='(4) Family member' 5='(5) Other' ;
  VALUE y7_662ff  0='(0) Alone' 1='(1) 1 person' 2='(2) 2 people' 3='(3) 3 people'
                  4='(4) 4 people' 5='(5) 5 people' 6='(6) 6 people' 7='(7) 7 people'
                  8='(8) 8 people' 9='(9) 9 people' ;
  VALUE y7_663ff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking and drugs' ;
  VALUE y7_664ff  0='(0) No' ;
  VALUE y7_665ff  0='(0) No' ;
  VALUE y7_666ff  1='(1) l-2 people' 2='(2) 3-5' 3='(3) More than 5 people' ;
  VALUE y7_667ff  1='(1) l-2 people' 2='(2) 3-5' 3='(3) More than 5 people' ;
  VALUE y7_668ff  0='(0) No weapons' 1='(1) Knives, cutting/stabbing things'
                  2='(2) Chains, bats/hitting things' 3='(3) Hard knuckles/numchucks'
                  4='(4) Guns and other firearms' 5='(5) Other'
                  6='(6) Mixed weapons excluding guns'
                  7='(7) Mixed weapons including guns'
                  8='(8) Mixed weapons-no gun or knife types' ;
  VALUE y7_669ff  0='(0) No injury' 1='(1) Knocked down' 2='(2) Bruised' 3='(3) Cut/bleeding'
                  4='(4) Unconscious' 5='(5) Hospitalized'
                  6='(6) Required medical treatment' 7='(7) Other' ;
  VALUE y7_670ff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking and drugs' ;
  VALUE y7_671ff  0='(0) No' ;
  VALUE y7_672ff  0='(0) No' ;
  VALUE y7_673ff  1='(1) l-2 people' 2='(2) 3-5' 3='(3) More than 5 people' ;
  VALUE y7_674ff  1='(1) l-2 people' 2='(2) 3-5' 3='(3) More than 5 people' ;
  VALUE y7_675ff  0='(0) No weapons' 1='(1) Knives, cutting/stabbing things'
                  2='(2) Chains, bats/hitting things' 3='(3) Hard knuckles/numchucks'
                  4='(4) Guns and other firearms' 5='(5) Other'
                  6='(6) Mixed weapons excluding guns'
                  7='(7) Mixed weapons including guns'
                  8='(8) Mixed weapons-no gun or knife types' ;
  VALUE y7_676ff  0='(0) No injury' 1='(1) Knocked down' 2='(2) Bruised' 3='(3) Cut/bleeding'
                  4='(4) Unconscious' 5='(5) Hospitalized'
                  6='(6) Required medical treatment' 7='(7) Other' ;
  VALUE y7_677ff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking and drugs' ;
  VALUE y7_678ff  0='(0) No' ;
  VALUE y7_679ff  0='(0) No' ;
  VALUE y7_680ff  1='(1) l-2 people' 2='(2) 3-5' 3='(3) More than 5 people' ;
  VALUE y7_681ff  1='(1) l-2 people' 2='(2) 3-5' 3='(3) More than 5 people' ;
  VALUE y7_682ff  0='(0) No weapons' 1='(1) Knives, cutting/stabbing things'
                  2='(2) Chains, bats/hitting things' 3='(3) Hard knuckles/numchucks'
                  4='(4) Guns and other firearms' 5='(5) Other'
                  6='(6) Mixed weapons excluding guns'
                  7='(7) Mixed weapons including guns'
                  8='(8) Mixed weapons-no gun or knife types' ;
  VALUE y7_683ff  0='(0) No injury' 1='(1) Knocked down' 2='(2) Bruised' 3='(3) Cut/bleeding'
                  4='(4) Unconscious' 5='(5) Hospitalized'
                  6='(6) Required medical treatment' 7='(7) Other' ;
  VALUE y7_684ff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking and drugs' ;
  VALUE y7_685ff  0='(0) No' ;
  VALUE y7_686ff  0='(0) No' ;
  VALUE y7_687ff  1='(1) Overdraft' 2='(2) Forged check' 3='(3) Cashed someones check'
                  4='(4) Counterfeit money' 5='(5) Other' ;
  VALUE y7_689ff  0='(0) Alone' 1='(1) 1 person' 2='(2) 2 people' 3='(3) 3 people'
                  4='(4) 4 people' 5='(5) 5 people' 6='(6) 6 people' 7='(7) 7 people'
                  8='(8) 8 people' 9='(9) 9 people' ;
  VALUE y7_690ff  0='(0) No' ;
  VALUE y7_691ff  0='(0) No' ;
  VALUE y7_694ff  0='(0) Alone' 1='(1) 1 person' 2='(2) 2 people' 3='(3) 3 people'
                  4='(4) 4 people' 5='(5) 5 people' 6='(6) 6 people' 7='(7) 7 people'
                  8='(8) 8 people' 9='(9) 9 people' ;
  VALUE y7_695ff  0='(0) No' ;
  VALUE y7_696ff  0='(0) No' ;
  VALUE y7_697ff  1='(1) Money' 2='(2) Other' 3='(3) Both' ;
  VALUE y7_700ff  1='(1) Use it yourself' 2='(2) Give it away' 3='(3) Sell it' 4='(4) Other' ;
  VALUE y7_701ff  0='(0) Alone' 1='(1) 1 person' 2='(2) 2 people' 3='(3) 3 people'
                  4='(4) 4 people' 5='(5) 5 people' 6='(6) 6 people' 7='(7) 7 people'
                  8='(8) 8 people' 9='(9) 9 people' ;
  VALUE y7_702ff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking and drugs' ;
  VALUE y7_703ff  0='(0) No' ;
  VALUE y7_704ff  0='(0) No' ;
  VALUE y7_705ff  1='(1) Money' 2='(2) Other' 3='(3) Both' ;
  VALUE y7_708ff  0='(0) Alone' 1='(1) 1 person' 2='(2) 2 people' 3='(3) 3 people'
                  4='(4) 4 people' 5='(5) 5 people' 6='(6) 6 people' 7='(7) 7 people'
                  8='(8) 8 people' 9='(9) 9 people' ;
  VALUE y7_709ff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking and drugs' ;
  VALUE y7_710ff  0='(0) No' ;
  VALUE y7_711ff  0='(0) No' ;
  VALUE y7_712ff  1='(1) Actually forced' 2='(2) Tried but didnt succeed' ;
  VALUE y7_713ff  1='(1) Verbal threats of injury' 2='(2) Mild roughness'
                  3='(3) Physical beating/choking' 4='(4) Threat of weapon'
                  5='(5) Used a weapon' 6='(6) Other' ;
  VALUE y7_714ff  0='(0) No injury' 1='(1) Knocked down' 2='(2) Bruised' 3='(3) Cut/bleeding'
                  4='(4) Unconscious' 5='(5) Hospitalized'
                  6='(6) Required medical treatment' 7='(7) Other' ;
  VALUE y7_715ff  0='(0) Alone' 1='(1) 1 person' 2='(2) 2 people' 3='(3) 3 people'
                  4='(4) 4 people' 5='(5) 5 people' 6='(6) 6 people' 7='(7) 7 people'
                  8='(8) 8 people' 9='(9) 9 people' ;
  VALUE y7_716ff  1='(1) A stranger' 2='(2) An acquaintance' 3='(3) A friend'
                  4='(4) Family member' 5='(5) Other' ;
  VALUE y7_717ff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking and drugs' ;
  VALUE y7_718ff  0='(0) No' ;
  VALUE y7_719ff  0='(0) No' ;
  VALUE y7_720ff  1='(1) Actually forced' 2='(2) Tried but didnt succeed' ;
  VALUE y7_721ff  1='(1) Verbal threats of injury' 2='(2) Mild roughness'
                  3='(3) Physical beating/choking' 4='(4) Threat of weapon'
                  5='(5) Used a weapon' 6='(6) Other' ;
  VALUE y7_722ff  0='(0) No injury' 1='(1) Knocked down' 2='(2) Bruised' 3='(3) Cut/bleeding'
                  4='(4) Unconscious' 5='(5) Hospitalized'
                  6='(6) Required medical treatment' 7='(7) Other' ;
  VALUE y7_723ff  0='(0) Alone' 1='(1) 1 person' 2='(2) 2 people' 3='(3) 3 people'
                  4='(4) 4 people' 5='(5) 5 people' 6='(6) 6 people' 7='(7) 7 people'
                  8='(8) 8 people' 9='(9) 9 people' ;
  VALUE y7_724ff  1='(1) A stranger' 2='(2) An acquaintance' 3='(3) A friend'
                  4='(4) Family member' 5='(5) Other' ;
  VALUE y7_725ff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking and drugs' ;
  VALUE y7_726ff  0='(0) No' ;
  VALUE y7_727ff  0='(0) No' ;
  VALUE y7_728ff  1='(1) Actually forced' 2='(2) Tried but didnt succeed' ;
  VALUE y7_729ff  1='(1) Verbal threats of injury' 2='(2) Mild roughness'
                  3='(3) Physical beating/choking' 4='(4) Threat of weapon'
                  5='(5) Used a weapon' 6='(6) Other' ;
  VALUE y7_730ff  0='(0) No injury' 1='(1) Knocked down' 2='(2) Bruised' 3='(3) Cut/bleeding'
                  4='(4) Unconscious' 5='(5) Hospitalized'
                  6='(6) Required medical treatment' 7='(7) Other' ;
  VALUE y7_731ff  0='(0) Alone' 1='(1) 1 person' 2='(2) 2 people' 3='(3) 3 people'
                  4='(4) 4 people' 5='(5) 5 people' 6='(6) 6 people' 7='(7) 7 people'
                  8='(8) 8 people' 9='(9) 9 people' ;
  VALUE y7_732ff  1='(1) A stranger' 2='(2) An acquaintance' 3='(3) A friend'
                  4='(4) Family member' 5='(5) Other' ;
  VALUE y7_733ff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking and drugs' ;
  VALUE y7_734ff  0='(0) No' ;
  VALUE y7_735ff  0='(0) No' ;
  VALUE y7_736ff  1='(1) Actually hit' 2='(2) Tried, didnt succeed'
                  3='(3) Only threatened to hit' ;
  VALUE y7_737ff  0='(0) No injury' 1='(1) Pushed or slapped' 2='(2) Caused pain'
                  3='(3) knocked down' 4='(4) Bruised' 5='(5) Cut/bleeding'
                  6='(6) Unconscious' 7='(7) Hospitalized'
                  8='(8) Required medical treatment' 9='(9) Other' ;
  VALUE y7_738ff  0='(0) Alone' 1='(1) 1 person' 2='(2) 2 people' 3='(3) 3 people'
                  4='(4) 4 people' 5='(5) 5 people' 6='(6) 6 people' 7='(7) 7 people'
                  8='(8) 8 people' 9='(9) 9 people' ;
  VALUE y7_739ff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking and drugs' ;
  VALUE y7_740ff  0='(0) No' ;
  VALUE y7_741ff  0='(0) No' ;
  VALUE y7_742ff  1='(1) Actually hit' 2='(2) Tried, didnt succeed'
                  3='(3) Only threatened to hit' ;
  VALUE y7_743ff  0='(0) No injury' 1='(1) Pushed or slapped' 2='(2) Caused pain'
                  3='(3) knocked down' 4='(4) Bruised' 5='(5) Cut/bleeding'
                  6='(6) Unconscious' 7='(7) Hospitalized'
                  8='(8) Required medical treatment' 9='(9) Other' ;
  VALUE y7_744ff  0='(0) Alone' 1='(1) 1 person' 2='(2) 2 people' 3='(3) 3 people'
                  4='(4) 4 people' 5='(5) 5 people' 6='(6) 6 people' 7='(7) 7 people'
                  8='(8) 8 people' 9='(9) 9 people' ;
  VALUE y7_745ff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking and drugs' ;
  VALUE y7_746ff  0='(0) No' ;
  VALUE y7_747ff  0='(0) No' ;
  VALUE y7_748ff  1='(1) Actually hit' 2='(2) Tried, didnt succeed'
                  3='(3) Only threatened to hit' ;
  VALUE y7_749ff  0='(0) No injury' 1='(1) Pushed or slapped' 2='(2) Caused pain'
                  3='(3) knocked down' 4='(4) Bruised' 5='(5) Cut/bleeding'
                  6='(6) Unconscious' 7='(7) Hospitalized'
                  8='(8) required medical treatment' 9='(9) Other' ;
  VALUE y7_750ff  0='(0) Alone' 1='(1) 1 person' 2='(2) 2 people' 3='(3) 3 people'
                  4='(4) 4 people' 5='(5) 5 people' 6='(6) 6 people' 7='(7) 7 people'
                  8='(8) 8 people' 9='(9) 9 people' ;
  VALUE y7_751ff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking and drugs' ;
  VALUE y7_752ff  0='(0) No' ;
  VALUE y7_753ff  0='(0) No' ;
  VALUE y7_754ff  1='(1) Marijuana' 2='(2) Pills' 3='(3) Cocaine' 4='(4) Heroin' 5='(5) Other' ;
  VALUE y7_756ff  0='(0) Alone' 1='(1) 1 person' 2='(2) 2 people' 3='(3) 3 people'
                  4='(4) 4 people' 5='(5) 5 people' 6='(6) 6 people' 7='(7) 7 people'
                  8='(8) 8 people' 9='(9) 9 people' ;
  VALUE y7_757ff  0='(0) No' ;
  VALUE y7_758ff  0='(0) No' ;
  VALUE y7_759ff  1='(1) Stranger' 2='(2) Family member' 3='(3) Friend' 4='(4) Other' ;
  VALUE y7_762ff  1='(1) Actually sold it' 2='(2) Tried to sell it' ;
  VALUE y7_763ff  0='(0) Alone' 1='(1) 1 person' 2='(2) 2 people' 3='(3) 3 people'
                  4='(4) 4 people' 5='(5) 5 people' 6='(6) 6 people' 7='(7) 7 people'
                  8='(8) 8 people' 9='(9) 9 people' ;
  VALUE y7_764ff  0='(0) No' ;
  VALUE y7_765ff  0='(0) No' ;
  VALUE y7_766ff  1='(1) Car' 2='(2) Truck' 3='(3) Motorcycle' 4='(4) Other' ;
  VALUE y7_767ff  1='(1) Family member' 2='(2) Friend' 3='(3) Other' ;
  VALUE y7_768ff  1='(1) Had keys' 2='(2) Hot wired' 3='(3) Keys in ignition' 4='(4) Other' ;
  VALUE y7_769ff  0='(0) Alone' 1='(1) 1 person' 2='(2) 2 people' 3='(3) 3 people'
                  4='(4) 4 people' 5='(5) 5 people' 6='(6) 6 people' 7='(7) 7 people'
                  8='(8) 8 people' 9='(9) 9 people' ;
  VALUE y7_770ff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking and drugs' ;
  VALUE y7_771ff  0='(0) No' ;
  VALUE y7_772ff  0='(0) No' ;
  VALUE y7_773ff  1='(1) Punched' 2='(2) Physical beating' 3='(3) Other' ;
  VALUE y7_774ff  0='(0) No weapons' 1='(1) Knives, cutting/stabbing things'
                  2='(2) Chains, bats/hitting things' 3='(3) Hard knuckles/numchucks'
                  4='(4) Guns and other firearms' 5='(5) Other'
                  6='(6) Mixed weapons excluding guns'
                  7='(7) Mixed weapons including guns'
                  8='(8) Mixed weapons-no gun or knife types' ;
  VALUE y7_775ff  1='(1) Money' 2='(2) Other' ;
  VALUE y7_776ff  0='(0) No injury' 1='(1) Knocked down' 2='(2) Bruised' 3='(3) Cut/bleeding'
                  4='(4) Unconscious' 5='(5) Hospitalized'
                  6='(6) Required medical treatment' 7='(7) Other' ;
  VALUE y7_777ff  0='(0) Alone' 1='(1) 1 person' 2='(2) 2 people' 3='(3) 3 people'
                  4='(4) 4 people' 5='(5) 5 people' 6='(6) 6 people' 7='(7) 7 people'
                  8='(8) 8 people' 9='(9) 9 people' ;
  VALUE y7_778ff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking and drugs' ;
  VALUE y7_779ff  0='(0) No' ;
  VALUE y7_780ff  0='(0) No' ;
  VALUE y7_781ff  1='(1) Punched' 2='(2) Physical beating' 3='(3) Other' ;
  VALUE y7_782ff  0='(0) No weapons' 1='(1) Knives, cutting/stabbing things'
                  2='(2) Chains, bats/hitting things' 3='(3) Hard knuckles/numchucks'
                  4='(4) Guns and other firearms' 5='(5) Other'
                  6='(6) Mixed weapons excluding guns'
                  7='(7) Mixed weapons including guns'
                  8='(8) Mixed weapons-no gun or knife types' ;
  VALUE y7_783ff  1='(1) Money' 2='(2) Other' ;
  VALUE y7_784ff  0='(0) No injury' 1='(1) Knocked down' 2='(2) Bruised' 3='(3) Cut/bleeding'
                  4='(4) Unconscious' 5='(5) Hospitalized'
                  6='(6) Required medical treatment' 7='(7) Other' ;
  VALUE y7_785ff  0='(0) Alone' 1='(1) 1 person' 2='(2) 2 people' 3='(3) 3 people'
                  4='(4) 4 people' 5='(5) 5 people' 6='(6) 6 people' 7='(7) 7 people'
                  8='(8) 8 people' 9='(9) 9 people' ;
  VALUE y7_786ff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking and drugs' ;
  VALUE y7_787ff  0='(0) No' ;
  VALUE y7_788ff  0='(0) No' ;
  VALUE y7_789ff  1='(1) Punched' 2='(2) Physical beating' 3='(3) Other' ;
  VALUE y7_790ff  0='(0) No weapons' 1='(1) Knives, cutting/stabbing things'
                  2='(2) Chains, bats/hitting things' 3='(3) Hard knuckles/numchucks'
                  4='(4) Guns and other firearms' 5='(5) Other'
                  6='(6) Mixed weapons excluding guns'
                  7='(7) Mixed weapons including guns'
                  8='(8) Mixed weapons-no gun or knife types' ;
  VALUE y7_791ff  1='(1) Money' 2='(2) Other' ;
  VALUE y7_792ff  0='(0) No injury' 1='(1) Knocked down' 2='(2) Bruised' 3='(3) Cut/bleeding'
                  4='(4) Unconscious' 5='(5) Hospitalized'
                  6='(6) Required medical treatment' 7='(7) Other' ;
  VALUE y7_793ff  0='(0) Alone' 1='(1) 1 person' 2='(2) 2 people' 3='(3) 3 people'
                  4='(4) 4 people' 5='(5) 5 people' 6='(6) 6 people' 7='(7) 7 people'
                  8='(8) 8 people' 9='(9) 9 people' ;
  VALUE y7_794ff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking and drugs' ;
  VALUE y7_795ff  0='(0) No' ;
  VALUE y7_796ff  0='(0) No' ;
  VALUE y7_798ff  1='(1) Retail store' 2='(2) Private home' 3='(3) Auto' 4='(4) Work place'
                  5='(5) School/college' 6='(6) Construction site' 7='(7) Warehouse'
                  8='(8) Other' ;
  VALUE y7_799ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_800ff  0='(0) Alone' 1='(1) 1 person' 2='(2) 2 people' 3='(3) 3 people'
                  4='(4) 4 people' 5='(5) 5 people' 6='(6) 6 people' 7='(7) 7 people'
                  8='(8) 8 people' 9='(9) 9 people' ;
  VALUE y7_801ff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking and drugs' ;
  VALUE y7_802ff  0='(0) No' ;
  VALUE y7_803ff  0='(0) No' ;
  VALUE y7_804ff  1='(1) Building' 2='(2) Vehicle' 3='(3) House' 4='(4) Other' ;
  VALUE y7_805ff  1='(1) Broke in' 2='(2) Tried' 3='(3) Door open' ;
  VALUE y7_806ff  1='(1) Look around' 2='(2) Steal' 3='(3) Other' ;
  VALUE y7_807ff  0='(0) Alone' 1='(1) 1 person' 2='(2) 2 people' 3='(3) 3 people'
                  4='(4) 4 people' 5='(5) 5 people' 6='(6) 6 people' 7='(7) 7 people'
                  8='(8) 8 people' 9='(9) 9 people' ;
  VALUE y7_808ff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking and drugs' ;
  VALUE y7_809ff  0='(0) No' ;
  VALUE y7_810ff  0='(0) No' ;
  VALUE y7_811ff  1='(1) Building' 2='(2) Vehicle' 3='(3) House' 4='(4) Other' ;
  VALUE y7_812ff  1='(1) Broke in' 2='(2) Tried' 3='(3) Door open' ;
  VALUE y7_813ff  1='(1) Look around' 2='(2) Steal' 3='(3) Other' ;
  VALUE y7_814ff  0='(0) Alone' 1='(1) 1 person' 2='(2) 2 people' 3='(3) 3 people'
                  4='(4) 4 people' 5='(5) 5 people' 6='(6) 6 people' 7='(7) 7 people'
                  8='(8) 8 people' 9='(9) 9 people' ;
  VALUE y7_815ff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking and drugs' ;
  VALUE y7_816ff  0='(0) No' ;
  VALUE y7_817ff  0='(0) No' ;
  VALUE y7_818ff  1='(1) Building' 2='(2) Vehicle' 3='(3) House' 4='(4) Other' ;
  VALUE y7_819ff  1='(1) Broke in' 2='(2) Tried' 3='(3) Door open' ;
  VALUE y7_820ff  1='(1) Look around' 2='(2) Steal' 3='(3) Other' ;
  VALUE y7_821ff  0='(0) Alone' 1='(1) 1 person' 2='(2) 2 people' 3='(3) 3 people'
                  4='(4) 4 people' 5='(5) 5 people' 6='(6) 6 people' 7='(7) 7 people'
                  8='(8) 8 people' 9='(9) 9 people' ;
  VALUE y7_822ff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking and drugs' ;
  VALUE y7_823ff  0='(0) No' ;
  VALUE y7_824ff  0='(0) No' ;
  VALUE y7_825ff  1='(1) Stranger' 2='(2) Family member' 3='(3) Friend' 4='(4) Other' ;
  VALUE y7_827ff  0='(0) Alone' 1='(1) 1 person' 2='(2) 2 people' 3='(3) 3 people'
                  4='(4) 4 people' 5='(5) 5 people' 6='(6) 6 people' 7='(7) 7 people'
                  8='(8) 8 people' 9='(9) 9 people' ;
  VALUE y7_828ff  0='(0) No' ;
  VALUE y7_829ff  0='(0) No' ;
  VALUE y7_830ff  1='(1) Purse snatching' 2='(2) Pick pocket' 3='(3) Other' ;
  VALUE y7_831ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_832ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_833ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_834ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_835ff  0='(0) Alone' 1='(1) 1 person' 2='(2) 2 people' 3='(3) 3 people'
                  4='(4) 4 people' 5='(5) 5 people' 6='(6) 6 people' 7='(7) 7 people'
                  8='(8) 8 people' 9='(9) 9 people' ;
  VALUE y7_836ff  0='(0) No' 1='(1) Drinking' 2='(2) Using drugs' 3='(3) Drinking and drugs' ;
  VALUE y7_837ff  0='(0) No' ;
  VALUE y7_838ff  0='(0) No' ;
  VALUE y7_840ff  0='(0) No' ;
  VALUE y7_841ff  0='(0) No' ;
  VALUE y7_843ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_844ff  1='(1) LT 2 weeks' 2='(2) 2 to 4 weeks' 3='(3) GT 1 to 2 months'
                  4='(4) GT 2 to 3 months' 5='(5) GT 3 to 4 months'
                  6='(6) GT 4 to 6 months' 7='(7) GT 6 months' ;
  VALUE y7_845ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_846ff  1='(1) LT 2 weeks' 2='(2) 2 to 4 weeks' 3='(3) GT 1 to 2 months'
                  4='(4) GT 2 to 3 months' 5='(5) GT 3 to 4 months'
                  6='(6) GT 4 to 6 months' 7='(7) GT 6 months' ;
  VALUE y7_851ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_852ff  1='(1) LT 2 weeks' 2='(2) 2 to 4 weeks' 3='(3) GT 1 to 2 months'
                  4='(4) GT 2 to 3 months' 5='(5) GT 3 to 4 months'
                  6='(6) GT 4 to 6 months' 7='(7) GT 6 months' ;
  VALUE y7_854ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_855ff  1='(1) LT 2 weeks' 2='(2) 2 to 4 weeks' 3='(3) GT 1 to 2 months'
                  4='(4) GT 2 to 3 months' 5='(5) GT 3 to 4 months'
                  6='(6) GT 4 to 6 months' 7='(7) GT 6 months' ;
  VALUE y7_857ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_858ff  1='(1) LT 2 weeks' 2='(2) 2 to 4 weeks' 3='(3) GT 1 to 2 months'
                  4='(4) GT 2 to 3 months' 5='(5) GT 3 to 4 months'
                  6='(6) GT 4 to 6 months' 7='(7) GT 6 months' ;
  VALUE y7_861ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_862ff  1='(1) LT 2 weeks' 2='(2) 2 to 4 weeks' 3='(3) GT 1 to 2 months'
                  4='(4) GT 2 to 3 months' 5='(5) GT 3 to 4 months'
                  6='(6) GT 4 to 6 months' 7='(7) GT 6 months' ;
  VALUE y7_865ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_866ff  1='(1) LT 2 weeks' 2='(2) 2 to 4 weeks' 3='(3) GT 1 to 2 months'
                  4='(4) GT 2 to 3 months' 5='(5) GT 3 to 4 months'
                  6='(6) GT 4 to 6 months' 7='(7) GT 6 months' ;
  VALUE y7_869ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_870ff  1='(1) LT 2 weeks' 2='(2) 2 to 4 weeks' 3='(3) GT 1 to 2 months'
                  4='(4) GT 2 to 3 months' 5='(5) GT 3 to 4 months'
                  6='(6) GT 4 to 6 months' 7='(7) GT 6 months' ;
  VALUE y7_873ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_874ff  1='(1) LT 2 weeks' 2='(2) 2 to 4 weeks' 3='(3) GT 1 to 2 months'
                  4='(4) GT 2 to 3 months' 5='(5) GT 3 to 4 months'
                  6='(6) GT 4 to 6 months' 7='(7) GT 6 months' ;
  VALUE y7_876ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_877ff  1='(1) LT 2 weeks' 2='(2) 2 to 4 weeks' 3='(3) GT 1 to 2 months'
                  4='(4) GT 2 to 3 months' 5='(5) GT 3 to 4 months'
                  6='(6) GT 4 to 6 months' 7='(7) GT 6 months' ;
  VALUE y7_879ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_880ff  1='(1) LT 2 weeks' 2='(2) 2 to 4 weeks' 3='(3) GT 1 to 2 months'
                  4='(4) GT 2 to 3 months' 5='(5) GT 3 to 4 months'
                  6='(6) GT 4 to 6 months' 7='(7) GT 6 months' ;
  VALUE y7_882ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_883ff  1='(1) LT 2 weeks' 2='(2) 2 to 4 weeks' 3='(3) GT 1 to 2 months'
                  4='(4) GT 2 to 3 months' 5='(5) GT 3 to 4 months'
                  6='(6) GT 4 to 6 months' 7='(7) GT 6 months' ;
  VALUE y7_885ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_886ff  1='(1) LT 2 weeks' 2='(2) 2 to 4 weeks' 3='(3) GT 1 to 2 months'
                  4='(4) GT 2 to 3 months' 5='(5) GT 3 to 4 months'
                  6='(6) GT 4 to 6 months' 7='(7) GT 6 months' ;
  VALUE y7_887ff  1='(1) THC' 2='(2) Quaaludes' 3='(3) Cough medicine' 4='(4) Robitussin'
                  5='(5) Sominex' 6='(6) Sudafed' 7='(7) No-Doze' 8='(8) Demerol'
                  9='(9) Weight control pills' 10='(10) Coricidin' 11='(11) Mushrooms'
                  12='(12) MDA' 13='(13) Pam' 99='(99) Other' ;
  VALUE y7_889ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_890ff  1='(1) LT 2 weeks' 2='(2) 2 to 4 weeks' 3='(3) GT 1 to 2 months'
                  4='(4) GT 2 to 3 months' 5='(5) GT 3 to 4 months'
                  6='(6) GT 4 to 6 months' 7='(7) GT 6 months' ;
  VALUE y7_892ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Once every 2-3 months'
                  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_893ff  1='(1) LT 2 weeks' 2='(2) 2 to 4 weeks' 3='(3) GT 1 to 2 months'
                  4='(4) GT 2 to 3 months' 5='(5) GT 3 to 4 months'
                  6='(6) GT 4 to 6 months' 7='(7) GT 6 months' ;
  VALUE y7_894ff  0='(0) No' 1='(1) Heroin' 2='(2) Cocaine' 3='(3) Other drugs'
                  4='(4) Heroin and cocaine' 5='(5) Other comb incl heroin'
                  6='(6) Other comb incl cocaine' 7='(7) Comb incl heroin and' ;
  VALUE y7_895ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_896ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Three or four times'
                  4='(4) Five or six times' 5='(5) More than six times' ;
  VALUE y7_897ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Three or four times'
                  4='(4) Five or six times' 5='(5) More than six times' ;
  VALUE y7_898ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Three or four times'
                  4='(4) Five or six times' 5='(5) More than six times' ;
  VALUE y7_899ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Three or four times'
                  4='(4) Five or six times' 5='(5) More than six times' ;
  VALUE y7_900ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Three or four times'
                  4='(4) Five or six times' 5='(5) More than six times' ;
  VALUE y7_901ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Three or four times'
                  4='(4) Five or six times' 5='(5) More than six times' ;
  VALUE y7_902ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Three or four times'
                  4='(4) Five or six times' 5='(5) More than six times' ;
  VALUE y7_903ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Three or four times'
                  4='(4) Five or six times' 5='(5) More than six times' ;
  VALUE y7_904ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Three or four times'
                  4='(4) Five or six times' 5='(5) More than six times' ;
  VALUE y7_905ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Three or four times'
                  4='(4) Five or six times' 5='(5) More than six times' ;
  VALUE y7_906ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Three or four times'
                  4='(4) Five or six times' 5='(5) More than six times' ;
  VALUE y7_907ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Three or four times'
                  4='(4) Five or six times' 5='(5) More than six times' ;
  VALUE y7_908ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Three or four times'
                  4='(4) Five or six times' 5='(5) More than six times' ;
  VALUE y7_909ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Three or four times'
                  4='(4) Five or six times' 5='(5) More than six times' ;
  VALUE y7_910ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Three or four times'
                  4='(4) Five or six times' 5='(5) More than six times' ;
  VALUE y7_911ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Three or four times'
                  4='(4) Five or six times' 5='(5) More than six times' ;
  VALUE y7_912ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Three or four times'
                  4='(4) Five or six times' 5='(5) More than six times' ;
  VALUE y7_913ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Three or four times'
                  4='(4) Five or six times' 5='(5) More than six times' ;
  VALUE y7_914ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Three or four times'
                  4='(4) Five or six times' 5='(5) More than six times' ;
  VALUE y7_915ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Three or four times'
                  4='(4) Five or six times' 5='(5) More than six times' ;
  VALUE y7_916ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Three or four times'
                  4='(4) Five or six times' 5='(5) More than six times' ;
  VALUE y7_917ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Three or four times'
                  4='(4) Five or six times' 5='(5) More than six times' ;
  VALUE y7_918ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Three or four times'
                  4='(4) Five or six times' 5='(5) More than six times' ;
  VALUE y7_919ff  1='(1) Never' 2='(2) Once or twice' 3='(3) Three or four times'
                  4='(4) Five or six times' 5='(5) More than six times' ;
  VALUE y7_920ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_921ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_922ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_923ff  1='(1) Yes' ;
  VALUE y7_924ff  1='(1) Yes' ;
  VALUE y7_925ff  1='(1) Yes' ;
  VALUE y7_926ff  1='(1) Yes' ;
  VALUE y7_927ff  1='(1) Yes' ;
  VALUE y7_928ff  1='(1) Yes' ;
  VALUE y7_929ff  1='(1) Yes' ;
  VALUE y7_930ff  1='(1) Yes' ;
  VALUE y7_931ff  1='(1) Yes' ;
  VALUE y7_932ff  1='(1) Yes' ;
  VALUE y7_933ff  1='(1) Yes' ;
  VALUE y7_934ff  1='(1) Yes' ;
  VALUE y7_944ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_945ff  99='(99) Cant remember' ;
  VALUE y7_946ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_947ff  99='(99) Cant remember' ;
  VALUE y7_948ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_949ff  99='(99) Cant remember' ;
  VALUE y7_950ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_951ff  99='(99) Cant remember' ;
  VALUE y7_952ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_953ff  99='(99) Cant remember' ;
  VALUE y7_954ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_955ff  99='(99) Cant remember' ;
  VALUE y7_956ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_957ff  99='(99) Cant remember' ;
  VALUE y7_958ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_959ff  99='(99) Cant remember' ;
  VALUE y7_960ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_961ff  99='(99) Cant remember' ;
  VALUE y7_962ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_963ff  99='(99) Cant remember' ;
  VALUE y7_964ff  1='(1) No' 2='(2) Yes' ;
  VALUE y7_965ff  99='(99) Cant remember' ;
  VALUE y7_966ff  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_967ff  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_968ff  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_969ff  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_970ff  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_971ff  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_972ff  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_973ff  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_974ff  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_975ff  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_976ff  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_977ff  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_978ff  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_979ff  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_980ff  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_981ff  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_982ff  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_983ff  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_984ff  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_985ff  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_986ff  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_987ff  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_988ff  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_989ff  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_990ff  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_991ff  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_992ff  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_993ff  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_994ff  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_995ff  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_996ff  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_997ff  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_998ff  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_999ff  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_1000f  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_1001f  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_1002f  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_1003f  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_1004f  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_1005f  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_1006f  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_1007f  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_1008f  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_1009f  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_1010f  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_1011f  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_1012f  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_1013f  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_1014f  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_1015f  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_1016f  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_1017f  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_1018f  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_1019f  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_1020f  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_1021f  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_1022f  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_1023f  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_1024f  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_1025f  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_1026f  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_1027f  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_1028f  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_1029f  1='(1) Never' 2='(2) 1-2 Times' 3='(3) 3-11 Times' 4='(4) 12 or More Times' ;
  VALUE y7_1030f  0='(0) No' ;
  VALUE y7_1031f  1='(1) Jan' 2='(2) Feb' 3='(3) Mar' 4='(4) Apr' 5='(5) May' 6='(6) Jun' 7='(7) Jul'
                  8='(8) Aug' 9='(9) Sept' 10='(10) Oct' 11='(11) Nov' 12='(12) Dec' 13='(13) Winter'
                  14='(14) Spring' 15='(15) Summer' 16='(16) Fall' 99='(99) Unknown' ;
  VALUE y7_1032f  84='(84) 1984' 85='(85) 1985' 86='(86) 1986' ;
  VALUE y7_1039f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1040f  1='(1) Jan' 2='(2) Feb' 3='(3) Mar' 4='(4) Apr' 5='(5) May' 6='(6) Jun' 7='(7) Jul'
                  8='(8) Aug' 9='(9) Sept' 10='(10) Oct' 11='(11) Nov' 12='(12) Dec' 13='(13) Winter'
                  14='(14) Spring' 15='(15) Summer' 16='(16) Fall' 99='(99) Unknown' ;
  VALUE y7_1041f  84='(84) 1984' 85='(85) 1985' 86='(86) 1986' ;
  VALUE y7_1048f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1049f  1='(1) Jan' 2='(2) Feb' 3='(3) Mar' 4='(4) Apr' 5='(5) May' 6='(6) Jun' 7='(7) Jul'
                  8='(8) Aug' 9='(9) Sept' 10='(10) Oct' 11='(11) Nov' 12='(12) Dec' 13='(13) Winter'
                  14='(14) Spring' 15='(15) Summer' 16='(16) Fall' 99='(99) Unknown' ;
  VALUE y7_1050f  84='(84) 1984' 85='(85) 1985' 86='(86) 1986' ;
  VALUE y7_1057f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1058f  0='(0) No' ;
  VALUE y7_1059f  1='(1) Jan' 2='(2) Feb' 3='(3) Mar' 4='(4) Apr' 5='(5) May' 6='(6) Jun' 7='(7) Jul'
                  8='(8) Aug' 9='(9) Sept' 10='(10) Oct' 11='(11) Nov' 12='(12) Dec' 13='(13) Winter'
                  14='(14) Spring' 15='(15) Summer' 16='(16) Fall' 99='(99) Unknown' ;
  VALUE y7_1060f  84='(84) 1984' 85='(85) 1985' 86='(86) 1986' ;
  VALUE y7_1062f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1064f  1='(1) No police action' 2='(2) Asked questions, no action'
                  3='(3) Took Respondent home, no action'
                  4='(4) Investigation report/complaint'
                  5='(5) Temporarily detained/questioned'
                  6='(6) Arrested/released on bail' 7='(7) Placed in custody/jailed'
                  9='(9) Other' ;
  VALUE y7_1065f  1='(1) Jan' 2='(2) Feb' 3='(3) Mar' 4='(4) Apr' 5='(5) May' 6='(6) Jun' 7='(7) Jul'
                  8='(8) Aug' 9='(9) Sept' 10='(10) Oct' 11='(11) Nov' 12='(12) Dec' 13='(13) Winter'
                  14='(14) Spring' 15='(15) Summer' 16='(16) Fall' 99='(99) Unknown' ;
  VALUE y7_1066f  84='(84) 1984' 85='(85) 1985' 86='(86) 1986' ;
  VALUE y7_1068f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1071f  1='(1) Jan' 2='(2) Feb' 3='(3) Mar' 4='(4) Apr' 5='(5) May' 6='(6) Jun' 7='(7) Jul'
                  8='(8) Aug' 9='(9) Sept' 10='(10) Oct' 11='(11) Nov' 12='(12) Dec' 13='(13) Winter'
                  14='(14) Spring' 15='(15) Summer' 16='(16) Fall' 99='(99) Unknown' ;
  VALUE y7_1072f  84='(84) 1984' 85='(85) 1985' 86='(86) 1986' ;
  VALUE y7_1074f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1076f  1='(1) No police action' 2='(2) Asked questions, no action'
                  3='(3) Took Respondent home, no action'
                  4='(4) Investigation report/complaint'
                  5='(5) Temporarily detained/questioned'
                  6='(6) Arrested/released on bail' 7='(7) Placed in custody/jailed'
                  9='(9) Other' ;
  VALUE y7_1077f  0='(0) No' 1='(1) Juvenile Court' 2='(2) Adult Court' 3='(3) Both' ;
  VALUE y7_1079f  0='(0) Never convicted' ;
  VALUE y7_1083f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1092f  0='(0) 0% chance' 1='(1) 10% chance' 2='(2) 20% chance' 3='(3) 30% chance'
                  4='(4) 40% chance' 5='(5) 50% chance' 6='(6) 60% chance' 7='(7) 70% chance'
                  8='(8) 80% chance' 9='(9) 90% chance' 10='(10) 100% chance' ;
  VALUE y7_1093f  0='(0) 0% chance' 1='(1) 10% chance' 2='(2) 20% chance' 3='(3) 30% chance'
                  4='(4) 40% chance' 5='(5) 50% chance' 6='(6) 60% chance' 7='(7) 70% chance'
                  8='(8) 80% chance' 9='(9) 90% chance' 10='(10) 100% chance' ;
  VALUE y7_1094f  0='(0) 0% chance' 1='(1) 10% chance' 2='(2) 20% chance' 3='(3) 30% chance'
                  4='(4) 40% chance' 5='(5) 50% chance' 6='(6) 60% chance' 7='(7) 70% chance'
                  8='(8) 80% chance' 9='(9) 90% chance' 10='(10) 100% chance' ;
  VALUE y7_1095f  0='(0) 0% chance' 1='(1) 10% chance' 2='(2) 20% chance' 3='(3) 30% chance'
                  4='(4) 40% chance' 5='(5) 50% chance' 6='(6) 60% chance' 7='(7) 70% chance'
                  8='(8) 80% chance' 9='(9) 90% chance' 10='(10) 100% chance' ;
  VALUE y7_1096f  0='(0) 0% chance' 1='(1) 10% chance' 2='(2) 20% chance' 3='(3) 30% chance'
                  4='(4) 40% chance' 5='(5) 50% chance' 6='(6) 60% chance' 7='(7) 70% chance'
                  8='(8) 80% chance' 9='(9) 90% chance' 10='(10) 100% chance' ;
  VALUE y7_1097f  0='(0) 0% chance' 1='(1) 10% chance' 2='(2) 20% chance' 3='(3) 30% chance'
                  4='(4) 40% chance' 5='(5) 50% chance' 6='(6) 60% chance' 7='(7) 70% chance'
                  8='(8) 80% chance' 9='(9) 90% chance' 10='(10) 100% chance' ;
  VALUE y7_1098f  0='(0) 0% chance' 1='(1) 10% chance' 2='(2) 20% chance' 3='(3) 30% chance'
                  4='(4) 40% chance' 5='(5) 50% chance' 6='(6) 60% chance' 7='(7) 70% chance'
                  8='(8) 80% chance' 9='(9) 90% chance' 10='(10) 100% chance' ;
  VALUE y7_1099f  1='(1) Released without charges' 2='(2) Dismissed at court'
                  3='(3) Fined and released' 4='(4) Probation/suspended sentence'
                  5='(5) Short time in jail' 6='(6) Long time in jail'
                  7='(7) Serious punishment' 8='(8) Nonserious punishment'
                  9='(9) No punishment' ;
  VALUE y7_1100f  1='(1) Released without charges' 2='(2) Dismissed at court'
                  3='(3) Fined and released' 4='(4) Probation/suspended sentence'
                  5='(5) Short time in jail' 6='(6) Long time in jail'
                  7='(7) Serious punishment' 8='(8) Nonserious punishment'
                  9='(9) No punishment' ;
  VALUE y7_1101f  1='(1) Released without charges' 2='(2) Dismissed at court'
                  3='(3) Fined and released' 4='(4) Probation/suspended sentence'
                  5='(5) Short time in jail' 6='(6) Long time in jail'
                  7='(7) Serious punishment' 8='(8) Nonserious punishment'
                  9='(9) No punishment' ;
  VALUE y7_1102f  1='(1) Released without charges' 2='(2) Dismissed at court'
                  3='(3) Fined and released' 4='(4) Probation/suspended sentence'
                  5='(5) Short time in jail' 6='(6) Long time in jail'
                  7='(7) Serious punishment' 8='(8) Nonserious punishment'
                  9='(9) No punishment' ;
  VALUE y7_1103f  1='(1) Released without charges' 2='(2) Dismissed at court'
                  3='(3) Fined and released' 4='(4) Probation/suspended sentence'
                  5='(5) Short time in jail' 6='(6) Long time in jail'
                  7='(7) Serious punishment' 8='(8) Nonserious punishment'
                  9='(9) No punishment' ;
  VALUE y7_1104f  1='(1) Released without charges' 2='(2) Dismissed at court'
                  3='(3) Fined and released' 4='(4) Probation/suspended sentence'
                  5='(5) Short time in jail' 6='(6) Long time in jail'
                  7='(7) Serious punishment' 8='(8) Nonserious punishment'
                  9='(9) No punishment' ;
  VALUE y7_1105f  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_1106f  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_1107f  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_1108f  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_1109f  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_1110f  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_1111f  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_1112f  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_1113f  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_1114f  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_1115f  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_1116f  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_1119f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1120f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1121f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1122f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1125f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1126f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1127f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1128f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1129f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1130f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1131f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1132f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1133f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1134f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1135f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1136f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1137f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1138f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1140f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1141f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1142f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1143f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1144f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1145f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1146f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1147f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1148f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1149f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1150f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1151f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1152f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1153f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1157f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1158f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1159f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1160f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1161f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1162f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1163f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1164f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1165f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1166f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1167f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1168f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1169f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1173f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1174f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1175f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1177f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1182f  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_1183f  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_1184f  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_1185f  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_1186f  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_1187f  1='(1) Strongly disagree' 2='(2) Disagree'
                  3='(3) Neither agree nor disagree' 4='(4) Agree' 5='(5) Strongly agree' ;
  VALUE y7_1188f  1='(1) Yes' 2='(2) No' ;
  VALUE y7_1189f  0='(0) No problem' 1='(1) Orthopedic problems'
                  2='(2) Endocrinology problems' 3='(3) Ear/eye/nose/throat'
                  4='(4) Heart disease' 5='(5) Blood/circulatory' 6='(6) Urological'
                  7='(7) Skin problems' 8='(8) Neurological' 9='(9) Pulmonary'
                  10='(10) Cancer' 11='(11) Other' ;
  VALUE y7_1190f  0='(0) No problem' 1='(1) Orthopedic problems'
                  2='(2) Endocrinology problems' 3='(3) Ear/eye/nose/throat'
                  4='(4) Heart disease' 5='(5) Blood/circulatory' 6='(6) Urological'
                  7='(7) Skin problems' 8='(8) Neurological' 9='(9) Pulmonary'
                  10='(10) Cancer' 11='(11) Other' ;
  VALUE y7_1191f  0='(0) No problem' 1='(1) Orthopedic problems'
                  2='(2) Endocrinology problems' 3='(3) Ear/eye/nose/throat'
                  4='(4) Heart disease' 5='(5) Blood/circulatory' 6='(6) Urological'
                  7='(7) Skin problems' 8='(8) Neurological' 9='(9) Pulmonary'
                  10='(10) Cancer' 11='(11) Other' ;
  VALUE y7_1192f  0='(0) No problem' 1='(1) Orthopedic problems'
                  2='(2) Endocrinology problems' 3='(3) Ear/eye/nose/throat'
                  4='(4) Heart disease' 5='(5) Blood/circulatory' 6='(6) Urological'
                  7='(7) Skin problems' 8='(8) Neurological' 9='(9) Pulmonary'
                  10='(10) Cancer' 11='(11) Other' ;
  VALUE y7_1193f  1='(1) Yes' 2='(2) No' 8='(8) Dont know' ;
  VALUE y7_1194f  1='(1) Gonorrhea' 2='(2) Genital herpes' 3='(3) Syphilis' 4='(4) Clap'
                  5='(5) Other' ;
  VALUE y7_1195f  1='(1) Yes' 2='(2) No' ;
  VALUE y7_1197f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1198f  1='(1) Negative' 2='(2) Positive' 3='(3) Outcome unknown' 4='(4) Refused' ;
  VALUE y7_1199f  1='(1) Excellent' 2='(2) Very good' 3='(3) Good' 4='(4) Fair' 5='(5) Poor' ;
  VALUE y7_1200f  88='(88) Cant remember' ;
  VALUE y7_1201f  1='(1) Yes' 2='(2) No' ;
  VALUE y7_1202f  83='(83) 1983' 84='(84) 1984' 85='(85) 1985' 86='(86) 1986' ;
  VALUE y7_1203f  1='(1) Live birth' 2='(2) Abortion' 3='(3) Miscarriage' 4='(4) Stillbirth'
                  5='(5) Currently pregnant' 8='(8) Other' ;
  VALUE y7_1204f  0='(0) No' 1='(1) Difficult labor/delivery' 2='(2) C-section'
                  3='(3) Urological problems' 4='(4) Respiratory/cardiac distress'
                  5='(5) Atopic pregnancy' 6='(6) Miscarriage (or threat of)'
                  7='(7) Difficult presentation' 8='(8) Drug addiction'
                  9='(9) Phlebitis, hemorrhoids'
                  10='(10) Hemorrhaging during delivery' 11='(11) Other' ;
  VALUE y7_1205f  0='(0) No' 1='(1) Difficult labor/delivery' 2='(2) C-section'
                  3='(3) Urological problems' 4='(4) Respiratory/cardiac distress'
                  5='(5) Atopic pregnancy' 6='(6) Miscarriage (or threat of)'
                  7='(7) Difficult presentation' 8='(8) Drug addiction'
                  9='(9) Phlebitis, hemorrhoids'
                  10='(10) Hemorrhaging during delivery' 11='(11) Other' ;
  VALUE y7_1206f  1='(1) Involuntary' 2='(2) Voluntary' ;
  VALUE y7_1207f  83='(83) 1983' 84='(84) 1984' 85='(85) 1985' 86='(86) 1986' ;
  VALUE y7_1208f  1='(1) Live birth' 2='(2) Abortion' 3='(3) Miscarriage' 4='(4) Stillbirth'
                  5='(5) Currently pregnant' 8='(8) Other' ;
  VALUE y7_1209f  0='(0) No' 1='(1) Difficult labor/delivery' 2='(2) C-section'
                  3='(3) Urological problems' 4='(4) Respiratory/cardiac distress'
                  5='(5) Atopic pregnancy' 6='(6) Miscarriage (or threat of)'
                  7='(7) Difficult presentation' 8='(8) Drug addiction'
                  9='(9) Phlebitis, hemorrhoids'
                  10='(10) Hemorrhaging during delivery' 11='(11) Other' ;
  VALUE y7_1210f  0='(0) No' 1='(1) Difficult labor/delivery' 2='(2) C-section'
                  3='(3) Urological problems' 4='(4) Respiratory/cardiac distress'
                  5='(5) Atopic pregnancy' 6='(6) Miscarriage (or threat of)'
                  7='(7) Difficult presentation' 8='(8) Drug addiction'
                  9='(9) Phlebitis, hemorrhoids'
                  10='(10) Hemorrhaging during delivery' 11='(11) Other' ;
  VALUE y7_1211f  1='(1) Involuntary' 2='(2) Voluntary' ;
  VALUE y7_1212f  83='(83) 1983' 84='(84) 1984' 85='(85) 1985' 86='(86) 1986' ;
  VALUE y7_1213f  1='(1) Live birth' 2='(2) Abortion' 3='(3) Miscarriage' 4='(4) Stillbirth'
                  5='(5) Currently pregnant' 8='(8) Other' ;
  VALUE y7_1214f  0='(0) No' 1='(1) Difficult labor/delivery' 2='(2) C-section'
                  3='(3) Urological problems' 4='(4) Respiratory/cardiac distress'
                  5='(5) Atopic pregnancy' 6='(6) Miscarriage (or threat of)'
                  7='(7) Difficult presentation' 8='(8) Drug addiction'
                  9='(9) Phlebitis, hemorrhoids'
                  10='(10) Hemorrhaging during delivery' 11='(11) Other' ;
  VALUE y7_1215f  0='(0) No' 1='(1) Difficult labor/delivery' 2='(2) C-section'
                  3='(3) Urological problems' 4='(4) Respiratory/cardiac distress'
                  5='(5) Atopic pregnancy' 6='(6) Miscarriage (or threat of)'
                  7='(7) Difficult presentation' 8='(8) Drug addiction'
                  9='(9) Phlebitis, hemorrhoids'
                  10='(10) Hemorrhaging during delivery' 11='(11) Other' ;
  VALUE y7_1216f  1='(1) Involuntary' 2='(2) Voluntary' ;
  VALUE y7_1217f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1218f  0='(0) No effect' 1='(1) Hemorrhaging/blood disorders'
                  2='(2) Hysterectomy' 3='(3) Infections' 4='(4) Depression' 5='(5) Guilt'
                  6='(6) Fatigue' 7='(7) Fear of pregnancy/intercourse'
                  8='(8) Husband/boyfriend upset' 9='(9) Never get another abortion'
                  10='(10) Relieved' 11='(11) Other problem' 12='(12) Other benefit'
                  13='(13) Anger' ;
  VALUE y7_1219f  0='(0) No effect' 1='(1) Hemorrhaging/blood disorders'
                  2='(2) Hysterectomy' 3='(3) Infections' 4='(4) Depression' 5='(5) Guilt'
                  6='(6) Fatigue' 7='(7) Fear of pregnancy/intercourse'
                  8='(8) Husband/boyfriend upset' 9='(9) Never get another abortion'
                  10='(10) Relieved' 11='(11) Other problem' 12='(12) Other benefit'
                  13='(13) Anger' ;
  VALUE y7_1220f  0='(0) No effect' 1='(1) Hemorrhaging/blood disorders'
                  2='(2) Hysterectomy' 3='(3) Infections' 4='(4) Depression' 5='(5) Guilt'
                  6='(6) Fatigue' 7='(7) Fear of pregnancy/intercourse'
                  8='(8) Husband/boyfriend upset' 9='(9) Never get another abortion'
                  10='(10) Relieved' 11='(11) Other problem' 12='(12) Other benefit'
                  13='(13) Anger' ;
  VALUE y7_1221f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1222f  0='(0) No effect' 1='(1) Hemorrhaging/blood disorders'
                  2='(2) Hysterectomy' 3='(3) Infections' 4='(4) Depression' 5='(5) Guilt'
                  6='(6) Fatigue' 7='(7) Fear of pregnancy/intercourse'
                  8='(8) Husband/boyfriend upset' 9='(9) Never get another abortion'
                  10='(10) Relieved' 11='(11) Other problem' 12='(12) Other benefit'
                  13='(13) Anger' ;
  VALUE y7_1223f  0='(0) No effect' 1='(1) Hemorrhaging/blood disorders'
                  2='(2) Hysterectomy' 3='(3) Infections' 4='(4) Depression' 5='(5) Guilt'
                  6='(6) Fatigue' 7='(7) Fear of pregnancy/intercourse'
                  8='(8) Husband/boyfriend upset' 9='(9) Never get another abortion'
                  10='(10) Relieved' 11='(11) Other problem' 12='(12) Other benefit'
                  13='(13) Anger' ;
  VALUE y7_1224f  0='(0) No effect' 1='(1) Hemorrhaging/blood disorders'
                  2='(2) Hysterectomy' 3='(3) Infections' 4='(4) Depression' 5='(5) Guilt'
                  6='(6) Fatigue' 7='(7) Fear of pregnancy/intercourse'
                  8='(8) Husband/boyfriend upset' 9='(9) Never get another abortion'
                  10='(10) Relieved' 11='(11) Other problem' 12='(12) Other benefit'
                  13='(13) Anger' ;
  VALUE y7_1225f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1226f  0='(0) No effect' 1='(1) Hemorrhaging/blood disorders'
                  2='(2) Hysterectomy' 3='(3) Infections' 4='(4) Depression' 5='(5) Guilt'
                  6='(6) Fatigue' 7='(7) Fear of pregnancy/intercourse'
                  8='(8) Husband/boyfriend upset' 9='(9) Never get another abortion'
                  10='(10) Relieved' 11='(11) Other problem' 12='(12) Other benefit'
                  13='(13) Anger' ;
  VALUE y7_1227f  0='(0) No effect' 1='(1) Hemorrhaging/blood disorders'
                  2='(2) Hysterectomy' 3='(3) Infections' 4='(4) Depression' 5='(5) Guilt'
                  6='(6) Fatigue' 7='(7) Fear of pregnancy/intercourse'
                  8='(8) Husband/boyfriend upset' 9='(9) Never get another abortion'
                  10='(10) Relieved' 11='(11) Other problem' 12='(12) Other benefit'
                  13='(13) Anger' ;
  VALUE y7_1228f  0='(0) No effect' 1='(1) Hemorrhaging/blood disorders'
                  2='(2) Hysterectomy' 3='(3) Infections' 4='(4) Depression' 5='(5) Guilt'
                  6='(6) Fatigue' 7='(7) Fear of pregnancy/intercourse'
                  8='(8) Husband/boyfriend upset' 9='(9) Never get another abortion'
                  10='(10) Relieved' 11='(11) Other problem' 12='(12) Other benefit'
                  13='(13) Anger' ;
  VALUE y7_1229f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1230f  1='(1) Symptom not present' 5='(5) Symptom present' ;
  VALUE y7_1231f  1='(1) Symptom not present' 5='(5) Symptom present' ;
  VALUE y7_1232f  1='(1) Symptom not present' 5='(5) Symptom present' ;
  VALUE y7_1233f  1='(1) No symptom(s)' 5='(5) Symptom in at least one category' ;
  VALUE y7_1234f  1='(1) Symptom not present' 5='(5) Symptom present' ;
  VALUE y7_1235f  1='(1) Symptom not present' 5='(5) Symptom present' ;
  VALUE y7_1236f  1='(1) No symptom(s)' 5='(5) Symptom in at least one category' ;
  VALUE y7_1237f  1='(1) Symptom not present' 5='(5) Symptom present' ;
  VALUE y7_1238f  1='(1) No symptom(s)' 5='(5) Symptom in at least one category' ;
  VALUE y7_1239f  1='(1) Symptom not present' 5='(5) Symptom present' ;
  VALUE y7_1240f  1='(1) Symptom not present' 5='(5) Symptom present' ;
  VALUE y7_1241f  1='(1) No symptom(s)' 5='(5) Symptom in at least one category' ;
  VALUE y7_1242f  1='(1) Symptom not present' 5='(5) Symptom present' ;
  VALUE y7_1243f  1='(1) No symptom(s)' 5='(5) Symptom in at least one category' ;
  VALUE y7_1244f  1='(1) Symptom not present' 5='(5) Symptom present' ;
  VALUE y7_1245f  1='(1) Symptom not present' 5='(5) Symptom present' ;
  VALUE y7_1246f  1='(1) No symptom(s)' 5='(5) Symptom in at least one category' ;
  VALUE y7_1247f  1='(1) Symptom not present' 5='(5) Symptom present' ;
  VALUE y7_1248f  1='(1) No symptom(s)' 5='(5) Symptom in at least one category' ;
  VALUE y7_1249f  1='(1) Symptom not present' 5='(5) Symptom present' ;
  VALUE y7_1250f  1='(1) Symptom not present' 5='(5) Symptom present' ;
  VALUE y7_1251f  1='(1) Symptom not present' 5='(5) Symptom present' ;
  VALUE y7_1252f  1='(1) Symptom not present' 5='(5) Symptom present' ;
  VALUE y7_1253f  1='(1) No symptom(s)' 5='(5) Symptom in at least one category' ;
  VALUE y7_1254f  1='(1) No: less than 3 summaries' 2='(2) Yes: 3 or more summaries' ;
  VALUE y7_1255f  1='(1) Yes' 2='(2) No' ;
  VALUE y7_1256f  1='(1) Yes (No correction)' 2='(2) No (Depression with symptoms)' ;
  VALUE y7_1262f  1='(1) No' 5='(5) Yes' ;
  VALUE y7_1263f  1='(1) No' 5='(5) Yes' ;
  VALUE y7_1264f  1='(1) No' 5='(5) Yes' ;
  VALUE y7_1265f  1='(1) No' 5='(5) Yes' ;
  VALUE y7_1266f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1267f  2='(2) Only due to a death' 5='(5) Not due to a death' ;
  VALUE y7_1268f  1='(1) Yes' 2='(2) No' ;
  VALUE y7_1269f  1='(1) Within last 2 weeks' 2='(2) Within last month'
                  3='(3) Within last 6 months' 4='(4) Within last year'
                  5='(5) More than 1 year ago' ;
  VALUE y7_1271f  1='(1) Yes' 2='(2) No' ;
  VALUE y7_1274f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1275f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1276f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1277f  1='(1) None at all' 2='(2) Only a little' 3='(3) Some'
                  4='(4) A fair amount' 5='(5) A great deal' ;
  VALUE y7_1279f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1280f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1281f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1282f  1='(1) None at all' 2='(2) Only a little' 3='(3) Some'
                  4='(4) A fair amount' 5='(5) A great deal' ;
  VALUE y7_1284f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1285f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1286f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1287f  1='(1) None at all' 2='(2) Only a little' 3='(3) Some'
                  4='(4) A fair amount' 5='(5) A great deal' ;
  VALUE y7_1289f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1290f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1291f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1292f  1='(1) None at all' 2='(2) Only a little' 3='(3) Some'
                  4='(4) A fair amount' 5='(5) A great deal' ;
  VALUE y7_1294f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1295f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1296f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1297f  1='(1) None at all' 2='(2) Only a little' 3='(3) Some'
                  4='(4) A fair amount' 5='(5) A great deal' ;
  VALUE y7_1299f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1300f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1301f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1302f  1='(1) None at all' 2='(2) Only a little' 3='(3) Some'
                  4='(4) A fair amount' 5='(5) A great deal' ;
  VALUE y7_1304f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1305f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1306f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1307f  1='(1) None at all' 2='(2) Only a little' 3='(3) Some'
                  4='(4) A fair amount' 5='(5) A great deal' ;
  VALUE y7_1309f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1310f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1311f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1312f  1='(1) None at all' 2='(2) Only a little' 3='(3) Some'
                  4='(4) A fair amount' 5='(5) A great deal' ;
  VALUE y7_1314f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1315f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1316f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1317f  1='(1) None at all' 2='(2) Only a little' 3='(3) Some'
                  4='(4) A fair amount' 5='(5) A great deal' ;
  VALUE y7_1319f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1320f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1321f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1322f  1='(1) None at all' 2='(2) Only a little' 3='(3) Some'
                  4='(4) A fair amount' 5='(5) A great deal' ;
  VALUE y7_1324f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1325f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1326f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1327f  1='(1) None at all' 2='(2) Only a little' 3='(3) Some'
                  4='(4) A fair amount' 5='(5) A great deal' ;
  VALUE y7_1329f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1330f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1331f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1332f  1='(1) None at all' 2='(2) Only a little' 3='(3) Some'
                  4='(4) A fair amount' 5='(5) A great deal' ;
  VALUE y7_1334f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1335f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1336f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1337f  1='(1) None at all' 2='(2) Only a little' 3='(3) Some'
                  4='(4) A fair amount' 5='(5) A great deal' ;
  VALUE y7_1339f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1340f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1341f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1342f  1='(1) None at all' 2='(2) Only a little' 3='(3) Some'
                  4='(4) A fair amount' 5='(5) A great deal' ;
  VALUE y7_1344f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1345f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1346f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1347f  1='(1) None at all' 2='(2) Only a little' 3='(3) Some'
                  4='(4) A fair amount' 5='(5) A great deal' ;
  VALUE y7_1349f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1350f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1351f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1352f  1='(1) None at all' 2='(2) Only a little' 3='(3) Some'
                  4='(4) A fair amount' 5='(5) A great deal' ;
  VALUE y7_1354f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1355f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1356f  0='(0) No problem' 1='(1) Drugs' 2='(2) Alcohol'
                  3='(3) Family relationships' 4='(4) Depression'
                  5='(5) Sexual relationships' 6='(6) Trouble with the law'
                  7='(7) Emotional stress/nerves' 8='(8) Problem with boy/girlfriend'
                  9='(9) Work/school problems' 10='(10) Problems with friends'
                  11='(11) Physical health/illness' 12='(12) Financial problems'
                  13='(13) Death of friend/relative' 99='(99) Other' ;
  VALUE y7_1357f  1='(1) None at all' 2='(2) Only a little' 3='(3) Some'
                  4='(4) A fair amount' 5='(5) A great deal' ;
  VALUE y7_1358f  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE y7_1359f  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE y7_1360f  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE y7_1361f  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE y7_1362f  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE y7_1363f  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE y7_1364f  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE y7_1365f  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE y7_1366f  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE y7_1367f  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE y7_1368f  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE y7_1369f  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE y7_1370f  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE y7_1371f  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE y7_1372f  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE y7_1373f  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE y7_1374f  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE y7_1375f  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE y7_1376f  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE y7_1377f  0='(0) Never' 1='(1) Once' 2='(2) Twice' 3='(3) 3-5 Times' 4='(4) 6-10 Times'
                  5='(5) 11-20 Times' 6='(6) More Than 20 Times' ;
  VALUE y7_1383f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1385f  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_1387f  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_1390f  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_1391f  1='(1) Boy/girlfriend' 2='(2) Date' 3='(3) Friend' 4='(4) Acquaintance'
                  5='(5) Stranger' 6='(6) Spouse' 7='(7) Relative' 8='(8) Other' ;
  VALUE y7_1392f  1='(1) Male' 2='(2) Female' 3='(3) Both' ;
  VALUE y7_1393f  1='(1) Verbal persuasion' 2='(2) Verbal threats of injury'
                  3='(3) Hit, slap, mild roughness' 4='(4) Physical beating/choking'
                  5='(5) Threat to use weapon' 6='(6) Used a weapon' ;
  VALUE y7_1394f  0='(0) No' ;
  VALUE y7_1395f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1396f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1397f  0='(0) No' ;
  VALUE y7_1399f  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_1400f  1='(1) Boy/girlfriend' 2='(2) Date' 3='(3) Friend' 4='(4) Acquaintance'
                  5='(5) Stranger' 6='(6) Spouse' 7='(7) Relative' 8='(8) Other' ;
  VALUE y7_1401f  1='(1) Male' 2='(2) Female' 3='(3) Both' ;
  VALUE y7_1402f  1='(1) Verbal persuasion' 2='(2) Verbal threats of injury'
                  3='(3) Hit, slap, mild roughness' 4='(4) Physical beating/choking'
                  5='(5) Threat to use weapon' 6='(6) Used a weapon' ;
  VALUE y7_1403f  0='(0) No' ;
  VALUE y7_1404f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1405f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1406f  0='(0) No' ;
  VALUE y7_1408f  1='(1) Husband/wife' 2='(2) Fiance/fiancee'
                  3='(3) Steady dating partner' 4='(4) Friend' 5='(5) Teacher'
                  6='(6) Casual acquaintance' 7='(7) Relative' 8='(8) Complete stranger'
                  9='(9) Prostitute' ;
  VALUE y7_1409f  1='(1) Forced' 2='(2) Voluntary' ;
  VALUE y7_1410f  1='(1) Very positive' 2='(2) Positive'
                  3='(3) Both positive and negative'
                  4='(4) Neither positive or negative' 5='(5) Negative'
                  6='(6) Very negative' ;
  VALUE y7_1411f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1413f  1='(1) Forced' 2='(2) Voluntary' ;
  VALUE y7_1414f  1='(1) Very positive' 2='(2) Positive'
                  3='(3) Both positive and negative'
                  4='(4) Neither positive or negative' 5='(5) Negative'
                  6='(6) Very negative' ;
  VALUE y7_1416f  4='(4) Once a month' 5='(5) Once every 2-3 weeks' 6='(6) Once a week'
                  7='(7) 2-3 times a week' 8='(8) Once a day' 9='(9) 2-3 times a day' ;
  VALUE y7_1418f  1='(1) Heterosexual' 2='(2) Bisexual' 3='(3) Gay' 4='(4) Uncertain'
                  9='(9) Dont know (Respondent did not' ;
  VALUE y7_1419f  1='(1) Very dissatisfied' 2='(2) Somewhat dissatisfied'
                  3='(3) Neither satisfied nor dissatisfied'
                  4='(4) Somewhat satisfied' 5='(5) Very satisfied' ;
  VALUE y7_1420f  1='(1) Very little' 2='(2) Not too much' 3='(3) Some' 4='(4) Quite a bit'
                  5='(5) A great deal' ;
  VALUE y7_1421f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1423f  0='(0) Not in past yr' 999='(999) Some time/not past yr' ;
  VALUE y7_1424f  0='(0) Not in past yr' 999='(999) Some time/not past yr' ;
  VALUE y7_1425f  0='(0) Not in past yr' 999='(999) Some time/not past yr' ;
  VALUE y7_1426f  0='(0) Not in past yr' 999='(999) Some time/not past yr' ;
  VALUE y7_1427f  0='(0) Not in past yr' 999='(999) Some time/not past yr' ;
  VALUE y7_1428f  0='(0) Not in past yr' 999='(999) Some time/not past yr' ;
  VALUE y7_1429f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1430f  1='(1) Drugs' ;
  VALUE y7_1431f  1='(1) Sex' ;
  VALUE y7_1432f  1='(1) Mental health' ;
  VALUE y7_1433f  1='(1) Criminal behavior' ;
  VALUE y7_1434f  1='(1) Spouse violence' ;
  VALUE y7_1437f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1451f  1='(1) Not at all anxious' 2='(2) Somewhat anxious'
                  3='(3) Very anxious' ;
  VALUE y7_1452f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1453f  1='(1) Very low' 2='(2) Below average' 3='(3) Average'
                  4='(4) Above average' 5='(5) Very high' ;
  VALUE y7_1454f  1='(1) Difficulty with language' ;
  VALUE y7_1455f  1='(1) Difficulty with questions' ;
  VALUE y7_1456f  1='(1) Interruptions' ;
  VALUE y7_1457f  1='(1) Temporary breakoff' ;
  VALUE y7_1458f  1='(1) Breakoff' ;
  VALUE y7_1459f  1='(1) Other (all other unclassifiable)' ;
  VALUE y7_1460f  1='(1) Relaxed' 2='(2) Tense' 3='(3) Other' ;
  VALUE y7_1461f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1466f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1467f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1468f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1469f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1470f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1471f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1472f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1473f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1474f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1475f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1476f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1477f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1478f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1479f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1480f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1481f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1482f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1483f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1484f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1485f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1486f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1487f  1='(1) No' 2='(2) Yes' ;
  VALUE y7_1730f  1='(1) Urban' 2='(2) Suburban' 3='(3) Rural' ;
RUN;

* SAS DATA STEP;
DATA;
SET SAS-dataset ;


* USER-DEFINED MISSING VALUES RECODE TO SAS SYSMIS;

/*
   IF (CASEID = -1) THEN CASEID = .;
   IF (DTSET1 = -1) THEN DTSET1 = .;
   IF (SSMPL1 = -1) THEN SSMPL1 = .;
   IF (HHLD1 = -1) THEN HHLD1 = .;
   IF (RESP1 = -1) THEN RESP1 = .;
   IF (Y7_1 = -1) THEN Y7_1 = .;
   IF (Y7_2 = -1) THEN Y7_2 = .;
   IF (Y7_3 = -1) THEN Y7_3 = .;
   IF (Y7_7 = -1) THEN Y7_7 = .;
   IF (Y7_8 = -1) THEN Y7_8 = .;
   IF (Y7_9 = -1) THEN Y7_9 = .;
   IF (Y7_10 = -1) THEN Y7_10 = .;
   IF (Y7_11 = -1) THEN Y7_11 = .;
   IF (Y7_12 = -1) THEN Y7_12 = .;
   IF (Y7_13 = -1) THEN Y7_13 = .;
   IF (Y7_14 = -1) THEN Y7_14 = .;
   IF (Y7_15 = -1) THEN Y7_15 = .;
   IF (Y7_16 = -1) THEN Y7_16 = .;
   IF (Y7_17 = -1) THEN Y7_17 = .;
   IF (Y7_18 = -1) THEN Y7_18 = .;
   IF (Y7_19 = -1) THEN Y7_19 = .;
   IF (Y7_20 = -1) THEN Y7_20 = .;
   IF (Y7_21 = -1) THEN Y7_21 = .;
   IF (Y7_22 = -1) THEN Y7_22 = .;
   IF (Y7_23 = -1) THEN Y7_23 = .;
   IF (Y7_24 = -1) THEN Y7_24 = .;
   IF (Y7_25 = -1) THEN Y7_25 = .;
   IF (Y7_26 = -1) THEN Y7_26 = .;
   IF (Y7_27 = -1) THEN Y7_27 = .;
   IF (Y7_28 = -1) THEN Y7_28 = .;
   IF (Y7_29 = -1) THEN Y7_29 = .;
   IF (Y7_30 = -1) THEN Y7_30 = .;
   IF (Y7_31 = -1) THEN Y7_31 = .;
   IF (Y7_32 = -1) THEN Y7_32 = .;
   IF (Y7_33 = -1) THEN Y7_33 = .;
   IF (Y7_34 = -1) THEN Y7_34 = .;
   IF (Y7_35 = -1) THEN Y7_35 = .;
   IF (Y7_36 = -1) THEN Y7_36 = .;
   IF (Y7_37 = -1) THEN Y7_37 = .;
   IF (Y7_38 = -1) THEN Y7_38 = .;
   IF (Y7_39 = -1) THEN Y7_39 = .;
   IF (Y7_40 = -1) THEN Y7_40 = .;
   IF (Y7_41 = -1) THEN Y7_41 = .;
   IF (Y7_42 = -1) THEN Y7_42 = .;
   IF (Y7_43 = -1) THEN Y7_43 = .;
   IF (Y7_44 = -1) THEN Y7_44 = .;
   IF (Y7_45 = -1) THEN Y7_45 = .;
   IF (Y7_46 = -1) THEN Y7_46 = .;
   IF (Y7_47 = -1) THEN Y7_47 = .;
   IF (Y7_48 = -1) THEN Y7_48 = .;
   IF (Y7_49 = -1) THEN Y7_49 = .;
   IF (Y7_50 = -1) THEN Y7_50 = .;
   IF (Y7_51 = -1) THEN Y7_51 = .;
   IF (Y7_52 = -1) THEN Y7_52 = .;
   IF (Y7_53 = -1) THEN Y7_53 = .;
   IF (Y7_54 = -1) THEN Y7_54 = .;
   IF (Y7_55 = -1) THEN Y7_55 = .;
   IF (Y7_56 = -1) THEN Y7_56 = .;
   IF (Y7_57 = -1) THEN Y7_57 = .;
   IF (Y7_58 = -1) THEN Y7_58 = .;
   IF (Y7_59 = -1) THEN Y7_59 = .;
   IF (Y7_60 = -1) THEN Y7_60 = .;
   IF (Y7_61 = -1) THEN Y7_61 = .;
   IF (Y7_62 = -1) THEN Y7_62 = .;
   IF (Y7_63 = -1) THEN Y7_63 = .;
   IF (Y7_64 = -1) THEN Y7_64 = .;
   IF (Y7_65 = -1) THEN Y7_65 = .;
   IF (Y7_66 = -1) THEN Y7_66 = .;
   IF (Y7_67 = -1) THEN Y7_67 = .;
   IF (Y7_68 = -1) THEN Y7_68 = .;
   IF (Y7_69 = -1) THEN Y7_69 = .;
   IF (Y7_70 = -1) THEN Y7_70 = .;
   IF (Y7_71 = -1) THEN Y7_71 = .;
   IF (Y7_72 = -1) THEN Y7_72 = .;
   IF (Y7_73 = -1) THEN Y7_73 = .;
   IF (Y7_74 = -1) THEN Y7_74 = .;
   IF (Y7_75 = -1) THEN Y7_75 = .;
   IF (Y7_76 = -1) THEN Y7_76 = .;
   IF (Y7_77 = -1) THEN Y7_77 = .;
   IF (Y7_78 = -1) THEN Y7_78 = .;
   IF (Y7_79 = -1) THEN Y7_79 = .;
   IF (Y7_80 = -1) THEN Y7_80 = .;
   IF (Y7_81 = -1) THEN Y7_81 = .;
   IF (Y7_82 = -1) THEN Y7_82 = .;
   IF (Y7_83 = -1) THEN Y7_83 = .;
   IF (Y7_84 = -1) THEN Y7_84 = .;
   IF (Y7_85 = -1) THEN Y7_85 = .;
   IF (Y7_86 = -1) THEN Y7_86 = .;
   IF (Y7_87 = -1) THEN Y7_87 = .;
   IF (Y7_88 = -1) THEN Y7_88 = .;
   IF (Y7_89 = -1) THEN Y7_89 = .;
   IF (Y7_90 = -1) THEN Y7_90 = .;
   IF (Y7_91 = -1) THEN Y7_91 = .;
   IF (Y7_92 = -1) THEN Y7_92 = .;
   IF (Y7_93 = -1) THEN Y7_93 = .;
   IF (Y7_94 = -1) THEN Y7_94 = .;
   IF (Y7_95 = -1) THEN Y7_95 = .;
   IF (Y7_96 = -1) THEN Y7_96 = .;
   IF (Y7_97 = -1) THEN Y7_97 = .;
   IF (Y7_98 = -1) THEN Y7_98 = .;
   IF (Y7_99 = -1) THEN Y7_99 = .;
   IF (Y7_100 = -1) THEN Y7_100 = .;
   IF (Y7_101 = -1) THEN Y7_101 = .;
   IF (Y7_102 = -1) THEN Y7_102 = .;
   IF (Y7_103 = -1) THEN Y7_103 = .;
   IF (Y7_104 = -1) THEN Y7_104 = .;
   IF (Y7_105 = -1) THEN Y7_105 = .;
   IF (Y7_106 = -1) THEN Y7_106 = .;
   IF (Y7_107 = -1) THEN Y7_107 = .;
   IF (Y7_108 = -1) THEN Y7_108 = .;
   IF (Y7_109 = -1) THEN Y7_109 = .;
   IF (Y7_110 = -1) THEN Y7_110 = .;
   IF (Y7_111 = -1) THEN Y7_111 = .;
   IF (Y7_112 = -1) THEN Y7_112 = .;
   IF (Y7_113 = -1) THEN Y7_113 = .;
   IF (Y7_114 = -1) THEN Y7_114 = .;
   IF (Y7_115 = -1) THEN Y7_115 = .;
   IF (Y7_116 = -1) THEN Y7_116 = .;
   IF (Y7_117 = -1) THEN Y7_117 = .;
   IF (Y7_118 = -1) THEN Y7_118 = .;
   IF (Y7_119 = -1) THEN Y7_119 = .;
   IF (Y7_120 = -1) THEN Y7_120 = .;
   IF (Y7_121 = -1) THEN Y7_121 = .;
   IF (Y7_122 = -1) THEN Y7_122 = .;
   IF (Y7_123 = -1) THEN Y7_123 = .;
   IF (Y7_124 = -1) THEN Y7_124 = .;
   IF (Y7_125 = -1) THEN Y7_125 = .;
   IF (Y7_126 = -1) THEN Y7_126 = .;
   IF (Y7_127 = -1) THEN Y7_127 = .;
   IF (Y7_128 = -1) THEN Y7_128 = .;
   IF (Y7_129 = -1) THEN Y7_129 = .;
   IF (Y7_130 = -1) THEN Y7_130 = .;
   IF (Y7_131 = -1) THEN Y7_131 = .;
   IF (Y7_132 = -1) THEN Y7_132 = .;
   IF (Y7_133 = -1) THEN Y7_133 = .;
   IF (Y7_134 = -1) THEN Y7_134 = .;
   IF (Y7_135 = -1) THEN Y7_135 = .;
   IF (Y7_136 = -1) THEN Y7_136 = .;
   IF (Y7_137 = -1) THEN Y7_137 = .;
   IF (Y7_138 = -1) THEN Y7_138 = .;
   IF (Y7_139 = -1) THEN Y7_139 = .;
   IF (Y7_140 = -1) THEN Y7_140 = .;
   IF (Y7_141 = -1) THEN Y7_141 = .;
   IF (Y7_142 = -1) THEN Y7_142 = .;
   IF (Y7_143 = -1) THEN Y7_143 = .;
   IF (Y7_144 = -1) THEN Y7_144 = .;
   IF (Y7_145 = -1) THEN Y7_145 = .;
   IF (Y7_146 = -1) THEN Y7_146 = .;
   IF (Y7_147 = -1) THEN Y7_147 = .;
   IF (Y7_148 = -1) THEN Y7_148 = .;
   IF (Y7_149 = -1) THEN Y7_149 = .;
   IF (Y7_150 = -1) THEN Y7_150 = .;
   IF (Y7_151 = -1) THEN Y7_151 = .;
   IF (Y7_152 = -1) THEN Y7_152 = .;
   IF (Y7_153 = -1) THEN Y7_153 = .;
   IF (Y7_154 = -1) THEN Y7_154 = .;
   IF (Y7_155 = -1) THEN Y7_155 = .;
   IF (Y7_156 = -1) THEN Y7_156 = .;
   IF (Y7_157 = -1) THEN Y7_157 = .;
   IF (Y7_158 = -1) THEN Y7_158 = .;
   IF (Y7_159 = -1) THEN Y7_159 = .;
   IF (Y7_160 = -1) THEN Y7_160 = .;
   IF (Y7_161 = -1) THEN Y7_161 = .;
   IF (Y7_162 = -1) THEN Y7_162 = .;
   IF (Y7_163 = -1) THEN Y7_163 = .;
   IF (Y7_164 = -1) THEN Y7_164 = .;
   IF (Y7_165 = -1) THEN Y7_165 = .;
   IF (Y7_166 = -1) THEN Y7_166 = .;
   IF (Y7_167 = -1) THEN Y7_167 = .;
   IF (Y7_168 = -1) THEN Y7_168 = .;
   IF (Y7_169 = -1) THEN Y7_169 = .;
   IF (Y7_170 = -1) THEN Y7_170 = .;
   IF (Y7_171 = -1) THEN Y7_171 = .;
   IF (Y7_172 = -1) THEN Y7_172 = .;
   IF (Y7_173 = -1) THEN Y7_173 = .;
   IF (Y7_174 = -1) THEN Y7_174 = .;
   IF (Y7_175 = -1) THEN Y7_175 = .;
   IF (Y7_176 = -1) THEN Y7_176 = .;
   IF (Y7_177 = -1) THEN Y7_177 = .;
   IF (Y7_178 = -1) THEN Y7_178 = .;
   IF (Y7_179 = -1) THEN Y7_179 = .;
   IF (Y7_180 = -1) THEN Y7_180 = .;
   IF (Y7_181 = -1) THEN Y7_181 = .;
   IF (Y7_182 = -1) THEN Y7_182 = .;
   IF (Y7_183 = -1) THEN Y7_183 = .;
   IF (Y7_184 = -1) THEN Y7_184 = .;
   IF (Y7_185 = -1) THEN Y7_185 = .;
   IF (Y7_186 = -1) THEN Y7_186 = .;
   IF (Y7_187 = -1) THEN Y7_187 = .;
   IF (Y7_188 = -1) THEN Y7_188 = .;
   IF (Y7_189 = -1) THEN Y7_189 = .;
   IF (Y7_190 = -1) THEN Y7_190 = .;
   IF (Y7_191 = -1) THEN Y7_191 = .;
   IF (Y7_192 = -1) THEN Y7_192 = .;
   IF (Y7_193 = -1) THEN Y7_193 = .;
   IF (Y7_194 = -1) THEN Y7_194 = .;
   IF (Y7_195 = -1) THEN Y7_195 = .;
   IF (Y7_196 = -1) THEN Y7_196 = .;
   IF (Y7_197 = -1) THEN Y7_197 = .;
   IF (Y7_198 = -1) THEN Y7_198 = .;
   IF (Y7_199 = -1) THEN Y7_199 = .;
   IF (Y7_200 = -1) THEN Y7_200 = .;
   IF (Y7_201 = -1) THEN Y7_201 = .;
   IF (Y7_202 = -1) THEN Y7_202 = .;
   IF (Y7_203 = -1) THEN Y7_203 = .;
   IF (Y7_204 = -1) THEN Y7_204 = .;
   IF (Y7_205 = -1) THEN Y7_205 = .;
   IF (Y7_206 = -1) THEN Y7_206 = .;
   IF (Y7_207 = -1) THEN Y7_207 = .;
   IF (Y7_208 = -1) THEN Y7_208 = .;
   IF (Y7_209 = -1) THEN Y7_209 = .;
   IF (Y7_210 = -1) THEN Y7_210 = .;
   IF (Y7_211 = -1) THEN Y7_211 = .;
   IF (Y7_212 = -1) THEN Y7_212 = .;
   IF (Y7_213 = -1) THEN Y7_213 = .;
   IF (Y7_214 = -1) THEN Y7_214 = .;
   IF (Y7_215 = -1) THEN Y7_215 = .;
   IF (Y7_216 = -1) THEN Y7_216 = .;
   IF (Y7_217 = -1) THEN Y7_217 = .;
   IF (Y7_218 = -1) THEN Y7_218 = .;
   IF (Y7_219 = -1) THEN Y7_219 = .;
   IF (Y7_220 = -1) THEN Y7_220 = .;
   IF (Y7_221 = -1) THEN Y7_221 = .;
   IF (Y7_222 = -1) THEN Y7_222 = .;
   IF (Y7_223 = -1) THEN Y7_223 = .;
   IF (Y7_224 = -1) THEN Y7_224 = .;
   IF (Y7_225 = -1) THEN Y7_225 = .;
   IF (Y7_226 = -1) THEN Y7_226 = .;
   IF (Y7_227 = -1) THEN Y7_227 = .;
   IF (Y7_228 = -1) THEN Y7_228 = .;
   IF (Y7_229 = -1) THEN Y7_229 = .;
   IF (Y7_230 = -1) THEN Y7_230 = .;
   IF (Y7_231 = -1) THEN Y7_231 = .;
   IF (Y7_232 = -1) THEN Y7_232 = .;
   IF (Y7_233 = -1) THEN Y7_233 = .;
   IF (Y7_234 = -1) THEN Y7_234 = .;
   IF (Y7_235 = -1) THEN Y7_235 = .;
   IF (Y7_236 = -1) THEN Y7_236 = .;
   IF (Y7_237 = -1) THEN Y7_237 = .;
   IF (Y7_238 = -1) THEN Y7_238 = .;
   IF (Y7_239 = -1) THEN Y7_239 = .;
   IF (Y7_240 = -1) THEN Y7_240 = .;
   IF (Y7_241 = -1) THEN Y7_241 = .;
   IF (Y7_242 = -1) THEN Y7_242 = .;
   IF (Y7_243 = -1) THEN Y7_243 = .;
   IF (Y7_244 = -1) THEN Y7_244 = .;
   IF (Y7_245 = -1) THEN Y7_245 = .;
   IF (Y7_246 = -1) THEN Y7_246 = .;
   IF (Y7_247 = -1) THEN Y7_247 = .;
   IF (Y7_248 = -1) THEN Y7_248 = .;
   IF (Y7_249 = -1) THEN Y7_249 = .;
   IF (Y7_250 = -1) THEN Y7_250 = .;
   IF (Y7_251 = -1) THEN Y7_251 = .;
   IF (Y7_252 = -1) THEN Y7_252 = .;
   IF (Y7_253 = -1) THEN Y7_253 = .;
   IF (Y7_254 = -1) THEN Y7_254 = .;
   IF (Y7_255 = -1) THEN Y7_255 = .;
   IF (Y7_256 = -1) THEN Y7_256 = .;
   IF (Y7_257 = -1) THEN Y7_257 = .;
   IF (Y7_258 = -1) THEN Y7_258 = .;
   IF (Y7_259 = -1) THEN Y7_259 = .;
   IF (Y7_260 = -1) THEN Y7_260 = .;
   IF (Y7_261 = -1) THEN Y7_261 = .;
   IF (Y7_262 = -1) THEN Y7_262 = .;
   IF (Y7_263 = -1) THEN Y7_263 = .;
   IF (Y7_264 = -1) THEN Y7_264 = .;
   IF (Y7_265 = -1) THEN Y7_265 = .;
   IF (Y7_266 = -1) THEN Y7_266 = .;
   IF (Y7_267 = -1) THEN Y7_267 = .;
   IF (Y7_268 = -1) THEN Y7_268 = .;
   IF (Y7_269 = -1) THEN Y7_269 = .;
   IF (Y7_270 = -1) THEN Y7_270 = .;
   IF (Y7_271 = -1) THEN Y7_271 = .;
   IF (Y7_272 = -1) THEN Y7_272 = .;
   IF (Y7_273 = -1) THEN Y7_273 = .;
   IF (Y7_274 = -1) THEN Y7_274 = .;
   IF (Y7_275 = -1) THEN Y7_275 = .;
   IF (Y7_276 = -1) THEN Y7_276 = .;
   IF (Y7_277 = -1) THEN Y7_277 = .;
   IF (Y7_278 = -1) THEN Y7_278 = .;
   IF (Y7_279 = -1) THEN Y7_279 = .;
   IF (Y7_280 = -1) THEN Y7_280 = .;
   IF (Y7_281 = -1) THEN Y7_281 = .;
   IF (Y7_282 = -1) THEN Y7_282 = .;
   IF (Y7_283 = -1) THEN Y7_283 = .;
   IF (Y7_284 = -1) THEN Y7_284 = .;
   IF (Y7_285 = -1) THEN Y7_285 = .;
   IF (Y7_286 = -1) THEN Y7_286 = .;
   IF (Y7_287 = -1) THEN Y7_287 = .;
   IF (Y7_288 = -1) THEN Y7_288 = .;
   IF (Y7_289 = -1) THEN Y7_289 = .;
   IF (Y7_290 = -1) THEN Y7_290 = .;
   IF (Y7_291 = -1) THEN Y7_291 = .;
   IF (Y7_292 = -1) THEN Y7_292 = .;
   IF (Y7_293 = -1) THEN Y7_293 = .;
   IF (Y7_294 = -1) THEN Y7_294 = .;
   IF (Y7_295 = -1) THEN Y7_295 = .;
   IF (Y7_296 = -1) THEN Y7_296 = .;
   IF (Y7_297 = -1) THEN Y7_297 = .;
   IF (Y7_298 = -1) THEN Y7_298 = .;
   IF (Y7_299 = -1) THEN Y7_299 = .;
   IF (Y7_300 = -1) THEN Y7_300 = .;
   IF (Y7_301 = -1) THEN Y7_301 = .;
   IF (Y7_302 = -1) THEN Y7_302 = .;
   IF (Y7_303 = -1) THEN Y7_303 = .;
   IF (Y7_304 = -1) THEN Y7_304 = .;
   IF (Y7_305 = -1) THEN Y7_305 = .;
   IF (Y7_306 = -1) THEN Y7_306 = .;
   IF (Y7_307 = -1) THEN Y7_307 = .;
   IF (Y7_308 = -1) THEN Y7_308 = .;
   IF (Y7_309 = -1) THEN Y7_309 = .;
   IF (Y7_310 = -1) THEN Y7_310 = .;
   IF (Y7_311 = -1) THEN Y7_311 = .;
   IF (Y7_312 = -1) THEN Y7_312 = .;
   IF (Y7_313 = -1) THEN Y7_313 = .;
   IF (Y7_314 = -1) THEN Y7_314 = .;
   IF (Y7_315 = -1) THEN Y7_315 = .;
   IF (Y7_316 = -1) THEN Y7_316 = .;
   IF (Y7_317 = -1) THEN Y7_317 = .;
   IF (Y7_318 = -1) THEN Y7_318 = .;
   IF (Y7_319 = -1) THEN Y7_319 = .;
   IF (Y7_320 = -1) THEN Y7_320 = .;
   IF (Y7_321 = -1) THEN Y7_321 = .;
   IF (Y7_322 = -1) THEN Y7_322 = .;
   IF (Y7_323 = -1) THEN Y7_323 = .;
   IF (Y7_324 = -1) THEN Y7_324 = .;
   IF (Y7_325 = -1) THEN Y7_325 = .;
   IF (Y7_326 = -1) THEN Y7_326 = .;
   IF (Y7_327 = -1) THEN Y7_327 = .;
   IF (Y7_328 = -1) THEN Y7_328 = .;
   IF (Y7_329 = -1) THEN Y7_329 = .;
   IF (Y7_330 = -1) THEN Y7_330 = .;
   IF (Y7_331 = -1) THEN Y7_331 = .;
   IF (Y7_332 = -1) THEN Y7_332 = .;
   IF (Y7_333 = -1) THEN Y7_333 = .;
   IF (Y7_334 = -1) THEN Y7_334 = .;
   IF (Y7_335 = -1) THEN Y7_335 = .;
   IF (Y7_336 = -1) THEN Y7_336 = .;
   IF (Y7_337 = -1) THEN Y7_337 = .;
   IF (Y7_338 = -1) THEN Y7_338 = .;
   IF (Y7_339 = -1) THEN Y7_339 = .;
   IF (Y7_340 = -1) THEN Y7_340 = .;
   IF (Y7_341 = -1) THEN Y7_341 = .;
   IF (Y7_342 = -1) THEN Y7_342 = .;
   IF (Y7_343 = -1) THEN Y7_343 = .;
   IF (Y7_344 = -1) THEN Y7_344 = .;
   IF (Y7_345 = -1) THEN Y7_345 = .;
   IF (Y7_346 = -1) THEN Y7_346 = .;
   IF (Y7_347 = -1) THEN Y7_347 = .;
   IF (Y7_348 = -1) THEN Y7_348 = .;
   IF (Y7_349 = -1) THEN Y7_349 = .;
   IF (Y7_350 = -1) THEN Y7_350 = .;
   IF (Y7_351 = -1) THEN Y7_351 = .;
   IF (Y7_352 = -1) THEN Y7_352 = .;
   IF (Y7_353 = -1) THEN Y7_353 = .;
   IF (Y7_354 = -1) THEN Y7_354 = .;
   IF (Y7_355 = -1) THEN Y7_355 = .;
   IF (Y7_356 = -1) THEN Y7_356 = .;
   IF (Y7_357 = -1) THEN Y7_357 = .;
   IF (Y7_358 = -1) THEN Y7_358 = .;
   IF (Y7_359 = -1) THEN Y7_359 = .;
   IF (Y7_360 = -1) THEN Y7_360 = .;
   IF (Y7_361 = -1) THEN Y7_361 = .;
   IF (Y7_362 = -1) THEN Y7_362 = .;
   IF (Y7_363 = -1) THEN Y7_363 = .;
   IF (Y7_364 = -1) THEN Y7_364 = .;
   IF (Y7_365 = -1) THEN Y7_365 = .;
   IF (Y7_366 = -1) THEN Y7_366 = .;
   IF (Y7_367 = -1) THEN Y7_367 = .;
   IF (Y7_368 = -1) THEN Y7_368 = .;
   IF (Y7_369 = -1) THEN Y7_369 = .;
   IF (Y7_370 = -1) THEN Y7_370 = .;
   IF (Y7_371 = -1) THEN Y7_371 = .;
   IF (Y7_372 = -1) THEN Y7_372 = .;
   IF (Y7_373 = -1) THEN Y7_373 = .;
   IF (Y7_374 = -1) THEN Y7_374 = .;
   IF (Y7_375 = -1) THEN Y7_375 = .;
   IF (Y7_376 = -1) THEN Y7_376 = .;
   IF (Y7_377 = -1) THEN Y7_377 = .;
   IF (Y7_378 = -1) THEN Y7_378 = .;
   IF (Y7_379 = -1) THEN Y7_379 = .;
   IF (Y7_380 = -1) THEN Y7_380 = .;
   IF (Y7_381 = -1) THEN Y7_381 = .;
   IF (Y7_382 = -1) THEN Y7_382 = .;
   IF (Y7_383 = -1) THEN Y7_383 = .;
   IF (Y7_384 = -1) THEN Y7_384 = .;
   IF (Y7_385 = -1) THEN Y7_385 = .;
   IF (Y7_386 = -1) THEN Y7_386 = .;
   IF (Y7_387 = -1) THEN Y7_387 = .;
   IF (Y7_388 = -1) THEN Y7_388 = .;
   IF (Y7_389 = -1) THEN Y7_389 = .;
   IF (Y7_390 = -1) THEN Y7_390 = .;
   IF (Y7_391 = -1) THEN Y7_391 = .;
   IF (Y7_392 = -1) THEN Y7_392 = .;
   IF (Y7_393 = -1) THEN Y7_393 = .;
   IF (Y7_394 = -1) THEN Y7_394 = .;
   IF (Y7_395 = -1) THEN Y7_395 = .;
   IF (Y7_396 = -1) THEN Y7_396 = .;
   IF (Y7_397 = -1) THEN Y7_397 = .;
   IF (Y7_398 = -1) THEN Y7_398 = .;
   IF (Y7_399 = -1) THEN Y7_399 = .;
   IF (Y7_400 = -1) THEN Y7_400 = .;
   IF (Y7_401 = -1) THEN Y7_401 = .;
   IF (Y7_402 = -1) THEN Y7_402 = .;
   IF (Y7_403 = -1) THEN Y7_403 = .;
   IF (Y7_404 = -1) THEN Y7_404 = .;
   IF (Y7_405 = -1) THEN Y7_405 = .;
   IF (Y7_406 = -1) THEN Y7_406 = .;
   IF (Y7_407 = -1) THEN Y7_407 = .;
   IF (Y7_408 = -1) THEN Y7_408 = .;
   IF (Y7_409 = -1) THEN Y7_409 = .;
   IF (Y7_410 = -1) THEN Y7_410 = .;
   IF (Y7_411 = -1) THEN Y7_411 = .;
   IF (Y7_412 = -1) THEN Y7_412 = .;
   IF (Y7_413 = -1) THEN Y7_413 = .;
   IF (Y7_414 = -1) THEN Y7_414 = .;
   IF (Y7_415 = -1) THEN Y7_415 = .;
   IF (Y7_416 = -1) THEN Y7_416 = .;
   IF (Y7_417 = -1) THEN Y7_417 = .;
   IF (Y7_418 = -1) THEN Y7_418 = .;
   IF (Y7_419 = -1) THEN Y7_419 = .;
   IF (Y7_420 = -1) THEN Y7_420 = .;
   IF (Y7_421 = -1) THEN Y7_421 = .;
   IF (Y7_422 = -1) THEN Y7_422 = .;
   IF (Y7_423 = -1) THEN Y7_423 = .;
   IF (Y7_424 = -1) THEN Y7_424 = .;
   IF (Y7_425 = -1) THEN Y7_425 = .;
   IF (Y7_426 = -1) THEN Y7_426 = .;
   IF (Y7_427 = -1) THEN Y7_427 = .;
   IF (Y7_428 = -1) THEN Y7_428 = .;
   IF (Y7_429 = -1) THEN Y7_429 = .;
   IF (Y7_430 = -1) THEN Y7_430 = .;
   IF (Y7_431 = -1) THEN Y7_431 = .;
   IF (Y7_432 = -1) THEN Y7_432 = .;
   IF (Y7_433 = -1) THEN Y7_433 = .;
   IF (Y7_434 = -1) THEN Y7_434 = .;
   IF (Y7_435 = -1) THEN Y7_435 = .;
   IF (Y7_436 = -1) THEN Y7_436 = .;
   IF (Y7_437 = -1) THEN Y7_437 = .;
   IF (Y7_438 = -1) THEN Y7_438 = .;
   IF (Y7_439 = -1) THEN Y7_439 = .;
   IF (Y7_440 = -1) THEN Y7_440 = .;
   IF (Y7_441 = -1) THEN Y7_441 = .;
   IF (Y7_442 = -1) THEN Y7_442 = .;
   IF (Y7_443 = -1) THEN Y7_443 = .;
   IF (Y7_444 = -1) THEN Y7_444 = .;
   IF (Y7_445 = -1) THEN Y7_445 = .;
   IF (Y7_446 = -1) THEN Y7_446 = .;
   IF (Y7_447 = -1) THEN Y7_447 = .;
   IF (Y7_448 = -1) THEN Y7_448 = .;
   IF (Y7_449 = -1) THEN Y7_449 = .;
   IF (Y7_450 = -1) THEN Y7_450 = .;
   IF (Y7_451 = -1) THEN Y7_451 = .;
   IF (Y7_452 = -1) THEN Y7_452 = .;
   IF (Y7_453 = -1) THEN Y7_453 = .;
   IF (Y7_454 = -1) THEN Y7_454 = .;
   IF (Y7_455 = -1) THEN Y7_455 = .;
   IF (Y7_456 = -1) THEN Y7_456 = .;
   IF (Y7_457 = -1) THEN Y7_457 = .;
   IF (Y7_458 = -1) THEN Y7_458 = .;
   IF (Y7_459 = -1) THEN Y7_459 = .;
   IF (Y7_460 = -1) THEN Y7_460 = .;
   IF (Y7_461 = -1) THEN Y7_461 = .;
   IF (Y7_462 = -1) THEN Y7_462 = .;
   IF (Y7_463 = -1) THEN Y7_463 = .;
   IF (Y7_464 = -1) THEN Y7_464 = .;
   IF (Y7_465 = -1) THEN Y7_465 = .;
   IF (Y7_466 = -1) THEN Y7_466 = .;
   IF (Y7_467 = -1) THEN Y7_467 = .;
   IF (Y7_468 = -1) THEN Y7_468 = .;
   IF (Y7_469 = -1) THEN Y7_469 = .;
   IF (Y7_470 = -1) THEN Y7_470 = .;
   IF (Y7_471 = -1) THEN Y7_471 = .;
   IF (Y7_472 = -1) THEN Y7_472 = .;
   IF (Y7_473 = -1) THEN Y7_473 = .;
   IF (Y7_474 = -1) THEN Y7_474 = .;
   IF (Y7_475 = -1) THEN Y7_475 = .;
   IF (Y7_476 = -1) THEN Y7_476 = .;
   IF (Y7_477 = -1) THEN Y7_477 = .;
   IF (Y7_478 = -1) THEN Y7_478 = .;
   IF (Y7_479 = -1) THEN Y7_479 = .;
   IF (Y7_480 = -1) THEN Y7_480 = .;
   IF (Y7_481 = -1) THEN Y7_481 = .;
   IF (Y7_482 = -1) THEN Y7_482 = .;
   IF (Y7_483 = -1) THEN Y7_483 = .;
   IF (Y7_484 = -1) THEN Y7_484 = .;
   IF (Y7_485 = -1) THEN Y7_485 = .;
   IF (Y7_486 = -1) THEN Y7_486 = .;
   IF (Y7_487 = -1) THEN Y7_487 = .;
   IF (Y7_488 = -1) THEN Y7_488 = .;
   IF (Y7_489 = -1) THEN Y7_489 = .;
   IF (Y7_490 = -1) THEN Y7_490 = .;
   IF (Y7_491 = -1) THEN Y7_491 = .;
   IF (Y7_492 = -1) THEN Y7_492 = .;
   IF (Y7_493 = -1) THEN Y7_493 = .;
   IF (Y7_494 = -1) THEN Y7_494 = .;
   IF (Y7_495 = -1) THEN Y7_495 = .;
   IF (Y7_496 = -1) THEN Y7_496 = .;
   IF (Y7_497 = -1) THEN Y7_497 = .;
   IF (Y7_498 = -1) THEN Y7_498 = .;
   IF (Y7_499 = -1) THEN Y7_499 = .;
   IF (Y7_500 = -1) THEN Y7_500 = .;
   IF (Y7_501 = -1) THEN Y7_501 = .;
   IF (Y7_502 = -1) THEN Y7_502 = .;
   IF (Y7_503 = -1) THEN Y7_503 = .;
   IF (Y7_504 = -1) THEN Y7_504 = .;
   IF (Y7_505 = -1) THEN Y7_505 = .;
   IF (Y7_506 = -1) THEN Y7_506 = .;
   IF (Y7_507 = -1) THEN Y7_507 = .;
   IF (Y7_508 = -1) THEN Y7_508 = .;
   IF (Y7_509 = -1) THEN Y7_509 = .;
   IF (Y7_510 = -1) THEN Y7_510 = .;
   IF (Y7_511 = -1) THEN Y7_511 = .;
   IF (Y7_512 = -1) THEN Y7_512 = .;
   IF (Y7_513 = -1) THEN Y7_513 = .;
   IF (Y7_514 = -1) THEN Y7_514 = .;
   IF (Y7_515 = -1) THEN Y7_515 = .;
   IF (Y7_516 = -1) THEN Y7_516 = .;
   IF (Y7_517 = -1) THEN Y7_517 = .;
   IF (Y7_518 = -1) THEN Y7_518 = .;
   IF (Y7_519 = -1) THEN Y7_519 = .;
   IF (Y7_520 = -1) THEN Y7_520 = .;
   IF (Y7_521 = -1) THEN Y7_521 = .;
   IF (Y7_522 = -1) THEN Y7_522 = .;
   IF (Y7_523 = -1) THEN Y7_523 = .;
   IF (Y7_524 = -1) THEN Y7_524 = .;
   IF (Y7_525 = -1) THEN Y7_525 = .;
   IF (Y7_526 = -1) THEN Y7_526 = .;
   IF (Y7_527 = -1) THEN Y7_527 = .;
   IF (Y7_528 = -1) THEN Y7_528 = .;
   IF (Y7_529 = -1) THEN Y7_529 = .;
   IF (Y7_530 = -1) THEN Y7_530 = .;
   IF (Y7_531 = -1) THEN Y7_531 = .;
   IF (Y7_532 = -1) THEN Y7_532 = .;
   IF (Y7_533 = -1) THEN Y7_533 = .;
   IF (Y7_534 = -1) THEN Y7_534 = .;
   IF (Y7_535 = -1) THEN Y7_535 = .;
   IF (Y7_536 = -1) THEN Y7_536 = .;
   IF (Y7_537 = -1) THEN Y7_537 = .;
   IF (Y7_538 = -1) THEN Y7_538 = .;
   IF (Y7_539 = -1) THEN Y7_539 = .;
   IF (Y7_540 = -1) THEN Y7_540 = .;
   IF (Y7_541 = -1) THEN Y7_541 = .;
   IF (Y7_542 = -1) THEN Y7_542 = .;
   IF (Y7_543 = -1) THEN Y7_543 = .;
   IF (Y7_544 = -1) THEN Y7_544 = .;
   IF (Y7_545 = -1) THEN Y7_545 = .;
   IF (Y7_546 = -1) THEN Y7_546 = .;
   IF (Y7_547 = -1) THEN Y7_547 = .;
   IF (Y7_548 = -1) THEN Y7_548 = .;
   IF (Y7_549 = -1) THEN Y7_549 = .;
   IF (Y7_550 = -1) THEN Y7_550 = .;
   IF (Y7_551 = -1) THEN Y7_551 = .;
   IF (Y7_552 = -1) THEN Y7_552 = .;
   IF (Y7_553 = -1) THEN Y7_553 = .;
   IF (Y7_554 = -1) THEN Y7_554 = .;
   IF (Y7_555 = -1) THEN Y7_555 = .;
   IF (Y7_556 = -1) THEN Y7_556 = .;
   IF (Y7_557 = -1) THEN Y7_557 = .;
   IF (Y7_558 = -1) THEN Y7_558 = .;
   IF (Y7_559 = -1) THEN Y7_559 = .;
   IF (Y7_560 = -1) THEN Y7_560 = .;
   IF (Y7_561 = -1) THEN Y7_561 = .;
   IF (Y7_562 = -1) THEN Y7_562 = .;
   IF (Y7_563 = -1) THEN Y7_563 = .;
   IF (Y7_564 = -1) THEN Y7_564 = .;
   IF (Y7_565 = -1) THEN Y7_565 = .;
   IF (Y7_566 = -1) THEN Y7_566 = .;
   IF (Y7_567 = -1) THEN Y7_567 = .;
   IF (Y7_568 = -1) THEN Y7_568 = .;
   IF (Y7_569 = -1) THEN Y7_569 = .;
   IF (Y7_570 = -1) THEN Y7_570 = .;
   IF (Y7_571 = -1) THEN Y7_571 = .;
   IF (Y7_572 = -1) THEN Y7_572 = .;
   IF (Y7_573 = -1) THEN Y7_573 = .;
   IF (Y7_574 = -1) THEN Y7_574 = .;
   IF (Y7_575 = -1) THEN Y7_575 = .;
   IF (Y7_576 = -1) THEN Y7_576 = .;
   IF (Y7_577 = -1) THEN Y7_577 = .;
   IF (Y7_578 = -1) THEN Y7_578 = .;
   IF (Y7_579 = -1) THEN Y7_579 = .;
   IF (Y7_580 = -1) THEN Y7_580 = .;
   IF (Y7_581 = -1) THEN Y7_581 = .;
   IF (Y7_582 = -1) THEN Y7_582 = .;
   IF (Y7_583 = -1) THEN Y7_583 = .;
   IF (Y7_584 = -1) THEN Y7_584 = .;
   IF (Y7_585 = -1) THEN Y7_585 = .;
   IF (Y7_586 = -1) THEN Y7_586 = .;
   IF (Y7_587 = -1) THEN Y7_587 = .;
   IF (Y7_588 = -1) THEN Y7_588 = .;
   IF (Y7_589 = -1) THEN Y7_589 = .;
   IF (Y7_590 = -1) THEN Y7_590 = .;
   IF (Y7_591 = -1) THEN Y7_591 = .;
   IF (Y7_592 = -1) THEN Y7_592 = .;
   IF (Y7_593 = -1) THEN Y7_593 = .;
   IF (Y7_594 = -1) THEN Y7_594 = .;
   IF (Y7_595 = -1) THEN Y7_595 = .;
   IF (Y7_596 = -1) THEN Y7_596 = .;
   IF (Y7_597 = -1) THEN Y7_597 = .;
   IF (Y7_598 = -1) THEN Y7_598 = .;
   IF (Y7_599 = -1) THEN Y7_599 = .;
   IF (Y7_600 = -1) THEN Y7_600 = .;
   IF (Y7_601 = -1) THEN Y7_601 = .;
   IF (Y7_602 = -1) THEN Y7_602 = .;
   IF (Y7_603 = -1) THEN Y7_603 = .;
   IF (Y7_604 = -1) THEN Y7_604 = .;
   IF (Y7_605 = -1) THEN Y7_605 = .;
   IF (Y7_606 = -1) THEN Y7_606 = .;
   IF (Y7_607 = -1) THEN Y7_607 = .;
   IF (Y7_608 = -1) THEN Y7_608 = .;
   IF (Y7_609 = -1) THEN Y7_609 = .;
   IF (Y7_610 = -1) THEN Y7_610 = .;
   IF (Y7_611 = -1) THEN Y7_611 = .;
   IF (Y7_612 = -1) THEN Y7_612 = .;
   IF (Y7_613 = -1) THEN Y7_613 = .;
   IF (Y7_614 = -1) THEN Y7_614 = .;
   IF (Y7_615 = -1) THEN Y7_615 = .;
   IF (Y7_616 = -1) THEN Y7_616 = .;
   IF (Y7_617 = -1) THEN Y7_617 = .;
   IF (Y7_618 = -1) THEN Y7_618 = .;
   IF (Y7_619 = -1) THEN Y7_619 = .;
   IF (Y7_620 = -1) THEN Y7_620 = .;
   IF (Y7_621 = -1) THEN Y7_621 = .;
   IF (Y7_622 = -1) THEN Y7_622 = .;
   IF (Y7_623 = -1) THEN Y7_623 = .;
   IF (Y7_624 = -1) THEN Y7_624 = .;
   IF (Y7_625 = -1) THEN Y7_625 = .;
   IF (Y7_626 = -1) THEN Y7_626 = .;
   IF (Y7_627 = -1) THEN Y7_627 = .;
   IF (Y7_628 = -1) THEN Y7_628 = .;
   IF (Y7_629 = -1) THEN Y7_629 = .;
   IF (Y7_630 = -1) THEN Y7_630 = .;
   IF (Y7_631 = -1) THEN Y7_631 = .;
   IF (Y7_632 = -1) THEN Y7_632 = .;
   IF (Y7_633 = -1) THEN Y7_633 = .;
   IF (Y7_634 = -1) THEN Y7_634 = .;
   IF (Y7_635 = -1) THEN Y7_635 = .;
   IF (Y7_636 = -1) THEN Y7_636 = .;
   IF (Y7_637 = -1) THEN Y7_637 = .;
   IF (Y7_638 = -1) THEN Y7_638 = .;
   IF (Y7_639 = -1) THEN Y7_639 = .;
   IF (Y7_640 = -1) THEN Y7_640 = .;
   IF (Y7_641 = -1) THEN Y7_641 = .;
   IF (Y7_642 = -1) THEN Y7_642 = .;
   IF (Y7_643 = -1) THEN Y7_643 = .;
   IF (Y7_644 = -1) THEN Y7_644 = .;
   IF (Y7_645 = -1) THEN Y7_645 = .;
   IF (Y7_646 = -1) THEN Y7_646 = .;
   IF (Y7_647 = -1) THEN Y7_647 = .;
   IF (Y7_648 = -1) THEN Y7_648 = .;
   IF (Y7_649 = -1) THEN Y7_649 = .;
   IF (Y7_650 = -1) THEN Y7_650 = .;
   IF (Y7_651 = -1) THEN Y7_651 = .;
   IF (Y7_652 = -1) THEN Y7_652 = .;
   IF (Y7_653 = -1) THEN Y7_653 = .;
   IF (Y7_654 = -1) THEN Y7_654 = .;
   IF (Y7_655 = -1) THEN Y7_655 = .;
   IF (Y7_656 = -1) THEN Y7_656 = .;
   IF (Y7_657 = -1) THEN Y7_657 = .;
   IF (Y7_658 = -1) THEN Y7_658 = .;
   IF (Y7_659 = -1) THEN Y7_659 = .;
   IF (Y7_660 = -1) THEN Y7_660 = .;
   IF (Y7_661 = -1) THEN Y7_661 = .;
   IF (Y7_662 = -1) THEN Y7_662 = .;
   IF (Y7_663 = -1) THEN Y7_663 = .;
   IF (Y7_664 = -1) THEN Y7_664 = .;
   IF (Y7_665 = -1) THEN Y7_665 = .;
   IF (Y7_666 = -1) THEN Y7_666 = .;
   IF (Y7_667 = -1) THEN Y7_667 = .;
   IF (Y7_668 = -1) THEN Y7_668 = .;
   IF (Y7_669 = -1) THEN Y7_669 = .;
   IF (Y7_670 = -1) THEN Y7_670 = .;
   IF (Y7_671 = -1) THEN Y7_671 = .;
   IF (Y7_672 = -1) THEN Y7_672 = .;
   IF (Y7_673 = -1) THEN Y7_673 = .;
   IF (Y7_674 = -1) THEN Y7_674 = .;
   IF (Y7_675 = -1) THEN Y7_675 = .;
   IF (Y7_676 = -1) THEN Y7_676 = .;
   IF (Y7_677 = -1) THEN Y7_677 = .;
   IF (Y7_678 = -1) THEN Y7_678 = .;
   IF (Y7_679 = -1) THEN Y7_679 = .;
   IF (Y7_680 = -1) THEN Y7_680 = .;
   IF (Y7_681 = -1) THEN Y7_681 = .;
   IF (Y7_682 = -1) THEN Y7_682 = .;
   IF (Y7_683 = -1) THEN Y7_683 = .;
   IF (Y7_684 = -1) THEN Y7_684 = .;
   IF (Y7_685 = -1) THEN Y7_685 = .;
   IF (Y7_686 = -1) THEN Y7_686 = .;
   IF (Y7_687 = -1) THEN Y7_687 = .;
   IF (Y7_688 = -1) THEN Y7_688 = .;
   IF (Y7_689 = -1) THEN Y7_689 = .;
   IF (Y7_690 = -1) THEN Y7_690 = .;
   IF (Y7_691 = -1) THEN Y7_691 = .;
   IF (Y7_692 = -1) THEN Y7_692 = .;
   IF (Y7_693 = -1) THEN Y7_693 = .;
   IF (Y7_694 = -1) THEN Y7_694 = .;
   IF (Y7_695 = -1) THEN Y7_695 = .;
   IF (Y7_696 = -1) THEN Y7_696 = .;
   IF (Y7_697 = -1) THEN Y7_697 = .;
   IF (Y7_698 = -1) THEN Y7_698 = .;
   IF (Y7_699 = -1) THEN Y7_699 = .;
   IF (Y7_700 = -1) THEN Y7_700 = .;
   IF (Y7_701 = -1) THEN Y7_701 = .;
   IF (Y7_702 = -1) THEN Y7_702 = .;
   IF (Y7_703 = -1) THEN Y7_703 = .;
   IF (Y7_704 = -1) THEN Y7_704 = .;
   IF (Y7_705 = -1) THEN Y7_705 = .;
   IF (Y7_706 = -1) THEN Y7_706 = .;
   IF (Y7_707 = -1) THEN Y7_707 = .;
   IF (Y7_708 = -1) THEN Y7_708 = .;
   IF (Y7_709 = -1) THEN Y7_709 = .;
   IF (Y7_710 = -1) THEN Y7_710 = .;
   IF (Y7_711 = -1) THEN Y7_711 = .;
   IF (Y7_712 = -1) THEN Y7_712 = .;
   IF (Y7_713 = -1) THEN Y7_713 = .;
   IF (Y7_714 = -1) THEN Y7_714 = .;
   IF (Y7_715 = -1) THEN Y7_715 = .;
   IF (Y7_716 = -1) THEN Y7_716 = .;
   IF (Y7_717 = -1) THEN Y7_717 = .;
   IF (Y7_718 = -1) THEN Y7_718 = .;
   IF (Y7_719 = -1) THEN Y7_719 = .;
   IF (Y7_720 = -1) THEN Y7_720 = .;
   IF (Y7_721 = -1) THEN Y7_721 = .;
   IF (Y7_722 = -1) THEN Y7_722 = .;
   IF (Y7_723 = -1) THEN Y7_723 = .;
   IF (Y7_724 = -1) THEN Y7_724 = .;
   IF (Y7_725 = -1) THEN Y7_725 = .;
   IF (Y7_726 = -1) THEN Y7_726 = .;
   IF (Y7_727 = -1) THEN Y7_727 = .;
   IF (Y7_728 = -1) THEN Y7_728 = .;
   IF (Y7_729 = -1) THEN Y7_729 = .;
   IF (Y7_730 = -1) THEN Y7_730 = .;
   IF (Y7_731 = -1) THEN Y7_731 = .;
   IF (Y7_732 = -1) THEN Y7_732 = .;
   IF (Y7_733 = -1) THEN Y7_733 = .;
   IF (Y7_734 = -1) THEN Y7_734 = .;
   IF (Y7_735 = -1) THEN Y7_735 = .;
   IF (Y7_736 = -1) THEN Y7_736 = .;
   IF (Y7_737 = -1) THEN Y7_737 = .;
   IF (Y7_738 = -1) THEN Y7_738 = .;
   IF (Y7_739 = -1) THEN Y7_739 = .;
   IF (Y7_740 = -1) THEN Y7_740 = .;
   IF (Y7_741 = -1) THEN Y7_741 = .;
   IF (Y7_742 = -1) THEN Y7_742 = .;
   IF (Y7_743 = -1) THEN Y7_743 = .;
   IF (Y7_744 = -1) THEN Y7_744 = .;
   IF (Y7_745 = -1) THEN Y7_745 = .;
   IF (Y7_746 = -1) THEN Y7_746 = .;
   IF (Y7_747 = -1) THEN Y7_747 = .;
   IF (Y7_748 = -1) THEN Y7_748 = .;
   IF (Y7_749 = -1) THEN Y7_749 = .;
   IF (Y7_750 = -1) THEN Y7_750 = .;
   IF (Y7_751 = -1) THEN Y7_751 = .;
   IF (Y7_752 = -1) THEN Y7_752 = .;
   IF (Y7_753 = -1) THEN Y7_753 = .;
   IF (Y7_754 = -1) THEN Y7_754 = .;
   IF (Y7_755 = -1) THEN Y7_755 = .;
   IF (Y7_756 = -1) THEN Y7_756 = .;
   IF (Y7_757 = -1) THEN Y7_757 = .;
   IF (Y7_758 = -1) THEN Y7_758 = .;
   IF (Y7_759 = -1) THEN Y7_759 = .;
   IF (Y7_760 = -1) THEN Y7_760 = .;
   IF (Y7_761 = -1) THEN Y7_761 = .;
   IF (Y7_762 = -1) THEN Y7_762 = .;
   IF (Y7_763 = -1) THEN Y7_763 = .;
   IF (Y7_764 = -1) THEN Y7_764 = .;
   IF (Y7_765 = -1) THEN Y7_765 = .;
   IF (Y7_766 = -1) THEN Y7_766 = .;
   IF (Y7_767 = -1) THEN Y7_767 = .;
   IF (Y7_768 = -1) THEN Y7_768 = .;
   IF (Y7_769 = -1) THEN Y7_769 = .;
   IF (Y7_770 = -1) THEN Y7_770 = .;
   IF (Y7_771 = -1) THEN Y7_771 = .;
   IF (Y7_772 = -1) THEN Y7_772 = .;
   IF (Y7_773 = -1) THEN Y7_773 = .;
   IF (Y7_774 = -1) THEN Y7_774 = .;
   IF (Y7_775 = -1) THEN Y7_775 = .;
   IF (Y7_776 = -1) THEN Y7_776 = .;
   IF (Y7_777 = -1) THEN Y7_777 = .;
   IF (Y7_778 = -1) THEN Y7_778 = .;
   IF (Y7_779 = -1) THEN Y7_779 = .;
   IF (Y7_780 = -1) THEN Y7_780 = .;
   IF (Y7_781 = -1) THEN Y7_781 = .;
   IF (Y7_782 = -1) THEN Y7_782 = .;
   IF (Y7_783 = -1) THEN Y7_783 = .;
   IF (Y7_784 = -1) THEN Y7_784 = .;
   IF (Y7_785 = -1) THEN Y7_785 = .;
   IF (Y7_786 = -1) THEN Y7_786 = .;
   IF (Y7_787 = -1) THEN Y7_787 = .;
   IF (Y7_788 = -1) THEN Y7_788 = .;
   IF (Y7_789 = -1) THEN Y7_789 = .;
   IF (Y7_790 = -1) THEN Y7_790 = .;
   IF (Y7_791 = -1) THEN Y7_791 = .;
   IF (Y7_792 = -1) THEN Y7_792 = .;
   IF (Y7_793 = -1) THEN Y7_793 = .;
   IF (Y7_794 = -1) THEN Y7_794 = .;
   IF (Y7_795 = -1) THEN Y7_795 = .;
   IF (Y7_796 = -1) THEN Y7_796 = .;
   IF (Y7_797 = -1) THEN Y7_797 = .;
   IF (Y7_798 = -1) THEN Y7_798 = .;
   IF (Y7_799 = -1) THEN Y7_799 = .;
   IF (Y7_800 = -1) THEN Y7_800 = .;
   IF (Y7_801 = -1) THEN Y7_801 = .;
   IF (Y7_802 = -1) THEN Y7_802 = .;
   IF (Y7_803 = -1) THEN Y7_803 = .;
   IF (Y7_804 = -1) THEN Y7_804 = .;
   IF (Y7_805 = -1) THEN Y7_805 = .;
   IF (Y7_806 = -1) THEN Y7_806 = .;
   IF (Y7_807 = -1) THEN Y7_807 = .;
   IF (Y7_808 = -1) THEN Y7_808 = .;
   IF (Y7_809 = -1) THEN Y7_809 = .;
   IF (Y7_810 = -1) THEN Y7_810 = .;
   IF (Y7_811 = -1) THEN Y7_811 = .;
   IF (Y7_812 = -1) THEN Y7_812 = .;
   IF (Y7_813 = -1) THEN Y7_813 = .;
   IF (Y7_814 = -1) THEN Y7_814 = .;
   IF (Y7_815 = -1) THEN Y7_815 = .;
   IF (Y7_816 = -1) THEN Y7_816 = .;
   IF (Y7_817 = -1) THEN Y7_817 = .;
   IF (Y7_818 = -1) THEN Y7_818 = .;
   IF (Y7_819 = -1) THEN Y7_819 = .;
   IF (Y7_820 = -1) THEN Y7_820 = .;
   IF (Y7_821 = -1) THEN Y7_821 = .;
   IF (Y7_822 = -1) THEN Y7_822 = .;
   IF (Y7_823 = -1) THEN Y7_823 = .;
   IF (Y7_824 = -1) THEN Y7_824 = .;
   IF (Y7_825 = -1) THEN Y7_825 = .;
   IF (Y7_826 = -1) THEN Y7_826 = .;
   IF (Y7_827 = -1) THEN Y7_827 = .;
   IF (Y7_828 = -1) THEN Y7_828 = .;
   IF (Y7_829 = -1) THEN Y7_829 = .;
   IF (Y7_830 = -1) THEN Y7_830 = .;
   IF (Y7_831 = -1) THEN Y7_831 = .;
   IF (Y7_832 = -1) THEN Y7_832 = .;
   IF (Y7_833 = -1) THEN Y7_833 = .;
   IF (Y7_834 = -1) THEN Y7_834 = .;
   IF (Y7_835 = -1) THEN Y7_835 = .;
   IF (Y7_836 = -1) THEN Y7_836 = .;
   IF (Y7_837 = -1) THEN Y7_837 = .;
   IF (Y7_838 = -1) THEN Y7_838 = .;
   IF (Y7_839 = -1) THEN Y7_839 = .;
   IF (Y7_840 = -1) THEN Y7_840 = .;
   IF (Y7_841 = -1) THEN Y7_841 = .;
   IF (Y7_842 = -1) THEN Y7_842 = .;
   IF (Y7_843 = -1) THEN Y7_843 = .;
   IF (Y7_844 = -1) THEN Y7_844 = .;
   IF (Y7_845 = -1) THEN Y7_845 = .;
   IF (Y7_846 = -1) THEN Y7_846 = .;
   IF (Y7_847 = -1) THEN Y7_847 = .;
   IF (Y7_848 = -1) THEN Y7_848 = .;
   IF (Y7_849 = -1) THEN Y7_849 = .;
   IF (Y7_850 = -1) THEN Y7_850 = .;
   IF (Y7_851 = -1) THEN Y7_851 = .;
   IF (Y7_852 = -1) THEN Y7_852 = .;
   IF (Y7_853 = -1) THEN Y7_853 = .;
   IF (Y7_854 = -1) THEN Y7_854 = .;
   IF (Y7_855 = -1) THEN Y7_855 = .;
   IF (Y7_856 = -1) THEN Y7_856 = .;
   IF (Y7_857 = -1) THEN Y7_857 = .;
   IF (Y7_858 = -1) THEN Y7_858 = .;
   IF (Y7_859 = -1) THEN Y7_859 = .;
   IF (Y7_860 = -1) THEN Y7_860 = .;
   IF (Y7_861 = -1) THEN Y7_861 = .;
   IF (Y7_862 = -1) THEN Y7_862 = .;
   IF (Y7_863 = -1) THEN Y7_863 = .;
   IF (Y7_864 = -1) THEN Y7_864 = .;
   IF (Y7_865 = -1) THEN Y7_865 = .;
   IF (Y7_866 = -1) THEN Y7_866 = .;
   IF (Y7_867 = -1) THEN Y7_867 = .;
   IF (Y7_868 = -1) THEN Y7_868 = .;
   IF (Y7_869 = -1) THEN Y7_869 = .;
   IF (Y7_870 = -1) THEN Y7_870 = .;
   IF (Y7_871 = -1) THEN Y7_871 = .;
   IF (Y7_872 = -1) THEN Y7_872 = .;
   IF (Y7_873 = -1) THEN Y7_873 = .;
   IF (Y7_874 = -1) THEN Y7_874 = .;
   IF (Y7_875 = -1) THEN Y7_875 = .;
   IF (Y7_876 = -1) THEN Y7_876 = .;
   IF (Y7_877 = -1) THEN Y7_877 = .;
   IF (Y7_878 = -1) THEN Y7_878 = .;
   IF (Y7_879 = -1) THEN Y7_879 = .;
   IF (Y7_880 = -1) THEN Y7_880 = .;
   IF (Y7_881 = -1) THEN Y7_881 = .;
   IF (Y7_882 = -1) THEN Y7_882 = .;
   IF (Y7_883 = -1) THEN Y7_883 = .;
   IF (Y7_884 = -1) THEN Y7_884 = .;
   IF (Y7_885 = -1) THEN Y7_885 = .;
   IF (Y7_886 = -1) THEN Y7_886 = .;
   IF (Y7_887 = -1) THEN Y7_887 = .;
   IF (Y7_888 = -1) THEN Y7_888 = .;
   IF (Y7_889 = -1) THEN Y7_889 = .;
   IF (Y7_890 = -1) THEN Y7_890 = .;
   IF (Y7_891 = -1) THEN Y7_891 = .;
   IF (Y7_892 = -1) THEN Y7_892 = .;
   IF (Y7_893 = -1) THEN Y7_893 = .;
   IF (Y7_894 = -1) THEN Y7_894 = .;
   IF (Y7_895 = -1) THEN Y7_895 = .;
   IF (Y7_896 = -1) THEN Y7_896 = .;
   IF (Y7_897 = -1) THEN Y7_897 = .;
   IF (Y7_898 = -1) THEN Y7_898 = .;
   IF (Y7_899 = -1) THEN Y7_899 = .;
   IF (Y7_900 = -1) THEN Y7_900 = .;
   IF (Y7_901 = -1) THEN Y7_901 = .;
   IF (Y7_902 = -1) THEN Y7_902 = .;
   IF (Y7_903 = -1) THEN Y7_903 = .;
   IF (Y7_904 = -1) THEN Y7_904 = .;
   IF (Y7_905 = -1) THEN Y7_905 = .;
   IF (Y7_906 = -1) THEN Y7_906 = .;
   IF (Y7_907 = -1) THEN Y7_907 = .;
   IF (Y7_908 = -1) THEN Y7_908 = .;
   IF (Y7_909 = -1) THEN Y7_909 = .;
   IF (Y7_910 = -1) THEN Y7_910 = .;
   IF (Y7_911 = -1) THEN Y7_911 = .;
   IF (Y7_912 = -1) THEN Y7_912 = .;
   IF (Y7_913 = -1) THEN Y7_913 = .;
   IF (Y7_914 = -1) THEN Y7_914 = .;
   IF (Y7_915 = -1) THEN Y7_915 = .;
   IF (Y7_916 = -1) THEN Y7_916 = .;
   IF (Y7_917 = -1) THEN Y7_917 = .;
   IF (Y7_918 = -1) THEN Y7_918 = .;
   IF (Y7_919 = -1) THEN Y7_919 = .;
   IF (Y7_920 = -1) THEN Y7_920 = .;
   IF (Y7_921 = -1) THEN Y7_921 = .;
   IF (Y7_922 = -1) THEN Y7_922 = .;
   IF (Y7_923 = -1) THEN Y7_923 = .;
   IF (Y7_924 = -1) THEN Y7_924 = .;
   IF (Y7_925 = -1) THEN Y7_925 = .;
   IF (Y7_926 = -1) THEN Y7_926 = .;
   IF (Y7_927 = -1) THEN Y7_927 = .;
   IF (Y7_928 = -1) THEN Y7_928 = .;
   IF (Y7_929 = -1) THEN Y7_929 = .;
   IF (Y7_930 = -1) THEN Y7_930 = .;
   IF (Y7_931 = -1) THEN Y7_931 = .;
   IF (Y7_932 = -1) THEN Y7_932 = .;
   IF (Y7_933 = -1) THEN Y7_933 = .;
   IF (Y7_934 = -1) THEN Y7_934 = .;
   IF (Y7_935 = -1) THEN Y7_935 = .;
   IF (Y7_936 = -1) THEN Y7_936 = .;
   IF (Y7_937 = -1) THEN Y7_937 = .;
   IF (Y7_938 = -1) THEN Y7_938 = .;
   IF (Y7_939 = -1) THEN Y7_939 = .;
   IF (Y7_940 = -1) THEN Y7_940 = .;
   IF (Y7_941 = -1) THEN Y7_941 = .;
   IF (Y7_942 = -1) THEN Y7_942 = .;
   IF (Y7_943 = -1) THEN Y7_943 = .;
   IF (Y7_944 = -1) THEN Y7_944 = .;
   IF (Y7_945 = -1) THEN Y7_945 = .;
   IF (Y7_946 = -1) THEN Y7_946 = .;
   IF (Y7_947 = -1) THEN Y7_947 = .;
   IF (Y7_948 = -1) THEN Y7_948 = .;
   IF (Y7_949 = -1) THEN Y7_949 = .;
   IF (Y7_950 = -1) THEN Y7_950 = .;
   IF (Y7_951 = -1) THEN Y7_951 = .;
   IF (Y7_952 = -1) THEN Y7_952 = .;
   IF (Y7_953 = -1) THEN Y7_953 = .;
   IF (Y7_954 = -1) THEN Y7_954 = .;
   IF (Y7_955 = -1) THEN Y7_955 = .;
   IF (Y7_956 = -1) THEN Y7_956 = .;
   IF (Y7_957 = -1) THEN Y7_957 = .;
   IF (Y7_958 = -1) THEN Y7_958 = .;
   IF (Y7_959 = -1) THEN Y7_959 = .;
   IF (Y7_960 = -1) THEN Y7_960 = .;
   IF (Y7_961 = -1) THEN Y7_961 = .;
   IF (Y7_962 = -1) THEN Y7_962 = .;
   IF (Y7_963 = -1) THEN Y7_963 = .;
   IF (Y7_964 = -1) THEN Y7_964 = .;
   IF (Y7_965 = -1) THEN Y7_965 = .;
   IF (Y7_966 = -1) THEN Y7_966 = .;
   IF (Y7_967 = -1) THEN Y7_967 = .;
   IF (Y7_968 = -1) THEN Y7_968 = .;
   IF (Y7_969 = -1) THEN Y7_969 = .;
   IF (Y7_970 = -1) THEN Y7_970 = .;
   IF (Y7_971 = -1) THEN Y7_971 = .;
   IF (Y7_972 = -1) THEN Y7_972 = .;
   IF (Y7_973 = -1) THEN Y7_973 = .;
   IF (Y7_974 = -1) THEN Y7_974 = .;
   IF (Y7_975 = -1) THEN Y7_975 = .;
   IF (Y7_976 = -1) THEN Y7_976 = .;
   IF (Y7_977 = -1) THEN Y7_977 = .;
   IF (Y7_978 = -1) THEN Y7_978 = .;
   IF (Y7_979 = -1) THEN Y7_979 = .;
   IF (Y7_980 = -1) THEN Y7_980 = .;
   IF (Y7_981 = -1) THEN Y7_981 = .;
   IF (Y7_982 = -1) THEN Y7_982 = .;
   IF (Y7_983 = -1) THEN Y7_983 = .;
   IF (Y7_984 = -1) THEN Y7_984 = .;
   IF (Y7_985 = -1) THEN Y7_985 = .;
   IF (Y7_986 = -1) THEN Y7_986 = .;
   IF (Y7_987 = -1) THEN Y7_987 = .;
   IF (Y7_988 = -1) THEN Y7_988 = .;
   IF (Y7_989 = -1) THEN Y7_989 = .;
   IF (Y7_990 = -1) THEN Y7_990 = .;
   IF (Y7_991 = -1) THEN Y7_991 = .;
   IF (Y7_992 = -1) THEN Y7_992 = .;
   IF (Y7_993 = -1) THEN Y7_993 = .;
   IF (Y7_994 = -1) THEN Y7_994 = .;
   IF (Y7_995 = -1) THEN Y7_995 = .;
   IF (Y7_996 = -1) THEN Y7_996 = .;
   IF (Y7_997 = -1) THEN Y7_997 = .;
   IF (Y7_998 = -1) THEN Y7_998 = .;
   IF (Y7_999 = -1) THEN Y7_999 = .;
   IF (Y7_1000 = -1) THEN Y7_1000 = .;
   IF (Y7_1001 = -1) THEN Y7_1001 = .;
   IF (Y7_1002 = -1) THEN Y7_1002 = .;
   IF (Y7_1003 = -1) THEN Y7_1003 = .;
   IF (Y7_1004 = -1) THEN Y7_1004 = .;
   IF (Y7_1005 = -1) THEN Y7_1005 = .;
   IF (Y7_1006 = -1) THEN Y7_1006 = .;
   IF (Y7_1007 = -1) THEN Y7_1007 = .;
   IF (Y7_1008 = -1) THEN Y7_1008 = .;
   IF (Y7_1009 = -1) THEN Y7_1009 = .;
   IF (Y7_1010 = -1) THEN Y7_1010 = .;
   IF (Y7_1011 = -1) THEN Y7_1011 = .;
   IF (Y7_1012 = -1) THEN Y7_1012 = .;
   IF (Y7_1013 = -1) THEN Y7_1013 = .;
   IF (Y7_1014 = -1) THEN Y7_1014 = .;
   IF (Y7_1015 = -1) THEN Y7_1015 = .;
   IF (Y7_1016 = -1) THEN Y7_1016 = .;
   IF (Y7_1017 = -1) THEN Y7_1017 = .;
   IF (Y7_1018 = -1) THEN Y7_1018 = .;
   IF (Y7_1019 = -1) THEN Y7_1019 = .;
   IF (Y7_1020 = -1) THEN Y7_1020 = .;
   IF (Y7_1021 = -1) THEN Y7_1021 = .;
   IF (Y7_1022 = -1) THEN Y7_1022 = .;
   IF (Y7_1023 = -1) THEN Y7_1023 = .;
   IF (Y7_1024 = -1) THEN Y7_1024 = .;
   IF (Y7_1025 = -1) THEN Y7_1025 = .;
   IF (Y7_1026 = -1) THEN Y7_1026 = .;
   IF (Y7_1027 = -1) THEN Y7_1027 = .;
   IF (Y7_1028 = -1) THEN Y7_1028 = .;
   IF (Y7_1029 = -1) THEN Y7_1029 = .;
   IF (Y7_1030 = -1) THEN Y7_1030 = .;
   IF (Y7_1031 = -1) THEN Y7_1031 = .;
   IF (Y7_1032 = -1) THEN Y7_1032 = .;
   IF (Y7_1033 = -1) THEN Y7_1033 = .;
   IF (Y7_1034 = -1) THEN Y7_1034 = .;
   IF (Y7_1035 = -1) THEN Y7_1035 = .;
   IF (Y7_1036 = -1) THEN Y7_1036 = .;
   IF (Y7_1037 = -1) THEN Y7_1037 = .;
   IF (Y7_1038 = -1) THEN Y7_1038 = .;
   IF (Y7_1039 = -1) THEN Y7_1039 = .;
   IF (Y7_1040 = -1) THEN Y7_1040 = .;
   IF (Y7_1041 = -1) THEN Y7_1041 = .;
   IF (Y7_1042 = -1) THEN Y7_1042 = .;
   IF (Y7_1043 = -1) THEN Y7_1043 = .;
   IF (Y7_1044 = -1) THEN Y7_1044 = .;
   IF (Y7_1045 = -1) THEN Y7_1045 = .;
   IF (Y7_1046 = -1) THEN Y7_1046 = .;
   IF (Y7_1047 = -1) THEN Y7_1047 = .;
   IF (Y7_1048 = -1) THEN Y7_1048 = .;
   IF (Y7_1049 = -1) THEN Y7_1049 = .;
   IF (Y7_1050 = -1) THEN Y7_1050 = .;
   IF (Y7_1051 = -1) THEN Y7_1051 = .;
   IF (Y7_1052 = -1) THEN Y7_1052 = .;
   IF (Y7_1053 = -1) THEN Y7_1053 = .;
   IF (Y7_1054 = -1) THEN Y7_1054 = .;
   IF (Y7_1055 = -1) THEN Y7_1055 = .;
   IF (Y7_1056 = -1) THEN Y7_1056 = .;
   IF (Y7_1057 = -1) THEN Y7_1057 = .;
   IF (Y7_1058 = -1) THEN Y7_1058 = .;
   IF (Y7_1059 = -1) THEN Y7_1059 = .;
   IF (Y7_1060 = -1) THEN Y7_1060 = .;
   IF (Y7_1061 = -1) THEN Y7_1061 = .;
   IF (Y7_1062 = -1) THEN Y7_1062 = .;
   IF (Y7_1063 = -1) THEN Y7_1063 = .;
   IF (Y7_1064 = -1) THEN Y7_1064 = .;
   IF (Y7_1065 = -1) THEN Y7_1065 = .;
   IF (Y7_1066 = -1) THEN Y7_1066 = .;
   IF (Y7_1067 = -1) THEN Y7_1067 = .;
   IF (Y7_1068 = -1) THEN Y7_1068 = .;
   IF (Y7_1069 = -1) THEN Y7_1069 = .;
   IF (Y7_1070 = -1) THEN Y7_1070 = .;
   IF (Y7_1071 = -1) THEN Y7_1071 = .;
   IF (Y7_1072 = -1) THEN Y7_1072 = .;
   IF (Y7_1073 = -1) THEN Y7_1073 = .;
   IF (Y7_1074 = -1) THEN Y7_1074 = .;
   IF (Y7_1075 = -1) THEN Y7_1075 = .;
   IF (Y7_1076 = -1) THEN Y7_1076 = .;
   IF (Y7_1077 = -1) THEN Y7_1077 = .;
   IF (Y7_1078 = -1) THEN Y7_1078 = .;
   IF (Y7_1079 = -1) THEN Y7_1079 = .;
   IF (Y7_1080 = -1) THEN Y7_1080 = .;
   IF (Y7_1081 = -1) THEN Y7_1081 = .;
   IF (Y7_1082 = -1) THEN Y7_1082 = .;
   IF (Y7_1083 = -1) THEN Y7_1083 = .;
   IF (Y7_1084 = -1) THEN Y7_1084 = .;
   IF (Y7_1085 = -1) THEN Y7_1085 = .;
   IF (Y7_1086 = -1) THEN Y7_1086 = .;
   IF (Y7_1087 = -1) THEN Y7_1087 = .;
   IF (Y7_1088 = -1) THEN Y7_1088 = .;
   IF (Y7_1089 = -1) THEN Y7_1089 = .;
   IF (Y7_1090 = -1) THEN Y7_1090 = .;
   IF (Y7_1091 = -1) THEN Y7_1091 = .;
   IF (Y7_1092 = -1) THEN Y7_1092 = .;
   IF (Y7_1093 = -1) THEN Y7_1093 = .;
   IF (Y7_1094 = -1) THEN Y7_1094 = .;
   IF (Y7_1095 = -1) THEN Y7_1095 = .;
   IF (Y7_1096 = -1) THEN Y7_1096 = .;
   IF (Y7_1097 = -1) THEN Y7_1097 = .;
   IF (Y7_1098 = -1) THEN Y7_1098 = .;
   IF (Y7_1099 = -1) THEN Y7_1099 = .;
   IF (Y7_1100 = -1) THEN Y7_1100 = .;
   IF (Y7_1101 = -1) THEN Y7_1101 = .;
   IF (Y7_1102 = -1) THEN Y7_1102 = .;
   IF (Y7_1103 = -1) THEN Y7_1103 = .;
   IF (Y7_1104 = -1) THEN Y7_1104 = .;
   IF (Y7_1105 = -1) THEN Y7_1105 = .;
   IF (Y7_1106 = -1) THEN Y7_1106 = .;
   IF (Y7_1107 = -1) THEN Y7_1107 = .;
   IF (Y7_1108 = -1) THEN Y7_1108 = .;
   IF (Y7_1109 = -1) THEN Y7_1109 = .;
   IF (Y7_1110 = -1) THEN Y7_1110 = .;
   IF (Y7_1111 = -1) THEN Y7_1111 = .;
   IF (Y7_1112 = -1) THEN Y7_1112 = .;
   IF (Y7_1113 = -1) THEN Y7_1113 = .;
   IF (Y7_1114 = -1) THEN Y7_1114 = .;
   IF (Y7_1115 = -1) THEN Y7_1115 = .;
   IF (Y7_1116 = -1) THEN Y7_1116 = .;
   IF (Y7_1117 = -1) THEN Y7_1117 = .;
   IF (Y7_1118 = -1) THEN Y7_1118 = .;
   IF (Y7_1119 = -1) THEN Y7_1119 = .;
   IF (Y7_1120 = -1) THEN Y7_1120 = .;
   IF (Y7_1121 = -1) THEN Y7_1121 = .;
   IF (Y7_1122 = -1) THEN Y7_1122 = .;
   IF (Y7_1123 = -1) THEN Y7_1123 = .;
   IF (Y7_1124 = -1) THEN Y7_1124 = .;
   IF (Y7_1125 = -1) THEN Y7_1125 = .;
   IF (Y7_1126 = -1) THEN Y7_1126 = .;
   IF (Y7_1127 = -1) THEN Y7_1127 = .;
   IF (Y7_1128 = -1) THEN Y7_1128 = .;
   IF (Y7_1129 = -1) THEN Y7_1129 = .;
   IF (Y7_1130 = -1) THEN Y7_1130 = .;
   IF (Y7_1131 = -1) THEN Y7_1131 = .;
   IF (Y7_1132 = -1) THEN Y7_1132 = .;
   IF (Y7_1133 = -1) THEN Y7_1133 = .;
   IF (Y7_1134 = -1) THEN Y7_1134 = .;
   IF (Y7_1135 = -1) THEN Y7_1135 = .;
   IF (Y7_1136 = -1) THEN Y7_1136 = .;
   IF (Y7_1137 = -1) THEN Y7_1137 = .;
   IF (Y7_1138 = -1) THEN Y7_1138 = .;
   IF (Y7_1139 = -1) THEN Y7_1139 = .;
   IF (Y7_1140 = -1) THEN Y7_1140 = .;
   IF (Y7_1141 = -1) THEN Y7_1141 = .;
   IF (Y7_1142 = -1) THEN Y7_1142 = .;
   IF (Y7_1143 = -1) THEN Y7_1143 = .;
   IF (Y7_1144 = -1) THEN Y7_1144 = .;
   IF (Y7_1145 = -1) THEN Y7_1145 = .;
   IF (Y7_1146 = -1) THEN Y7_1146 = .;
   IF (Y7_1147 = -1) THEN Y7_1147 = .;
   IF (Y7_1148 = -1) THEN Y7_1148 = .;
   IF (Y7_1149 = -1) THEN Y7_1149 = .;
   IF (Y7_1150 = -1) THEN Y7_1150 = .;
   IF (Y7_1151 = -1) THEN Y7_1151 = .;
   IF (Y7_1152 = -1) THEN Y7_1152 = .;
   IF (Y7_1153 = -1) THEN Y7_1153 = .;
   IF (Y7_1154 = -1) THEN Y7_1154 = .;
   IF (Y7_1155 = -1) THEN Y7_1155 = .;
   IF (Y7_1156 = -1) THEN Y7_1156 = .;
   IF (Y7_1157 = -1) THEN Y7_1157 = .;
   IF (Y7_1158 = -1) THEN Y7_1158 = .;
   IF (Y7_1159 = -1) THEN Y7_1159 = .;
   IF (Y7_1160 = -1) THEN Y7_1160 = .;
   IF (Y7_1161 = -1) THEN Y7_1161 = .;
   IF (Y7_1162 = -1) THEN Y7_1162 = .;
   IF (Y7_1163 = -1) THEN Y7_1163 = .;
   IF (Y7_1164 = -1) THEN Y7_1164 = .;
   IF (Y7_1165 = -1) THEN Y7_1165 = .;
   IF (Y7_1166 = -1) THEN Y7_1166 = .;
   IF (Y7_1167 = -1) THEN Y7_1167 = .;
   IF (Y7_1168 = -1) THEN Y7_1168 = .;
   IF (Y7_1169 = -1) THEN Y7_1169 = .;
   IF (Y7_1170 = -1) THEN Y7_1170 = .;
   IF (Y7_1171 = -1) THEN Y7_1171 = .;
   IF (Y7_1172 = -1) THEN Y7_1172 = .;
   IF (Y7_1173 = -1) THEN Y7_1173 = .;
   IF (Y7_1174 = -1) THEN Y7_1174 = .;
   IF (Y7_1175 = -1) THEN Y7_1175 = .;
   IF (Y7_1176 = -1) THEN Y7_1176 = .;
   IF (Y7_1177 = -1) THEN Y7_1177 = .;
   IF (Y7_1178 = -1) THEN Y7_1178 = .;
   IF (Y7_1179 = -1) THEN Y7_1179 = .;
   IF (Y7_1180 = -1) THEN Y7_1180 = .;
   IF (Y7_1181 = -1) THEN Y7_1181 = .;
   IF (Y7_1182 = -1) THEN Y7_1182 = .;
   IF (Y7_1183 = -1) THEN Y7_1183 = .;
   IF (Y7_1184 = -1) THEN Y7_1184 = .;
   IF (Y7_1185 = -1) THEN Y7_1185 = .;
   IF (Y7_1186 = -1) THEN Y7_1186 = .;
   IF (Y7_1187 = -1) THEN Y7_1187 = .;
   IF (Y7_1188 = -1) THEN Y7_1188 = .;
   IF (Y7_1189 = -1) THEN Y7_1189 = .;
   IF (Y7_1190 = -1) THEN Y7_1190 = .;
   IF (Y7_1191 = -1) THEN Y7_1191 = .;
   IF (Y7_1192 = -1) THEN Y7_1192 = .;
   IF (Y7_1193 = -1) THEN Y7_1193 = .;
   IF (Y7_1194 = -1) THEN Y7_1194 = .;
   IF (Y7_1195 = -1) THEN Y7_1195 = .;
   IF (Y7_1197 = -1) THEN Y7_1197 = .;
   IF (Y7_1198 = -1) THEN Y7_1198 = .;
   IF (Y7_1199 = -1) THEN Y7_1199 = .;
   IF (Y7_1200 = -1) THEN Y7_1200 = .;
   IF (Y7_1201 = -1) THEN Y7_1201 = .;
   IF (Y7_1202 = -1) THEN Y7_1202 = .;
   IF (Y7_1203 = -1) THEN Y7_1203 = .;
   IF (Y7_1204 = -1) THEN Y7_1204 = .;
   IF (Y7_1205 = -1) THEN Y7_1205 = .;
   IF (Y7_1206 = -1) THEN Y7_1206 = .;
   IF (Y7_1207 = -1) THEN Y7_1207 = .;
   IF (Y7_1208 = -1) THEN Y7_1208 = .;
   IF (Y7_1209 = -1) THEN Y7_1209 = .;
   IF (Y7_1210 = -1) THEN Y7_1210 = .;
   IF (Y7_1211 = -1) THEN Y7_1211 = .;
   IF (Y7_1212 = -1) THEN Y7_1212 = .;
   IF (Y7_1213 = -1) THEN Y7_1213 = .;
   IF (Y7_1214 = -1) THEN Y7_1214 = .;
   IF (Y7_1215 = -1) THEN Y7_1215 = .;
   IF (Y7_1216 = -1) THEN Y7_1216 = .;
   IF (Y7_1217 = -1) THEN Y7_1217 = .;
   IF (Y7_1218 = -1) THEN Y7_1218 = .;
   IF (Y7_1219 = -1) THEN Y7_1219 = .;
   IF (Y7_1220 = -1) THEN Y7_1220 = .;
   IF (Y7_1221 = -1) THEN Y7_1221 = .;
   IF (Y7_1222 = -1) THEN Y7_1222 = .;
   IF (Y7_1223 = -1) THEN Y7_1223 = .;
   IF (Y7_1224 = -1) THEN Y7_1224 = .;
   IF (Y7_1225 = -1) THEN Y7_1225 = .;
   IF (Y7_1226 = -1) THEN Y7_1226 = .;
   IF (Y7_1227 = -1) THEN Y7_1227 = .;
   IF (Y7_1228 = -1) THEN Y7_1228 = .;
   IF (Y7_1229 = -1) THEN Y7_1229 = .;
   IF (Y7_1230 = -1) THEN Y7_1230 = .;
   IF (Y7_1231 = -1) THEN Y7_1231 = .;
   IF (Y7_1232 = -1) THEN Y7_1232 = .;
   IF (Y7_1233 = -1) THEN Y7_1233 = .;
   IF (Y7_1234 = -1) THEN Y7_1234 = .;
   IF (Y7_1235 = -1) THEN Y7_1235 = .;
   IF (Y7_1236 = -1) THEN Y7_1236 = .;
   IF (Y7_1237 = -1) THEN Y7_1237 = .;
   IF (Y7_1238 = -1) THEN Y7_1238 = .;
   IF (Y7_1239 = -1) THEN Y7_1239 = .;
   IF (Y7_1240 = -1) THEN Y7_1240 = .;
   IF (Y7_1241 = -1) THEN Y7_1241 = .;
   IF (Y7_1242 = -1) THEN Y7_1242 = .;
   IF (Y7_1243 = -1) THEN Y7_1243 = .;
   IF (Y7_1244 = -1) THEN Y7_1244 = .;
   IF (Y7_1245 = -1) THEN Y7_1245 = .;
   IF (Y7_1246 = -1) THEN Y7_1246 = .;
   IF (Y7_1247 = -1) THEN Y7_1247 = .;
   IF (Y7_1248 = -1) THEN Y7_1248 = .;
   IF (Y7_1249 = -1) THEN Y7_1249 = .;
   IF (Y7_1250 = -1) THEN Y7_1250 = .;
   IF (Y7_1251 = -1) THEN Y7_1251 = .;
   IF (Y7_1252 = -1) THEN Y7_1252 = .;
   IF (Y7_1253 = -1) THEN Y7_1253 = .;
   IF (Y7_1254 = -1) THEN Y7_1254 = .;
   IF (Y7_1255 = -1) THEN Y7_1255 = .;
   IF (Y7_1256 = -1) THEN Y7_1256 = .;
   IF (Y7_1257 = -1) THEN Y7_1257 = .;
   IF (Y7_1258 = -1) THEN Y7_1258 = .;
   IF (Y7_1259 = -1) THEN Y7_1259 = .;
   IF (Y7_1260 = -1) THEN Y7_1260 = .;
   IF (Y7_1261 = -1) THEN Y7_1261 = .;
   IF (Y7_1262 = -1) THEN Y7_1262 = .;
   IF (Y7_1263 = -1) THEN Y7_1263 = .;
   IF (Y7_1264 = -1) THEN Y7_1264 = .;
   IF (Y7_1265 = -1) THEN Y7_1265 = .;
   IF (Y7_1266 = -1) THEN Y7_1266 = .;
   IF (Y7_1267 = -1) THEN Y7_1267 = .;
   IF (Y7_1268 = -1) THEN Y7_1268 = .;
   IF (Y7_1269 = -1) THEN Y7_1269 = .;
   IF (Y7_1270 = -1) THEN Y7_1270 = .;
   IF (Y7_1271 = -1) THEN Y7_1271 = .;
   IF (Y7_1272 = -1) THEN Y7_1272 = .;
   IF (Y7_1273 = -1) THEN Y7_1273 = .;
   IF (Y7_1274 = -1) THEN Y7_1274 = .;
   IF (Y7_1275 = -1) THEN Y7_1275 = .;
   IF (Y7_1276 = -1) THEN Y7_1276 = .;
   IF (Y7_1277 = -1) THEN Y7_1277 = .;
   IF (Y7_1278 = -1) THEN Y7_1278 = .;
   IF (Y7_1279 = -1) THEN Y7_1279 = .;
   IF (Y7_1280 = -1) THEN Y7_1280 = .;
   IF (Y7_1281 = -1) THEN Y7_1281 = .;
   IF (Y7_1282 = -1) THEN Y7_1282 = .;
   IF (Y7_1283 = -1) THEN Y7_1283 = .;
   IF (Y7_1284 = -1) THEN Y7_1284 = .;
   IF (Y7_1285 = -1) THEN Y7_1285 = .;
   IF (Y7_1286 = -1) THEN Y7_1286 = .;
   IF (Y7_1287 = -1) THEN Y7_1287 = .;
   IF (Y7_1288 = -1) THEN Y7_1288 = .;
   IF (Y7_1289 = -1) THEN Y7_1289 = .;
   IF (Y7_1290 = -1) THEN Y7_1290 = .;
   IF (Y7_1291 = -1) THEN Y7_1291 = .;
   IF (Y7_1292 = -1) THEN Y7_1292 = .;
   IF (Y7_1293 = -1) THEN Y7_1293 = .;
   IF (Y7_1294 = -1) THEN Y7_1294 = .;
   IF (Y7_1295 = -1) THEN Y7_1295 = .;
   IF (Y7_1296 = -1) THEN Y7_1296 = .;
   IF (Y7_1297 = -1) THEN Y7_1297 = .;
   IF (Y7_1298 = -1) THEN Y7_1298 = .;
   IF (Y7_1299 = -1) THEN Y7_1299 = .;
   IF (Y7_1300 = -1) THEN Y7_1300 = .;
   IF (Y7_1301 = -1) THEN Y7_1301 = .;
   IF (Y7_1302 = -1) THEN Y7_1302 = .;
   IF (Y7_1303 = -1) THEN Y7_1303 = .;
   IF (Y7_1304 = -1) THEN Y7_1304 = .;
   IF (Y7_1305 = -1) THEN Y7_1305 = .;
   IF (Y7_1306 = -1) THEN Y7_1306 = .;
   IF (Y7_1307 = -1) THEN Y7_1307 = .;
   IF (Y7_1308 = -1) THEN Y7_1308 = .;
   IF (Y7_1309 = -1) THEN Y7_1309 = .;
   IF (Y7_1310 = -1) THEN Y7_1310 = .;
   IF (Y7_1311 = -1) THEN Y7_1311 = .;
   IF (Y7_1312 = -1) THEN Y7_1312 = .;
   IF (Y7_1313 = -1) THEN Y7_1313 = .;
   IF (Y7_1314 = -1) THEN Y7_1314 = .;
   IF (Y7_1315 = -1) THEN Y7_1315 = .;
   IF (Y7_1316 = -1) THEN Y7_1316 = .;
   IF (Y7_1317 = -1) THEN Y7_1317 = .;
   IF (Y7_1318 = -1) THEN Y7_1318 = .;
   IF (Y7_1319 = -1) THEN Y7_1319 = .;
   IF (Y7_1320 = -1) THEN Y7_1320 = .;
   IF (Y7_1321 = -1) THEN Y7_1321 = .;
   IF (Y7_1322 = -1) THEN Y7_1322 = .;
   IF (Y7_1323 = -1) THEN Y7_1323 = .;
   IF (Y7_1324 = -1) THEN Y7_1324 = .;
   IF (Y7_1325 = -1) THEN Y7_1325 = .;
   IF (Y7_1326 = -1) THEN Y7_1326 = .;
   IF (Y7_1327 = -1) THEN Y7_1327 = .;
   IF (Y7_1328 = -1) THEN Y7_1328 = .;
   IF (Y7_1329 = -1) THEN Y7_1329 = .;
   IF (Y7_1330 = -1) THEN Y7_1330 = .;
   IF (Y7_1331 = -1) THEN Y7_1331 = .;
   IF (Y7_1332 = -1) THEN Y7_1332 = .;
   IF (Y7_1333 = -1) THEN Y7_1333 = .;
   IF (Y7_1334 = -1) THEN Y7_1334 = .;
   IF (Y7_1335 = -1) THEN Y7_1335 = .;
   IF (Y7_1336 = -1) THEN Y7_1336 = .;
   IF (Y7_1337 = -1) THEN Y7_1337 = .;
   IF (Y7_1338 = -1) THEN Y7_1338 = .;
   IF (Y7_1339 = -1) THEN Y7_1339 = .;
   IF (Y7_1340 = -1) THEN Y7_1340 = .;
   IF (Y7_1341 = -1) THEN Y7_1341 = .;
   IF (Y7_1342 = -1) THEN Y7_1342 = .;
   IF (Y7_1343 = -1) THEN Y7_1343 = .;
   IF (Y7_1344 = -1) THEN Y7_1344 = .;
   IF (Y7_1345 = -1) THEN Y7_1345 = .;
   IF (Y7_1346 = -1) THEN Y7_1346 = .;
   IF (Y7_1347 = -1) THEN Y7_1347 = .;
   IF (Y7_1348 = -1) THEN Y7_1348 = .;
   IF (Y7_1349 = -1) THEN Y7_1349 = .;
   IF (Y7_1350 = -1) THEN Y7_1350 = .;
   IF (Y7_1351 = -1) THEN Y7_1351 = .;
   IF (Y7_1352 = -1) THEN Y7_1352 = .;
   IF (Y7_1353 = -1) THEN Y7_1353 = .;
   IF (Y7_1354 = -1) THEN Y7_1354 = .;
   IF (Y7_1355 = -1) THEN Y7_1355 = .;
   IF (Y7_1356 = -1) THEN Y7_1356 = .;
   IF (Y7_1357 = -1) THEN Y7_1357 = .;
   IF (Y7_1358 = -1) THEN Y7_1358 = .;
   IF (Y7_1359 = -1) THEN Y7_1359 = .;
   IF (Y7_1360 = -1) THEN Y7_1360 = .;
   IF (Y7_1361 = -1) THEN Y7_1361 = .;
   IF (Y7_1362 = -1) THEN Y7_1362 = .;
   IF (Y7_1363 = -1) THEN Y7_1363 = .;
   IF (Y7_1364 = -1) THEN Y7_1364 = .;
   IF (Y7_1365 = -1) THEN Y7_1365 = .;
   IF (Y7_1366 = -1) THEN Y7_1366 = .;
   IF (Y7_1367 = -1) THEN Y7_1367 = .;
   IF (Y7_1368 = -1) THEN Y7_1368 = .;
   IF (Y7_1369 = -1) THEN Y7_1369 = .;
   IF (Y7_1370 = -1) THEN Y7_1370 = .;
   IF (Y7_1371 = -1) THEN Y7_1371 = .;
   IF (Y7_1372 = -1) THEN Y7_1372 = .;
   IF (Y7_1373 = -1) THEN Y7_1373 = .;
   IF (Y7_1374 = -1) THEN Y7_1374 = .;
   IF (Y7_1375 = -1) THEN Y7_1375 = .;
   IF (Y7_1376 = -1) THEN Y7_1376 = .;
   IF (Y7_1377 = -1) THEN Y7_1377 = .;
   IF (Y7_1378 = -1) THEN Y7_1378 = .;
   IF (Y7_1379 = -1) THEN Y7_1379 = .;
   IF (Y7_1380 = -1) THEN Y7_1380 = .;
   IF (Y7_1381 = -1) THEN Y7_1381 = .;
   IF (Y7_1382 = -1) THEN Y7_1382 = .;
   IF (Y7_1383 = -1) THEN Y7_1383 = .;
   IF (Y7_1384 = -1) THEN Y7_1384 = .;
   IF (Y7_1385 = -1) THEN Y7_1385 = .;
   IF (Y7_1386 = -1) THEN Y7_1386 = .;
   IF (Y7_1387 = -1) THEN Y7_1387 = .;
   IF (Y7_1388 = -1) THEN Y7_1388 = .;
   IF (Y7_1389 = -1) THEN Y7_1389 = .;
   IF (Y7_1390 = -1) THEN Y7_1390 = .;
   IF (Y7_1391 = -1) THEN Y7_1391 = .;
   IF (Y7_1392 = -1) THEN Y7_1392 = .;
   IF (Y7_1393 = -1) THEN Y7_1393 = .;
   IF (Y7_1394 = -1) THEN Y7_1394 = .;
   IF (Y7_1395 = -1) THEN Y7_1395 = .;
   IF (Y7_1396 = -1) THEN Y7_1396 = .;
   IF (Y7_1397 = -1) THEN Y7_1397 = .;
   IF (Y7_1398 = -1) THEN Y7_1398 = .;
   IF (Y7_1399 = -1) THEN Y7_1399 = .;
   IF (Y7_1400 = -1) THEN Y7_1400 = .;
   IF (Y7_1401 = -1) THEN Y7_1401 = .;
   IF (Y7_1402 = -1) THEN Y7_1402 = .;
   IF (Y7_1403 = -1) THEN Y7_1403 = .;
   IF (Y7_1404 = -1) THEN Y7_1404 = .;
   IF (Y7_1405 = -1) THEN Y7_1405 = .;
   IF (Y7_1406 = -1) THEN Y7_1406 = .;
   IF (Y7_1407 = -1) THEN Y7_1407 = .;
   IF (Y7_1408 = -1) THEN Y7_1408 = .;
   IF (Y7_1409 = -1) THEN Y7_1409 = .;
   IF (Y7_1410 = -1) THEN Y7_1410 = .;
   IF (Y7_1411 = -1) THEN Y7_1411 = .;
   IF (Y7_1412 = -1) THEN Y7_1412 = .;
   IF (Y7_1413 = -1) THEN Y7_1413 = .;
   IF (Y7_1414 = -1) THEN Y7_1414 = .;
   IF (Y7_1415 = -1) THEN Y7_1415 = .;
   IF (Y7_1416 = -1) THEN Y7_1416 = .;
   IF (Y7_1417 = -1) THEN Y7_1417 = .;
   IF (Y7_1418 = -1) THEN Y7_1418 = .;
   IF (Y7_1419 = -1) THEN Y7_1419 = .;
   IF (Y7_1420 = -1) THEN Y7_1420 = .;
   IF (Y7_1421 = -1) THEN Y7_1421 = .;
   IF (Y7_1422 = -1) THEN Y7_1422 = .;
   IF (Y7_1423 = -1) THEN Y7_1423 = .;
   IF (Y7_1424 = -1) THEN Y7_1424 = .;
   IF (Y7_1425 = -1) THEN Y7_1425 = .;
   IF (Y7_1426 = -1) THEN Y7_1426 = .;
   IF (Y7_1427 = -1) THEN Y7_1427 = .;
   IF (Y7_1428 = -1) THEN Y7_1428 = .;
   IF (Y7_1429 = -1) THEN Y7_1429 = .;
   IF (Y7_1430 = -1) THEN Y7_1430 = .;
   IF (Y7_1431 = -1) THEN Y7_1431 = .;
   IF (Y7_1432 = -1) THEN Y7_1432 = .;
   IF (Y7_1433 = -1) THEN Y7_1433 = .;
   IF (Y7_1434 = -1) THEN Y7_1434 = .;
   IF (Y7_1435 = -1) THEN Y7_1435 = .;
   IF (Y7_1436 = -1) THEN Y7_1436 = .;
   IF (Y7_1437 = -1) THEN Y7_1437 = .;
   IF (Y7_1451 = -1) THEN Y7_1451 = .;
   IF (Y7_1452 = -1) THEN Y7_1452 = .;
   IF (Y7_1453 = -1) THEN Y7_1453 = .;
   IF (Y7_1454 = -1) THEN Y7_1454 = .;
   IF (Y7_1455 = -1) THEN Y7_1455 = .;
   IF (Y7_1456 = -1) THEN Y7_1456 = .;
   IF (Y7_1457 = -1) THEN Y7_1457 = .;
   IF (Y7_1458 = -1) THEN Y7_1458 = .;
   IF (Y7_1459 = -1) THEN Y7_1459 = .;
   IF (Y7_1460 = -1) THEN Y7_1460 = .;
   IF (Y7_1461 = -1) THEN Y7_1461 = .;
   IF (Y7_1466 = -1) THEN Y7_1466 = .;
   IF (Y7_1467 = -1) THEN Y7_1467 = .;
   IF (Y7_1468 = -1) THEN Y7_1468 = .;
   IF (Y7_1469 = -1) THEN Y7_1469 = .;
   IF (Y7_1470 = -1) THEN Y7_1470 = .;
   IF (Y7_1471 = -1) THEN Y7_1471 = .;
   IF (Y7_1472 = -1) THEN Y7_1472 = .;
   IF (Y7_1473 = -1) THEN Y7_1473 = .;
   IF (Y7_1474 = -1) THEN Y7_1474 = .;
   IF (Y7_1475 = -1) THEN Y7_1475 = .;
   IF (Y7_1476 = -1) THEN Y7_1476 = .;
   IF (Y7_1477 = -1) THEN Y7_1477 = .;
   IF (Y7_1478 = -1) THEN Y7_1478 = .;
   IF (Y7_1479 = -1) THEN Y7_1479 = .;
   IF (Y7_1480 = -1) THEN Y7_1480 = .;
   IF (Y7_1481 = -1) THEN Y7_1481 = .;
   IF (Y7_1482 = -1) THEN Y7_1482 = .;
   IF (Y7_1483 = -1) THEN Y7_1483 = .;
   IF (Y7_1484 = -1) THEN Y7_1484 = .;
   IF (Y7_1485 = -1) THEN Y7_1485 = .;
   IF (Y7_1486 = -1) THEN Y7_1486 = .;
   IF (Y7_1487 = -1) THEN Y7_1487 = .;
   IF (Y7_1730 = -1) THEN Y7_1730 = .;
*/

* SAS FORMAT STATEMENT;

  FORMAT Y7_1 y7_1ffff. Y7_2 y7_2ffff. Y7_3 y7_3ffff.
         Y7_8 y7_8ffff. Y7_9 y7_9ffff. Y7_10 y7_10fff.
         Y7_11 y7_11fff. Y7_12 y7_12fff. Y7_13 y7_13fff.
         Y7_14 y7_14fff. Y7_15 y7_15fff. Y7_16 y7_16fff.
         Y7_17 y7_17fff. Y7_18 y7_18fff. Y7_19 y7_19fff.
         Y7_20 y7_20fff. Y7_21 y7_21fff. Y7_22 y7_22fff.
         Y7_23 y7_23fff. Y7_24 y7_24fff. Y7_25 y7_25fff.
         Y7_26 y7_26fff. Y7_27 y7_27fff. Y7_28 y7_28fff.
         Y7_29 y7_29fff. Y7_30 y7_30fff. Y7_31 y7_31fff.
         Y7_32 y7_32fff. Y7_33 y7_33fff. Y7_34 y7_34fff.
         Y7_35 y7_35fff. Y7_36 y7_36fff. Y7_37 y7_37fff.
         Y7_38 y7_38fff. Y7_39 y7_39fff. Y7_40 y7_40fff.
         Y7_41 y7_41fff. Y7_42 y7_42fff. Y7_43 y7_43fff.
         Y7_44 y7_44fff. Y7_45 y7_45fff. Y7_46 y7_46fff.
         Y7_47 y7_47fff. Y7_48 y7_48fff. Y7_49 y7_49fff.
         Y7_50 y7_50fff. Y7_51 y7_51fff. Y7_52 y7_52fff.
         Y7_53 y7_53fff. Y7_54 y7_54fff. Y7_55 y7_55fff.
         Y7_56 y7_56fff. Y7_57 y7_57fff. Y7_58 y7_58fff.
         Y7_59 y7_59fff. Y7_60 y7_60fff. Y7_61 y7_61fff.
         Y7_62 y7_62fff. Y7_63 y7_63fff. Y7_64 y7_64fff.
         Y7_65 y7_65fff. Y7_66 y7_66fff. Y7_67 y7_67fff.
         Y7_68 y7_68fff. Y7_69 y7_69fff. Y7_70 y7_70fff.
         Y7_71 y7_71fff. Y7_72 y7_72fff. Y7_73 y7_73fff.
         Y7_74 y7_74fff. Y7_75 y7_75fff. Y7_76 y7_76fff.
         Y7_77 y7_77fff. Y7_78 y7_78fff. Y7_79 y7_79fff.
         Y7_80 y7_80fff. Y7_81 y7_81fff. Y7_83 y7_83fff.
         Y7_84 y7_84fff. Y7_85 y7_85fff. Y7_86 y7_86fff.
         Y7_87 y7_87fff. Y7_88 y7_88fff. Y7_89 y7_89fff.
         Y7_90 y7_90fff. Y7_91 y7_91fff. Y7_92 y7_92fff.
         Y7_93 y7_93fff. Y7_94 y7_94fff. Y7_95 y7_95fff.
         Y7_96 y7_96fff. Y7_97 y7_97fff. Y7_98 y7_98fff.
         Y7_99 y7_99fff. Y7_100 y7_100ff. Y7_101 y7_101ff.
         Y7_102 y7_102ff. Y7_103 y7_103ff. Y7_104 y7_104ff.
         Y7_105 y7_105ff. Y7_106 y7_106ff. Y7_107 y7_107ff.
         Y7_108 y7_108ff. Y7_109 y7_109ff. Y7_110 y7_110ff.
         Y7_111 y7_111ff. Y7_112 y7_112ff. Y7_113 y7_113ff.
         Y7_114 y7_114ff. Y7_115 y7_115ff. Y7_116 y7_116ff.
         Y7_117 y7_117ff. Y7_118 y7_118ff. Y7_119 y7_119ff.
         Y7_121 y7_121ff. Y7_122 y7_122ff. Y7_123 y7_123ff.
         Y7_124 y7_124ff. Y7_149 y7_149ff. Y7_150 y7_150ff.
         Y7_151 y7_151ff. Y7_152 y7_152ff. Y7_153 y7_153ff.
         Y7_154 y7_154ff. Y7_155 y7_155ff. Y7_156 y7_156ff.
         Y7_157 y7_157ff. Y7_158 y7_158ff. Y7_159 y7_159ff.
         Y7_160 y7_160ff. Y7_161 y7_161ff. Y7_162 y7_162ff.
         Y7_163 y7_163ff. Y7_165 y7_165ff. Y7_166 y7_166ff.
         Y7_167 y7_167ff. Y7_168 y7_168ff. Y7_169 y7_169ff.
         Y7_170 y7_170ff. Y7_171 y7_171ff. Y7_172 y7_172ff.
         Y7_173 y7_173ff. Y7_174 y7_174ff. Y7_175 y7_175ff.
         Y7_176 y7_176ff. Y7_177 y7_177ff. Y7_178 y7_178ff.
         Y7_179 y7_179ff. Y7_180 y7_180ff. Y7_181 y7_181ff.
         Y7_182 y7_182ff. Y7_183 y7_183ff. Y7_184 y7_184ff.
         Y7_185 y7_185ff. Y7_187 y7_187ff. Y7_188 y7_188ff.
         Y7_210 y7_210ff. Y7_211 y7_211ff. Y7_233 y7_233ff.
         Y7_234 y7_234ff. Y7_235 y7_235ff. Y7_236 y7_236ff.
         Y7_237 y7_237ff. Y7_238 y7_238ff. Y7_239 y7_239ff.
         Y7_240 y7_240ff. Y7_241 y7_241ff. Y7_242 y7_242ff.
         Y7_243 y7_243ff. Y7_244 y7_244ff. Y7_245 y7_245ff.
         Y7_246 y7_246ff. Y7_247 y7_247ff. Y7_261 y7_261ff.
         Y7_263 y7_263ff. Y7_264 y7_264ff. Y7_265 y7_265ff.
         Y7_266 y7_266ff. Y7_267 y7_267ff. Y7_268 y7_268ff.
         Y7_269 y7_269ff. Y7_270 y7_270ff. Y7_271 y7_271ff.
         Y7_272 y7_272ff. Y7_273 y7_273ff. Y7_274 y7_274ff.
         Y7_275 y7_275ff. Y7_276 y7_276ff. Y7_277 y7_277ff.
         Y7_278 y7_278ff. Y7_279 y7_279ff. Y7_280 y7_280ff.
         Y7_281 y7_281ff. Y7_282 y7_282ff. Y7_283 y7_283ff.
         Y7_284 y7_284ff. Y7_285 y7_285ff. Y7_286 y7_286ff.
         Y7_287 y7_287ff. Y7_288 y7_288ff. Y7_289 y7_289ff.
         Y7_290 y7_290ff. Y7_291 y7_291ff. Y7_292 y7_292ff.
         Y7_293 y7_293ff. Y7_294 y7_294ff. Y7_295 y7_295ff.
         Y7_296 y7_296ff. Y7_297 y7_297ff. Y7_298 y7_298ff.
         Y7_299 y7_299ff. Y7_300 y7_300ff. Y7_301 y7_301ff.
         Y7_302 y7_302ff. Y7_303 y7_303ff. Y7_304 y7_304ff.
         Y7_305 y7_305ff. Y7_306 y7_306ff. Y7_307 y7_307ff.
         Y7_308 y7_308ff. Y7_309 y7_309ff. Y7_310 y7_310ff.
         Y7_311 y7_311ff. Y7_312 y7_312ff. Y7_313 y7_313ff.
         Y7_314 y7_314ff. Y7_315 y7_315ff. Y7_316 y7_316ff.
         Y7_317 y7_317ff. Y7_318 y7_318ff. Y7_319 y7_319ff.
         Y7_320 y7_320ff. Y7_322 y7_322ff. Y7_323 y7_323ff.
         Y7_324 y7_324ff. Y7_325 y7_325ff. Y7_326 y7_326ff.
         Y7_327 y7_327ff. Y7_328 y7_328ff. Y7_329 y7_329ff.
         Y7_330 y7_330ff. Y7_331 y7_331ff. Y7_332 y7_332ff.
         Y7_333 y7_333ff. Y7_334 y7_334ff. Y7_335 y7_335ff.
         Y7_336 y7_336ff. Y7_337 y7_337ff. Y7_338 y7_338ff.
         Y7_339 y7_339ff. Y7_340 y7_340ff. Y7_341 y7_341ff.
         Y7_342 y7_342ff. Y7_343 y7_343ff. Y7_344 y7_344ff.
         Y7_345 y7_345ff. Y7_346 y7_346ff. Y7_347 y7_347ff.
         Y7_348 y7_348ff. Y7_349 y7_349ff. Y7_350 y7_350ff.
         Y7_351 y7_351ff. Y7_352 y7_352ff. Y7_353 y7_353ff.
         Y7_354 y7_354ff. Y7_355 y7_355ff. Y7_356 y7_356ff.
         Y7_357 y7_357ff. Y7_358 y7_358ff. Y7_359 y7_359ff.
         Y7_360 y7_360ff. Y7_361 y7_361ff. Y7_362 y7_362ff.
         Y7_363 y7_363ff. Y7_364 y7_364ff. Y7_365 y7_365ff.
         Y7_366 y7_366ff. Y7_367 y7_367ff. Y7_368 y7_368ff.
         Y7_369 y7_369ff. Y7_370 y7_370ff. Y7_371 y7_371ff.
         Y7_372 y7_372ff. Y7_373 y7_373ff. Y7_374 y7_374ff.
         Y7_375 y7_375ff. Y7_376 y7_376ff. Y7_377 y7_377ff.
         Y7_378 y7_378ff. Y7_379 y7_379ff. Y7_380 y7_380ff.
         Y7_381 y7_381ff. Y7_382 y7_382ff. Y7_383 y7_383ff.
         Y7_384 y7_384ff. Y7_385 y7_385ff. Y7_386 y7_386ff.
         Y7_387 y7_387ff. Y7_388 y7_388ff. Y7_389 y7_389ff.
         Y7_390 y7_390ff. Y7_391 y7_391ff. Y7_392 y7_392ff.
         Y7_393 y7_393ff. Y7_394 y7_394ff. Y7_395 y7_395ff.
         Y7_396 y7_396ff. Y7_397 y7_397ff. Y7_398 y7_398ff.
         Y7_399 y7_399ff. Y7_400 y7_400ff. Y7_401 y7_401ff.
         Y7_402 y7_402ff. Y7_403 y7_403ff. Y7_404 y7_404ff.
         Y7_405 y7_405ff. Y7_406 y7_406ff. Y7_407 y7_407ff.
         Y7_408 y7_408ff. Y7_409 y7_409ff. Y7_410 y7_410ff.
         Y7_411 y7_411ff. Y7_412 y7_412ff. Y7_413 y7_413ff.
         Y7_414 y7_414ff. Y7_415 y7_415ff. Y7_416 y7_416ff.
         Y7_417 y7_417ff. Y7_418 y7_418ff. Y7_419 y7_419ff.
         Y7_420 y7_420ff. Y7_421 y7_421ff. Y7_422 y7_422ff.
         Y7_423 y7_423ff. Y7_424 y7_424ff. Y7_425 y7_425ff.
         Y7_426 y7_426ff. Y7_427 y7_427ff. Y7_428 y7_428ff.
         Y7_429 y7_429ff. Y7_430 y7_430ff. Y7_431 y7_431ff.
         Y7_432 y7_432ff. Y7_433 y7_433ff. Y7_434 y7_434ff.
         Y7_435 y7_435ff. Y7_436 y7_436ff. Y7_437 y7_437ff.
         Y7_438 y7_438ff. Y7_439 y7_439ff. Y7_440 y7_440ff.
         Y7_441 y7_441ff. Y7_442 y7_442ff. Y7_443 y7_443ff.
         Y7_444 y7_444ff. Y7_445 y7_445ff. Y7_446 y7_446ff.
         Y7_447 y7_447ff. Y7_448 y7_448ff. Y7_449 y7_449ff.
         Y7_451 y7_451ff. Y7_453 y7_453ff. Y7_455 y7_455ff.
         Y7_457 y7_457ff. Y7_459 y7_459ff. Y7_461 y7_461ff.
         Y7_463 y7_463ff. Y7_465 y7_465ff. Y7_467 y7_467ff.
         Y7_469 y7_469ff. Y7_471 y7_471ff. Y7_473 y7_473ff.
         Y7_475 y7_475ff. Y7_477 y7_477ff. Y7_479 y7_479ff.
         Y7_481 y7_481ff. Y7_483 y7_483ff. Y7_485 y7_485ff.
         Y7_487 y7_487ff. Y7_489 y7_489ff. Y7_491 y7_491ff.
         Y7_493 y7_493ff. Y7_495 y7_495ff. Y7_497 y7_497ff.
         Y7_499 y7_499ff. Y7_501 y7_501ff. Y7_503 y7_503ff.
         Y7_505 y7_505ff. Y7_507 y7_507ff. Y7_509 y7_509ff.
         Y7_511 y7_511ff. Y7_513 y7_513ff. Y7_515 y7_515ff.
         Y7_517 y7_517ff. Y7_519 y7_519ff. Y7_521 y7_521ff.
         Y7_523 y7_523ff. Y7_525 y7_525ff. Y7_526 y7_526ff.
         Y7_527 y7_527ff. Y7_528 y7_528ff. Y7_529 y7_529ff.
         Y7_530 y7_530ff. Y7_531 y7_531ff. Y7_532 y7_532ff.
         Y7_533 y7_533ff. Y7_534 y7_534ff. Y7_535 y7_535ff.
         Y7_536 y7_536ff. Y7_537 y7_537ff. Y7_538 y7_538ff.
         Y7_539 y7_539ff. Y7_540 y7_540ff. Y7_541 y7_541ff.
         Y7_542 y7_542ff. Y7_543 y7_543ff. Y7_544 y7_544ff.
         Y7_545 y7_545ff. Y7_546 y7_546ff. Y7_547 y7_547ff.
         Y7_548 y7_548ff. Y7_549 y7_549ff. Y7_550 y7_550ff.
         Y7_551 y7_551ff. Y7_552 y7_552ff. Y7_553 y7_553ff.
         Y7_554 y7_554ff. Y7_555 y7_555ff. Y7_556 y7_556ff.
         Y7_557 y7_557ff. Y7_558 y7_558ff. Y7_559 y7_559ff.
         Y7_560 y7_560ff. Y7_561 y7_561ff. Y7_562 y7_562ff.
         Y7_563 y7_563ff. Y7_564 y7_564ff. Y7_565 y7_565ff.
         Y7_566 y7_566ff. Y7_567 y7_567ff. Y7_569 y7_569ff.
         Y7_570 y7_570ff. Y7_571 y7_571ff. Y7_573 y7_573ff.
         Y7_578 y7_578ff. Y7_579 y7_579ff. Y7_580 y7_580ff.
         Y7_581 y7_581ff. Y7_582 y7_582ff. Y7_583 y7_583ff.
         Y7_584 y7_584ff. Y7_585 y7_585ff. Y7_586 y7_586ff.
         Y7_587 y7_587ff. Y7_588 y7_588ff. Y7_589 y7_589ff.
         Y7_590 y7_590ff. Y7_591 y7_591ff. Y7_592 y7_592ff.
         Y7_593 y7_593ff. Y7_594 y7_594ff. Y7_595 y7_595ff.
         Y7_596 y7_596ff. Y7_597 y7_597ff. Y7_598 y7_598ff.
         Y7_599 y7_599ff. Y7_600 y7_600ff. Y7_601 y7_601ff.
         Y7_602 y7_602ff. Y7_603 y7_603ff. Y7_604 y7_604ff.
         Y7_605 y7_605ff. Y7_606 y7_606ff. Y7_608 y7_608ff.
         Y7_609 y7_609ff. Y7_610 y7_610ff. Y7_611 y7_611ff.
         Y7_612 y7_612ff. Y7_613 y7_613ff. Y7_615 y7_615ff.
         Y7_616 y7_616ff. Y7_617 y7_617ff. Y7_618 y7_618ff.
         Y7_619 y7_619ff. Y7_620 y7_620ff. Y7_622 y7_622ff.
         Y7_623 y7_623ff. Y7_624 y7_624ff. Y7_625 y7_625ff.
         Y7_626 y7_626ff. Y7_627 y7_627ff. Y7_628 y7_628ff.
         Y7_630 y7_630ff. Y7_631 y7_631ff. Y7_632 y7_632ff.
         Y7_633 y7_633ff. Y7_634 y7_634ff. Y7_635 y7_635ff.
         Y7_636 y7_636ff. Y7_637 y7_637ff. Y7_638 y7_638ff.
         Y7_639 y7_639ff. Y7_640 y7_640ff. Y7_641 y7_641ff.
         Y7_642 y7_642ff. Y7_643 y7_643ff. Y7_644 y7_644ff.
         Y7_645 y7_645ff. Y7_646 y7_646ff. Y7_647 y7_647ff.
         Y7_648 y7_648ff. Y7_649 y7_649ff. Y7_650 y7_650ff.
         Y7_651 y7_651ff. Y7_652 y7_652ff. Y7_653 y7_653ff.
         Y7_654 y7_654ff. Y7_655 y7_655ff. Y7_656 y7_656ff.
         Y7_657 y7_657ff. Y7_658 y7_658ff. Y7_659 y7_659ff.
         Y7_660 y7_660ff. Y7_661 y7_661ff. Y7_662 y7_662ff.
         Y7_663 y7_663ff. Y7_664 y7_664ff. Y7_665 y7_665ff.
         Y7_666 y7_666ff. Y7_667 y7_667ff. Y7_668 y7_668ff.
         Y7_669 y7_669ff. Y7_670 y7_670ff. Y7_671 y7_671ff.
         Y7_672 y7_672ff. Y7_673 y7_673ff. Y7_674 y7_674ff.
         Y7_675 y7_675ff. Y7_676 y7_676ff. Y7_677 y7_677ff.
         Y7_678 y7_678ff. Y7_679 y7_679ff. Y7_680 y7_680ff.
         Y7_681 y7_681ff. Y7_682 y7_682ff. Y7_683 y7_683ff.
         Y7_684 y7_684ff. Y7_685 y7_685ff. Y7_686 y7_686ff.
         Y7_687 y7_687ff. Y7_689 y7_689ff. Y7_690 y7_690ff.
         Y7_691 y7_691ff. Y7_694 y7_694ff. Y7_695 y7_695ff.
         Y7_696 y7_696ff. Y7_697 y7_697ff. Y7_700 y7_700ff.
         Y7_701 y7_701ff. Y7_702 y7_702ff. Y7_703 y7_703ff.
         Y7_704 y7_704ff. Y7_705 y7_705ff. Y7_708 y7_708ff.
         Y7_709 y7_709ff. Y7_710 y7_710ff. Y7_711 y7_711ff.
         Y7_712 y7_712ff. Y7_713 y7_713ff. Y7_714 y7_714ff.
         Y7_715 y7_715ff. Y7_716 y7_716ff. Y7_717 y7_717ff.
         Y7_718 y7_718ff. Y7_719 y7_719ff. Y7_720 y7_720ff.
         Y7_721 y7_721ff. Y7_722 y7_722ff. Y7_723 y7_723ff.
         Y7_724 y7_724ff. Y7_725 y7_725ff. Y7_726 y7_726ff.
         Y7_727 y7_727ff. Y7_728 y7_728ff. Y7_729 y7_729ff.
         Y7_730 y7_730ff. Y7_731 y7_731ff. Y7_732 y7_732ff.
         Y7_733 y7_733ff. Y7_734 y7_734ff. Y7_735 y7_735ff.
         Y7_736 y7_736ff. Y7_737 y7_737ff. Y7_738 y7_738ff.
         Y7_739 y7_739ff. Y7_740 y7_740ff. Y7_741 y7_741ff.
         Y7_742 y7_742ff. Y7_743 y7_743ff. Y7_744 y7_744ff.
         Y7_745 y7_745ff. Y7_746 y7_746ff. Y7_747 y7_747ff.
         Y7_748 y7_748ff. Y7_749 y7_749ff. Y7_750 y7_750ff.
         Y7_751 y7_751ff. Y7_752 y7_752ff. Y7_753 y7_753ff.
         Y7_754 y7_754ff. Y7_756 y7_756ff. Y7_757 y7_757ff.
         Y7_758 y7_758ff. Y7_759 y7_759ff. Y7_762 y7_762ff.
         Y7_763 y7_763ff. Y7_764 y7_764ff. Y7_765 y7_765ff.
         Y7_766 y7_766ff. Y7_767 y7_767ff. Y7_768 y7_768ff.
         Y7_769 y7_769ff. Y7_770 y7_770ff. Y7_771 y7_771ff.
         Y7_772 y7_772ff. Y7_773 y7_773ff. Y7_774 y7_774ff.
         Y7_775 y7_775ff. Y7_776 y7_776ff. Y7_777 y7_777ff.
         Y7_778 y7_778ff. Y7_779 y7_779ff. Y7_780 y7_780ff.
         Y7_781 y7_781ff. Y7_782 y7_782ff. Y7_783 y7_783ff.
         Y7_784 y7_784ff. Y7_785 y7_785ff. Y7_786 y7_786ff.
         Y7_787 y7_787ff. Y7_788 y7_788ff. Y7_789 y7_789ff.
         Y7_790 y7_790ff. Y7_791 y7_791ff. Y7_792 y7_792ff.
         Y7_793 y7_793ff. Y7_794 y7_794ff. Y7_795 y7_795ff.
         Y7_796 y7_796ff. Y7_798 y7_798ff. Y7_799 y7_799ff.
         Y7_800 y7_800ff. Y7_801 y7_801ff. Y7_802 y7_802ff.
         Y7_803 y7_803ff. Y7_804 y7_804ff. Y7_805 y7_805ff.
         Y7_806 y7_806ff. Y7_807 y7_807ff. Y7_808 y7_808ff.
         Y7_809 y7_809ff. Y7_810 y7_810ff. Y7_811 y7_811ff.
         Y7_812 y7_812ff. Y7_813 y7_813ff. Y7_814 y7_814ff.
         Y7_815 y7_815ff. Y7_816 y7_816ff. Y7_817 y7_817ff.
         Y7_818 y7_818ff. Y7_819 y7_819ff. Y7_820 y7_820ff.
         Y7_821 y7_821ff. Y7_822 y7_822ff. Y7_823 y7_823ff.
         Y7_824 y7_824ff. Y7_825 y7_825ff. Y7_827 y7_827ff.
         Y7_828 y7_828ff. Y7_829 y7_829ff. Y7_830 y7_830ff.
         Y7_831 y7_831ff. Y7_832 y7_832ff. Y7_833 y7_833ff.
         Y7_834 y7_834ff. Y7_835 y7_835ff. Y7_836 y7_836ff.
         Y7_837 y7_837ff. Y7_838 y7_838ff. Y7_840 y7_840ff.
         Y7_841 y7_841ff. Y7_843 y7_843ff. Y7_844 y7_844ff.
         Y7_845 y7_845ff. Y7_846 y7_846ff. Y7_851 y7_851ff.
         Y7_852 y7_852ff. Y7_854 y7_854ff. Y7_855 y7_855ff.
         Y7_857 y7_857ff. Y7_858 y7_858ff. Y7_861 y7_861ff.
         Y7_862 y7_862ff. Y7_865 y7_865ff. Y7_866 y7_866ff.
         Y7_869 y7_869ff. Y7_870 y7_870ff. Y7_873 y7_873ff.
         Y7_874 y7_874ff. Y7_876 y7_876ff. Y7_877 y7_877ff.
         Y7_879 y7_879ff. Y7_880 y7_880ff. Y7_882 y7_882ff.
         Y7_883 y7_883ff. Y7_885 y7_885ff. Y7_886 y7_886ff.
         Y7_887 y7_887ff. Y7_889 y7_889ff. Y7_890 y7_890ff.
         Y7_892 y7_892ff. Y7_893 y7_893ff. Y7_894 y7_894ff.
         Y7_895 y7_895ff. Y7_896 y7_896ff. Y7_897 y7_897ff.
         Y7_898 y7_898ff. Y7_899 y7_899ff. Y7_900 y7_900ff.
         Y7_901 y7_901ff. Y7_902 y7_902ff. Y7_903 y7_903ff.
         Y7_904 y7_904ff. Y7_905 y7_905ff. Y7_906 y7_906ff.
         Y7_907 y7_907ff. Y7_908 y7_908ff. Y7_909 y7_909ff.
         Y7_910 y7_910ff. Y7_911 y7_911ff. Y7_912 y7_912ff.
         Y7_913 y7_913ff. Y7_914 y7_914ff. Y7_915 y7_915ff.
         Y7_916 y7_916ff. Y7_917 y7_917ff. Y7_918 y7_918ff.
         Y7_919 y7_919ff. Y7_920 y7_920ff. Y7_921 y7_921ff.
         Y7_922 y7_922ff. Y7_923 y7_923ff. Y7_924 y7_924ff.
         Y7_925 y7_925ff. Y7_926 y7_926ff. Y7_927 y7_927ff.
         Y7_928 y7_928ff. Y7_929 y7_929ff. Y7_930 y7_930ff.
         Y7_931 y7_931ff. Y7_932 y7_932ff. Y7_933 y7_933ff.
         Y7_934 y7_934ff. Y7_944 y7_944ff. Y7_945 y7_945ff.
         Y7_946 y7_946ff. Y7_947 y7_947ff. Y7_948 y7_948ff.
         Y7_949 y7_949ff. Y7_950 y7_950ff. Y7_951 y7_951ff.
         Y7_952 y7_952ff. Y7_953 y7_953ff. Y7_954 y7_954ff.
         Y7_955 y7_955ff. Y7_956 y7_956ff. Y7_957 y7_957ff.
         Y7_958 y7_958ff. Y7_959 y7_959ff. Y7_960 y7_960ff.
         Y7_961 y7_961ff. Y7_962 y7_962ff. Y7_963 y7_963ff.
         Y7_964 y7_964ff. Y7_965 y7_965ff. Y7_966 y7_966ff.
         Y7_967 y7_967ff. Y7_968 y7_968ff. Y7_969 y7_969ff.
         Y7_970 y7_970ff. Y7_971 y7_971ff. Y7_972 y7_972ff.
         Y7_973 y7_973ff. Y7_974 y7_974ff. Y7_975 y7_975ff.
         Y7_976 y7_976ff. Y7_977 y7_977ff. Y7_978 y7_978ff.
         Y7_979 y7_979ff. Y7_980 y7_980ff. Y7_981 y7_981ff.
         Y7_982 y7_982ff. Y7_983 y7_983ff. Y7_984 y7_984ff.
         Y7_985 y7_985ff. Y7_986 y7_986ff. Y7_987 y7_987ff.
         Y7_988 y7_988ff. Y7_989 y7_989ff. Y7_990 y7_990ff.
         Y7_991 y7_991ff. Y7_992 y7_992ff. Y7_993 y7_993ff.
         Y7_994 y7_994ff. Y7_995 y7_995ff. Y7_996 y7_996ff.
         Y7_997 y7_997ff. Y7_998 y7_998ff. Y7_999 y7_999ff.
         Y7_1000 y7_1000f. Y7_1001 y7_1001f. Y7_1002 y7_1002f.
         Y7_1003 y7_1003f. Y7_1004 y7_1004f. Y7_1005 y7_1005f.
         Y7_1006 y7_1006f. Y7_1007 y7_1007f. Y7_1008 y7_1008f.
         Y7_1009 y7_1009f. Y7_1010 y7_1010f. Y7_1011 y7_1011f.
         Y7_1012 y7_1012f. Y7_1013 y7_1013f. Y7_1014 y7_1014f.
         Y7_1015 y7_1015f. Y7_1016 y7_1016f. Y7_1017 y7_1017f.
         Y7_1018 y7_1018f. Y7_1019 y7_1019f. Y7_1020 y7_1020f.
         Y7_1021 y7_1021f. Y7_1022 y7_1022f. Y7_1023 y7_1023f.
         Y7_1024 y7_1024f. Y7_1025 y7_1025f. Y7_1026 y7_1026f.
         Y7_1027 y7_1027f. Y7_1028 y7_1028f. Y7_1029 y7_1029f.
         Y7_1030 y7_1030f. Y7_1031 y7_1031f. Y7_1032 y7_1032f.
         Y7_1039 y7_1039f. Y7_1040 y7_1040f. Y7_1041 y7_1041f.
         Y7_1048 y7_1048f. Y7_1049 y7_1049f. Y7_1050 y7_1050f.
         Y7_1057 y7_1057f. Y7_1058 y7_1058f. Y7_1059 y7_1059f.
         Y7_1060 y7_1060f. Y7_1062 y7_1062f. Y7_1064 y7_1064f.
         Y7_1065 y7_1065f. Y7_1066 y7_1066f. Y7_1068 y7_1068f.
         Y7_1071 y7_1071f. Y7_1072 y7_1072f. Y7_1074 y7_1074f.
         Y7_1076 y7_1076f. Y7_1077 y7_1077f. Y7_1079 y7_1079f.
         Y7_1083 y7_1083f. Y7_1092 y7_1092f. Y7_1093 y7_1093f.
         Y7_1094 y7_1094f. Y7_1095 y7_1095f. Y7_1096 y7_1096f.
         Y7_1097 y7_1097f. Y7_1098 y7_1098f. Y7_1099 y7_1099f.
         Y7_1100 y7_1100f. Y7_1101 y7_1101f. Y7_1102 y7_1102f.
         Y7_1103 y7_1103f. Y7_1104 y7_1104f. Y7_1105 y7_1105f.
         Y7_1106 y7_1106f. Y7_1107 y7_1107f. Y7_1108 y7_1108f.
         Y7_1109 y7_1109f. Y7_1110 y7_1110f. Y7_1111 y7_1111f.
         Y7_1112 y7_1112f. Y7_1113 y7_1113f. Y7_1114 y7_1114f.
         Y7_1115 y7_1115f. Y7_1116 y7_1116f. Y7_1119 y7_1119f.
         Y7_1120 y7_1120f. Y7_1121 y7_1121f. Y7_1122 y7_1122f.
         Y7_1125 y7_1125f. Y7_1126 y7_1126f. Y7_1127 y7_1127f.
         Y7_1128 y7_1128f. Y7_1129 y7_1129f. Y7_1130 y7_1130f.
         Y7_1131 y7_1131f. Y7_1132 y7_1132f. Y7_1133 y7_1133f.
         Y7_1134 y7_1134f. Y7_1135 y7_1135f. Y7_1136 y7_1136f.
         Y7_1137 y7_1137f. Y7_1138 y7_1138f. Y7_1140 y7_1140f.
         Y7_1141 y7_1141f. Y7_1142 y7_1142f. Y7_1143 y7_1143f.
         Y7_1144 y7_1144f. Y7_1145 y7_1145f. Y7_1146 y7_1146f.
         Y7_1147 y7_1147f. Y7_1148 y7_1148f. Y7_1149 y7_1149f.
         Y7_1150 y7_1150f. Y7_1151 y7_1151f. Y7_1152 y7_1152f.
         Y7_1153 y7_1153f. Y7_1157 y7_1157f. Y7_1158 y7_1158f.
         Y7_1159 y7_1159f. Y7_1160 y7_1160f. Y7_1161 y7_1161f.
         Y7_1162 y7_1162f. Y7_1163 y7_1163f. Y7_1164 y7_1164f.
         Y7_1165 y7_1165f. Y7_1166 y7_1166f. Y7_1167 y7_1167f.
         Y7_1168 y7_1168f. Y7_1169 y7_1169f. Y7_1173 y7_1173f.
         Y7_1174 y7_1174f. Y7_1175 y7_1175f. Y7_1177 y7_1177f.
         Y7_1182 y7_1182f. Y7_1183 y7_1183f. Y7_1184 y7_1184f.
         Y7_1185 y7_1185f. Y7_1186 y7_1186f. Y7_1187 y7_1187f.
         Y7_1188 y7_1188f. Y7_1189 y7_1189f. Y7_1190 y7_1190f.
         Y7_1191 y7_1191f. Y7_1192 y7_1192f. Y7_1193 y7_1193f.
         Y7_1194 y7_1194f. Y7_1195 y7_1195f. Y7_1197 y7_1197f.
         Y7_1198 y7_1198f. Y7_1199 y7_1199f. Y7_1200 y7_1200f.
         Y7_1201 y7_1201f. Y7_1202 y7_1202f. Y7_1203 y7_1203f.
         Y7_1204 y7_1204f. Y7_1205 y7_1205f. Y7_1206 y7_1206f.
         Y7_1207 y7_1207f. Y7_1208 y7_1208f. Y7_1209 y7_1209f.
         Y7_1210 y7_1210f. Y7_1211 y7_1211f. Y7_1212 y7_1212f.
         Y7_1213 y7_1213f. Y7_1214 y7_1214f. Y7_1215 y7_1215f.
         Y7_1216 y7_1216f. Y7_1217 y7_1217f. Y7_1218 y7_1218f.
         Y7_1219 y7_1219f. Y7_1220 y7_1220f. Y7_1221 y7_1221f.
         Y7_1222 y7_1222f. Y7_1223 y7_1223f. Y7_1224 y7_1224f.
         Y7_1225 y7_1225f. Y7_1226 y7_1226f. Y7_1227 y7_1227f.
         Y7_1228 y7_1228f. Y7_1229 y7_1229f. Y7_1230 y7_1230f.
         Y7_1231 y7_1231f. Y7_1232 y7_1232f. Y7_1233 y7_1233f.
         Y7_1234 y7_1234f. Y7_1235 y7_1235f. Y7_1236 y7_1236f.
         Y7_1237 y7_1237f. Y7_1238 y7_1238f. Y7_1239 y7_1239f.
         Y7_1240 y7_1240f. Y7_1241 y7_1241f. Y7_1242 y7_1242f.
         Y7_1243 y7_1243f. Y7_1244 y7_1244f. Y7_1245 y7_1245f.
         Y7_1246 y7_1246f. Y7_1247 y7_1247f. Y7_1248 y7_1248f.
         Y7_1249 y7_1249f. Y7_1250 y7_1250f. Y7_1251 y7_1251f.
         Y7_1252 y7_1252f. Y7_1253 y7_1253f. Y7_1254 y7_1254f.
         Y7_1255 y7_1255f. Y7_1256 y7_1256f. Y7_1262 y7_1262f.
         Y7_1263 y7_1263f. Y7_1264 y7_1264f. Y7_1265 y7_1265f.
         Y7_1266 y7_1266f. Y7_1267 y7_1267f. Y7_1268 y7_1268f.
         Y7_1269 y7_1269f. Y7_1271 y7_1271f. Y7_1274 y7_1274f.
         Y7_1275 y7_1275f. Y7_1276 y7_1276f. Y7_1277 y7_1277f.
         Y7_1279 y7_1279f. Y7_1280 y7_1280f. Y7_1281 y7_1281f.
         Y7_1282 y7_1282f. Y7_1284 y7_1284f. Y7_1285 y7_1285f.
         Y7_1286 y7_1286f. Y7_1287 y7_1287f. Y7_1289 y7_1289f.
         Y7_1290 y7_1290f. Y7_1291 y7_1291f. Y7_1292 y7_1292f.
         Y7_1294 y7_1294f. Y7_1295 y7_1295f. Y7_1296 y7_1296f.
         Y7_1297 y7_1297f. Y7_1299 y7_1299f. Y7_1300 y7_1300f.
         Y7_1301 y7_1301f. Y7_1302 y7_1302f. Y7_1304 y7_1304f.
         Y7_1305 y7_1305f. Y7_1306 y7_1306f. Y7_1307 y7_1307f.
         Y7_1309 y7_1309f. Y7_1310 y7_1310f. Y7_1311 y7_1311f.
         Y7_1312 y7_1312f. Y7_1314 y7_1314f. Y7_1315 y7_1315f.
         Y7_1316 y7_1316f. Y7_1317 y7_1317f. Y7_1319 y7_1319f.
         Y7_1320 y7_1320f. Y7_1321 y7_1321f. Y7_1322 y7_1322f.
         Y7_1324 y7_1324f. Y7_1325 y7_1325f. Y7_1326 y7_1326f.
         Y7_1327 y7_1327f. Y7_1329 y7_1329f. Y7_1330 y7_1330f.
         Y7_1331 y7_1331f. Y7_1332 y7_1332f. Y7_1334 y7_1334f.
         Y7_1335 y7_1335f. Y7_1336 y7_1336f. Y7_1337 y7_1337f.
         Y7_1339 y7_1339f. Y7_1340 y7_1340f. Y7_1341 y7_1341f.
         Y7_1342 y7_1342f. Y7_1344 y7_1344f. Y7_1345 y7_1345f.
         Y7_1346 y7_1346f. Y7_1347 y7_1347f. Y7_1349 y7_1349f.
         Y7_1350 y7_1350f. Y7_1351 y7_1351f. Y7_1352 y7_1352f.
         Y7_1354 y7_1354f. Y7_1355 y7_1355f. Y7_1356 y7_1356f.
         Y7_1357 y7_1357f. Y7_1358 y7_1358f. Y7_1359 y7_1359f.
         Y7_1360 y7_1360f. Y7_1361 y7_1361f. Y7_1362 y7_1362f.
         Y7_1363 y7_1363f. Y7_1364 y7_1364f. Y7_1365 y7_1365f.
         Y7_1366 y7_1366f. Y7_1367 y7_1367f. Y7_1368 y7_1368f.
         Y7_1369 y7_1369f. Y7_1370 y7_1370f. Y7_1371 y7_1371f.
         Y7_1372 y7_1372f. Y7_1373 y7_1373f. Y7_1374 y7_1374f.
         Y7_1375 y7_1375f. Y7_1376 y7_1376f. Y7_1377 y7_1377f.
         Y7_1383 y7_1383f. Y7_1385 y7_1385f. Y7_1387 y7_1387f.
         Y7_1390 y7_1390f. Y7_1391 y7_1391f. Y7_1392 y7_1392f.
         Y7_1393 y7_1393f. Y7_1394 y7_1394f. Y7_1395 y7_1395f.
         Y7_1396 y7_1396f. Y7_1397 y7_1397f. Y7_1399 y7_1399f.
         Y7_1400 y7_1400f. Y7_1401 y7_1401f. Y7_1402 y7_1402f.
         Y7_1403 y7_1403f. Y7_1404 y7_1404f. Y7_1405 y7_1405f.
         Y7_1406 y7_1406f. Y7_1408 y7_1408f. Y7_1409 y7_1409f.
         Y7_1410 y7_1410f. Y7_1411 y7_1411f. Y7_1413 y7_1413f.
         Y7_1414 y7_1414f. Y7_1416 y7_1416f. Y7_1418 y7_1418f.
         Y7_1419 y7_1419f. Y7_1420 y7_1420f. Y7_1421 y7_1421f.
         Y7_1423 y7_1423f. Y7_1424 y7_1424f. Y7_1425 y7_1425f.
         Y7_1426 y7_1426f. Y7_1427 y7_1427f. Y7_1428 y7_1428f.
         Y7_1429 y7_1429f. Y7_1430 y7_1430f. Y7_1431 y7_1431f.
         Y7_1432 y7_1432f. Y7_1433 y7_1433f. Y7_1434 y7_1434f.
         Y7_1437 y7_1437f. Y7_1451 y7_1451f. Y7_1452 y7_1452f.
         Y7_1453 y7_1453f. Y7_1454 y7_1454f. Y7_1455 y7_1455f.
         Y7_1456 y7_1456f. Y7_1457 y7_1457f. Y7_1458 y7_1458f.
         Y7_1459 y7_1459f. Y7_1460 y7_1460f. Y7_1461 y7_1461f.
         Y7_1466 y7_1466f. Y7_1467 y7_1467f. Y7_1468 y7_1468f.
         Y7_1469 y7_1469f. Y7_1470 y7_1470f. Y7_1471 y7_1471f.
         Y7_1472 y7_1472f. Y7_1473 y7_1473f. Y7_1474 y7_1474f.
         Y7_1475 y7_1475f. Y7_1476 y7_1476f. Y7_1477 y7_1477f.
         Y7_1478 y7_1478f. Y7_1479 y7_1479f. Y7_1480 y7_1480f.
         Y7_1481 y7_1481f. Y7_1482 y7_1482f. Y7_1483 y7_1483f.
         Y7_1484 y7_1484f. Y7_1485 y7_1485f. Y7_1486 y7_1486f.
         Y7_1487 y7_1487f. Y7_1730 y7_1730f.  ;

RUN ;
