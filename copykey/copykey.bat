@echo off

rem CUSTOMIZE THESE:
set KEY_PATH=Files\
set KEY_NAME=keytoolkeystore.store
set DESTINATION_PATH=Build\Android

IF NOT EXIST %DESTINATION_PATH% (
  mkdir %DESTINATION_PATH%
)

IF EXIST %DESTINATION_PATH%\*.store (
  choice /c YN /m "Keystore exists at %DESTINATION_PATH%\%KEY_NAME%. Replace?"
  IF ERRORLEVEL 2 (
    goto EXIT
  )
)

echo Copying %KEY_PATH%%KEY_NAME% to %DESTINATION_PATH%\%KEY_NAME%
copy %KEY_PATH%%KEY_NAME% %DESTINATION_PATH%\%KEY_NAME%

:EXIT
PAUSE