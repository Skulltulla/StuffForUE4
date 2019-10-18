@echo off

IF NOT EXIST *.uproject (
  echo ERROR - build_ddc.bat must be placed in the same directory as the .uproject
  echo Quitting...
  goto EXIT
)

echo Build Derived Data Cache (DDC):
echo.
set ENGINE="D:\ProgramFiles\UE_4.21\Engine\Binaries\Win64\UE4Editor.exe"
set PROJECT=ExampleTitle

echo Engine: %ENGINE%
echo Project: %PROJECT%
echo.
choice /c YN /m "continue?"

IF ERRORLEVEL 2 (
  echo Quitting...
  goto EXIT
) ELSE (
  %ENGINE% %cd%\%PROJECT% -run=DerivedDataCache -fill -DDC=CreatePak
)

:EXIT
PAUSE