@echo off
if /i %1 == -i (echo Installing LPF package %2 to %3.) else (if /i %1 == -c (echo Creating .LPF package into %3 from %2.) else (goto error))
echo --
if /i %1 == -i (unzip.exe %2.lpf -d %3) else (zip.exe -j -r %3.lpf %2)
if /i %1 == -i (if /i %4 == -d (del /q %2))
echo --
echo Operation successfully ended.
exit /b
@echo on
:error
echo Error: Unspecified attribute. Try again using -i or -c.
set /a errorlevel=%errorlevel% + 1
exit /b
@echo on
