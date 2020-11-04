@echo off & setlocal enabledelayedexpansion
type nul> %tmp%\log.txt
set log=%tmp%\log.txt
set list=list.txt
set cnt=0
set number=0
set folder=?
set /P folder=Enter the main directory you want to search in:
for /f "delims=" %%a in ('type list.txt') do (
set /A cnt +=1
set file!cnt!=%%a
)
cd %folder%
:LOOP
if %number%==%cnt% exit /b
set /A number +=1
dir /s !file%number%! || echo.!file%number%!>> %tmp%\log.txt
Goto :LOOP