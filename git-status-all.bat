@echo off

Set currentPath=%cd%

:ConsoleApplication
echo "Status of ConsoleApplication"
cd tcs-consoleapplication\src\ConsoleApplication
git status
if errorlevel 1 GOTO ERROR
echo.
cd %currentPath%

:PackageA
echo "Status of PackageA"
cd tcs-packagea\src\PackageA
git status
if errorlevel 1 GOTO ERROR
echo.
cd %currentPath%

:PackageB
echo "Status of PackageB"
cd tcs-packageb\src\PackageB
git status
if errorlevel 1 GOTO ERROR
echo.
cd %currentPath%

:PackageC
echo "Status of PackageC"
cd tcs-packagec\src\PackageC
git status
if errorlevel 1 GOTO ERROR
echo.
cd %currentPath%

:SecondConsoleApplication
echo "Status of SecondConsoleApplication"
cd tcs-secondconsoleapplication\src\SecondConsoleApplication
git status
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