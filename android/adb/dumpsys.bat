rem Print package system information, such as permissions
rem https://stackoverflow.com/questions/21091022/listing-permissions-of-android-application-via-adb

@echo off

set PACKAGE=com.YourCompany.AppTitle
set OUT=dumpsys.txt

adb shell dumpsys package %PACKAGE% > %OUT%

PAUSE