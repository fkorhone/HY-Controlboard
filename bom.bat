set SCHEMATICS=controlboard_1.sch controlboard_2.sch controlboard_3.sch controlboard_4.sch controlboard_5.sch controlboard_6.sch
:Basic directory information
set PROJECTDIR=%CD%
set FILENAME=%~n0
set TOOLPATH=..\gEDA\bin\
:: Add tools to PATH
cd %TOOLPATH%
set TOOLPATH=%CD%
set PATH=%CD%
cd ..\share\guile\1.8
set GUILE_LOAD_PATH=%CD%
cd %TOOLPATH%
cd ..\share\gEDA
set GEDADATA=%CD%
cd %PROJECTDIR%


del components\*#
del components\*~
del components\*.bak
del components\*.log
del *.bak
del *#
del *~
del *.log
del osat.bom  
del kokoaminen.bom

gnetlist.exe -g bom -o bom/bom.csv %SCHEMATICS% 
gnetlist.exe -g bom2 -o bom/bom2.csv %SCHEMATICS%

pause
