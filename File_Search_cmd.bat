Windows - find newer and older files in command lines
1) Find files from 09/15/2015
forfiles /p  C:\ /s /D +09/15/2015
 - Output including path
forfiles /p  C:\ /s /D +09/15/2015 /C "cmd /c echo @path"
 - Output append to a file:
forfiles /p  C:\ /s /D +09/15/2015 >>output.txt

Day format following /D
Day/Month/Year
Year-Month-Day

2) Find files created today
forfiles /p  C:\ /s /D +0

3) Find files older than 7 days
forfiles /p  C:\ /s /D -7

