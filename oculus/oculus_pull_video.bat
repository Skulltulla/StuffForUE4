@echo off

echo Pulls a video from /Oculus/VideoShots using the adb command because
echo copying from windows will result in the video saying that it is invalid/incompatible.
echo.
set /p VideoFilename="Enter video filename (e.g. input.mp4): "
set /p OutputFilename="Enter output filename (e.g. output.mp4): "

echo Pulling %VideoFilename% to %cd%\%OutputFilename%...
adb pull /storage/emulated/0/Oculus/VideoShots/%VideoFilename% %OutputFilename%

PAUSE