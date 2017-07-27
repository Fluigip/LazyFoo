:: Mute the output
::@echo off

:: SDL Configuration
set SDL_DIR=C:\dev\SDL2-2.0.5
set SDL_INCLUDE=%SDL_DIR%\include
set SDL_LIBRARY=%SDL_DIR%\lib\x86

:: Build Configuration
set SRC=../src/main.c
set COMPILER=/I%SDL_INCLUDE% /O2
set LINKER=/link /SUBSYSTEM:CONSOLE /libpath:%SDL_LIBRARY% SDL2.lib SDL2main.lib
set OUT=-o ../bin/main.exe

:: Open the directory folder
cd build

:: Setup the compiler
call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars32.bat"

:: Compile the program
echo cl %COMPILER% %SRC% %LINKER%
cl %COMPILER% %SRC% %OUT% %LINKER%

:: Copy SDL libs
copy %SDL_LIBRARY%\SDL2.dll ..\bin\SDL2.dll
