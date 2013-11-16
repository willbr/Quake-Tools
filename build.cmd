@echo off
pushd %~dp0

del progs.dat

cd progs
fteqcc
popd & echo %ERRORLEVEL% & exit /b %ERRORLEVEL%
