:: Mute the output
@echo off

:: Open the directory folder
cd build

:: Setup the compiler
call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars32.bat"

:: Compile the program
cl ../src/main.c -o ../bin/main.exe
