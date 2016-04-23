@ECHO OFF
REM Use your folder architecture as you would like it, and use Windows junctions to sync your files to your <s>butt</s> cloud storage
REM Usage: sync-folder.bat <sync folder> <folder to sync>
REM Example: 
REM sync-folder.bat "C:\Dropbox" "D:\Documents\GitHub"
REM will run the following link
REM mklink /j C:\Dropbox\GitHub D:\Documents\GitHub

IF "%~1"=="" GOTO USAGE
IF "%~2"=="" GOTO USAGE

FOR %%f IN (%2) DO SET "FOLDERNAME=%%~nxf"
SET "TARGETNAME=%~1\%FOLDERNAME%"
ECHO Will create a junction of folder: "%~2" into "%TARGETNAME%" 
REM mklink /J "%TARGETNAME%" "%~2"
GOTO END

:USAGE
ECHO Usage: sync-folder.bat ^<sync folder^> ^<folder to sync^>
:END