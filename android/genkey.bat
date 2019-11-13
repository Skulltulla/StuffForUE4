@echo off

set ALIAS=MyAlias
set KEY_FILENAME=Keystore.store
set DAYS_VALID=7280

echo GENERATE KEY:
echo alias: %ALIAS%
echo filename: %KEY_FILENAME%
echo days: %DAYS_VALID%

echo.
choice
IF ERRORLEVEL 2 (
  echo Quitting...
  goto EXIT
)
keytool -genkey -alias %ALIAS% -validity %DAYS_VALID% -keystore %KEY_FILENAME%

:EXIT
PAUSE