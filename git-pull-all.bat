@echo off

Set currentPath=%cd%

:ConsoleApplication
echo "Pulling ConsoleApplication"
cd tcs-consoleapplication\src\ConsoleApplication
git pull
if errorlevel 1 GOTO ERROR
echo.
cd %currentPath%

:PackageA
echo "Pulling PackageA"
cd tcs-packagea\src\PackageA
git pull
if errorlevel 1 GOTO ERROR
echo.
cd %currentPath%

:PackageB
echo "Pulling PackageB"
cd tcs-packageb\src\PackageB
git pull
if errorlevel 1 GOTO ERROR
echo.
cd %currentPath%

:PackageC
echo "Pulling PackageC"
cd tcs-packagec\src\PackageC
git pull
if errorlevel 1 GOTO ERROR
echo.
cd %currentPath%

:SecondConsoleApplication
echo "Pulling SecondConsoleApplication"
cd tcs-secondconsoleapplication\src\SecondConsoleApplication
git pull
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