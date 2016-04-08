@echo off

rd "%USERPROFILE%\.cargo"
mklink /j "%USERPROFILE%\.cargo" "%~dp0cargo"
