:: Mute the output
@echo off

:: Open the directory folder
cd C:\dev\lazy_foo\hello_world\build

:: Clear the output path
del * /S /Q
del ..\bin\* /S /Q
