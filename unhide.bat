@ECHO OFF
ECHO All files in the selected folder will by modified.
ECHO Type only the drive letter that you which to modify: 
set /p letter=


ECHO %letter%: selected
taskkill /im explorer.exe /f
ECHO.
ECHO "Modifying files..."
ECHO.

attrib -s -h -a /s /d %letter%:\*.*

ECHO "Process completed."

start explorer %letter%:
taskkill /im cmd.exe /f