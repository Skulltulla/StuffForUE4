rem This command was used to upload a build for an Oculus Quest project to the Oculus Dashboard
rem
rem Add ovr-platform-util.exe to the PATH environment variable
rem
rem Release Channels: store, rc, beta, alpha, <custom>

set APP_ID=1234
set APP_SECRET=1234
set CHANNEL=alpha
set NOTES="Initial Release 1.0"
set APK=ANDROID_ASTC\filename.apk
set OBB=ANDROID_ASTC\filename.obb

ovr-platform-util.exe upload-quest-build --app-id %APP_ID% --app-secret %APP_SECRET% --apk %APK%  --obb %OBB% -c %CHANNEL% -n %NOTES%

PAUSE
