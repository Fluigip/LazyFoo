:: Mute the output
::@echo off

:: SDL Configuration
set SDL_INCLUDE=C:\dev\SDL2-2.0.5\include
set SDL_LIBRARY=C:\dev\SDL2-2.0.5\lib\x86

:: Build Configuration
set SRC=../src/main.c
set COMPILER=/I%SDL_INCLUDE% /O2
set LINKER=/link /libpath:%SDL_LIBRARY% sdl2.lib

:: Open the directory folder
cd build

:: Setup the compiler
call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars32.bat"

:: Compile the program
echo cl %COMPILER% %SRC% %LINKER%
cl %COMPILER% %SRC% %LINKER%
