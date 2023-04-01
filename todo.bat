@echo off
title To-Do-Liste
echo **************************************
echo *            To-Do-Liste             *
echo **************************************

:start
echo.
set /p task=Bitte Aufgabe eingeben (oder 'exit' zum Beenden): 
if "%task%"=="exit" goto end

echo - %task% >> todo.txt
echo Aufgabe hinzugefügt!
goto start

:end
echo.
echo To-Do-Liste:
echo --------------------------------------
type todo.txt
echo --------------------------------------
pause
