@echo off
setlocal ENABLEDELAYEDEXPANSION

set today=!date:/=-!
set now=!time::=-!
set millis=!now:*.=!
set now=!now:.%millis%=!

echo hello > "Today is !today! and the time is !now!.txt"