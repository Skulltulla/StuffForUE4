rem This command was used to upload a build for an Oculus Go project to the Oculus Dashboard
rem Add ovr-platform-util.exe to the PATH environment variable
rem Replace: APP_ID, APP_SECRET, FILENAME.apk, FILENAME.obb
ovr-platform-util.exe upload-mobile-build -a APP_ID -s APP_SECRET --apk FILENAME.apk -c alpha -n "change log notes" --obb FILENAME.obb