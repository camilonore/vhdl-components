@echo off
setlocal enabledelayedexpansion

rem Set the source directory and destination directory
set "source_dir=C:\Users\caminore\Documents\Quartus Files\vhdl-components"
set "destination_dir=C:\Users\caminore\Documents\Quartus Files\library"

rem Create the destination directory if it doesn't exist
if not exist "%destination_dir%" mkdir "%destination_dir%"

rem Recursively create shortcuts to .vhd files in the destination directory
for /r "%source_dir%" %%i in (*.vhd) do (
    set "source_file=%%~nxi"
    set "destination_file=!source_file!"
    mklink "%destination_dir%\!destination_file!" "%%i"
)

rem Notify that the shortcut creation process has finished
echo All .vhd files have been linked to %destination_dir%
pause