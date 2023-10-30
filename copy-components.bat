@echo off
setlocal enabledelayedexpansion

rem Set the source directory and destination directory
set "source_dir=./"
set "destination_dir=../library"

rem Create the destination directory if it doesn't exist
if not exist "%destination_dir%" mkdir "%destination_dir%"

rem Recursively copy .vhd files to the destination directory
for /r "%source_dir%" %%i in (*.vhd) do (
    set "source_file=%%~nxi"
    set "destination_file=!source_file!"
    copy "%%i" "%destination_dir%\!destination_file!"
)

rem Notify that the copy process has finished

echo All .vhd files have been copied to %destination_dir%
pause