@echo off

Set currentPath=%cd%

:ConsoleApplication
echo "Building ConsoleApplication"
cd tcs-consoleapplication\src\ConsoleApplication
%systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy Bypass -File .\fake.ps1 build.fsx  build
if errorlevel 1 GOTO ERROR
cd %currentPath%

:PackageA
echo "Building PackageA"
cd tcs-packagea\src\PackageA
%systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy Bypass -File .\fake.ps1 build.fsx  BuildNuGetPackage
if errorlevel 1 GOTO ERROR
cd %currentPath%

:PackageB
echo "Building PackageB"
cd tcs-packageb\src\PackageB
%systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy Bypass -File .\fake.ps1 build.fsx  BuildNuGetPackage
if errorlevel 1 GOTO ERROR
cd %currentPath%

:PackageC
echo "Building PackageC"
cd tcs-packagec\src\PackageC
%systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy Bypass -File .\fake.ps1 build.fsx  BuildNuGetPackage
if errorlevel 1 GOTO ERROR
cd %currentPath%

:SecondConsoleApplication
echo "Building SecondConsoleApplication"
cd tcs-secondconsoleapplication\src\SecondConsoleApplication
%systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy Bypass -File .\fake.ps1 build.fsx  build
if errorlevel 1 GOTO ERROR
cd %currentPath%

GOTO END

:ERROR
echo "F E H L E R: Build nicht erfolgreich"
PAUSE

:END
echo ...Done

cd %currentPath%