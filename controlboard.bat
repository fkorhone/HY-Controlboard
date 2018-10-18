::Tool directories
set COREUTILS=..\gnu_coreutils
set TOOLPATH=..\gEDA

:Basic directory information
set PROJECTDIR=%CD%
set FILENAME=%~n0

:: Add tools to PATH
cd %PROJECTDIR%\%TOOLPATH%
set TOOLPATH=%CD%

cd %TOOLPATH%\bin
set PATH=%CD%

cd %PROJECTDIR%\%COREUTILS%\bin
set PATH=%PATH%;%CD%

cd %TOOLPATH%\share\guile\1.8
set GUILE_LOAD_PATH=%CD%

cd %TOOLPATH%\share\gEDA
set GEDADATA=%CD%

cd %PROJECTDIR%
gsch2pcb --skip-m4 --elements-dir %PROJECTDIR%\packages %filename%.sch 

pause