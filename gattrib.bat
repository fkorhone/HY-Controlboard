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

%filename%.exe