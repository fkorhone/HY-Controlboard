:Basic directory information
set PROJECTDIR=%CD%
set FILENAME=%~n0

set TOOLPATH=..\gEDA\bin\
set COREUTILS=..\gnu_coreutils

:: Add tools to PATH
cd %PROJECTDIR%\%TOOLPATH%
set TOOLPATH=%CD%
set PATH=%CD%;%PATH%
cd %PROJECTDIR%\%COREUTILS%\bin
set PATH=%PATH%;%CD%

cd %TOOLPATH%
cd ..\share\guile\1.8
set GUILE_LOAD_PATH=%CD%
cd %TOOLPATH%
cd ..\share\gEDA
set GEDADATA=%CD%
cd %PROJECTDIR%

%filename%.exe