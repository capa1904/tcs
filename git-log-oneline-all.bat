@echo off

Set currentPath=%cd%

:ConsoleApplication
echo "ConsoleApplication"
cd tcs-consoleapplication\src\ConsoleApplication
git log -1 --oneline
if errorlevel 1 GOTO ERROR
echo.
cd %currentPath%

:PackageA
echo "PackageA"
cd tcs-packagea\src\PackageA
git log -1 --oneline
if errorlevel 1 GOTO ERROR
echo.
cd %currentPath%

:PackageB
echo "PackageB"
cd tcs-packageb\src\PackageB
git log -1 --oneline
if errorlevel 1 GOTO ERROR
echo.
cd %currentPath%

:PackageC
echo "PackageC"
cd tcs-packagec\src\PackageC
git log -1 --oneline
if errorlevel 1 GOTO ERROR
echo.
cd %currentPath%

:SecondConsoleApplication
echo "SecondConsoleApplication"
cd tcs-secondconsoleapplication\src\SecondConsoleApplication
git log -1 --oneline
if errorlevel 1 GOTO ERROR
echo.
cd %currentPath%

GOTO END

:ERROR
echo "F E H L E R: Build nicht erfolgreich"
PAUSE

:END
echo ...Done

cd %currentPath%