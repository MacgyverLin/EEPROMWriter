rem mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
rem  $Id: testtabs.bat 1.3 1998/02/25 12:27:04 toma Exp $
rem mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm
rem  Run TASM on all the table test files.   Those that have
rem  extended instuctions use the -x option.

rem tasm -48 -x -b test48.asm
tasm -65 -x -b test65.asm
tasm -51    -b test51.asm
rem tasm -85    -b test85.asm
tasm -80 -x -b testz80.asm
rem tasm -05 -x -b test05.asm
rem tasm -3210  -b test3210.asm
rem tasm -3225  -b test3225.asm
rem tasm -68 -x -b test68.asm
rem tasm -70    -b test70.asm
rem tasm -96 -x -b test96.asm

