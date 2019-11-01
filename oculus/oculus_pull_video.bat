@echo off

echo Pulls a video from "This PC/Quest/Internal Shared Storage/Oculus/VideoShots"
echo using the adb command because copying from windows will result in the video 
echo saying that it is invalid/incompatible.

set VideoPath=/storage/emulated/0/Oculus/VideoShots

:LOOP
echo.

rem Clear the variable or else it won't terminate
set VideoFilename=

set /p VideoFilename="Enter video filename (e.g. input.mp4) or Enter to quit: "
IF [%VideoFilename%] == [] (
	goto EXIT
)
set /p OutputFilename="Output filename (e.g. output.mp4): "

echo Pulling %VideoFilename% to %cd%\%OutputFilename%...
adb pull %VideoPath%/%VideoFilename% %OutputFilename%

goto LOOP
:EXIT
PAUSE