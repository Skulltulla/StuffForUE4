rem This command was used to upload a build for an Oculus Rift project to the Oculus Dashboard
rem
rem Add ovr-platform-util.exe to the PATH environment variable

set VERSION=1.0
set APP_ID=1234
set APP_SECRET=1234
set CHANNEL=alpha
set NOTES="no notes"
set BUILD_DIR="C:\Users\User\Desktop\package\MyApp"
set LAUNCH_EXE="C:\Users\User\Desktop\package\MyApp\WindowsNoEditor\MyApp.exe"

ovr-platform-util.exe upload-rift-build -a %APP_ID% -s %APP_SECRET% -d %BUILD_DIR% -l %LAUNCH_EXE% -c %CHANNEL% -n %NOTES%  -v %VERSION%

PAUSE
