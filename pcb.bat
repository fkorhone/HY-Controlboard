:Basic directory information
set PROJECTDIR=%CD%
set FILENAME=%~n0

set TOOLPATH=..\gEDA

:: Add tools to PATH
cd %TOOLPATH%
cd bin
set PATH=%CD%
cd %PROJECTDIR%

set HOMEPATH %PROJECTDIR%

%filename%.exe

pause