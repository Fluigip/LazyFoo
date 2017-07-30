:: Mute the output
@echo off

:: Clear the build path
rd /S/Q build 2>nul

:: Clear the output path
rd /S/Q bin 2>nul
