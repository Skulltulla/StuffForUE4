rem This command was used to upload a build for an Oculus Go project to the Oculus Dashboard
rem
rem Add ovr-platform-util.exe to the PATH environment variable

set APP_ID=1234
set APP_SECRET=1234
set CHANNEL=alpha
set NOTES="change notes"
set APK=ANDROID_ASTC\filename.apk
set OBB=ANDROID_ASTC\filename.obb

ovr-platform-util.exe upload-mobile-build -a %APP_ID% -s %APP_SECRET% --apk %APK% -c %CHANNEL% -n %NOTES% --obb %OBB%

PAUSE