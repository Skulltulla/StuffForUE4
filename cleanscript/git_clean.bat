@echo off
echo.
echo. This will perform the following command and should be run if there
echo. were changes to the source code of the project or plugins.
echo.
echo. $ git clean -dfx
echo.
echo. It requires Git to be installed and it must be configured so it can run from the command prompt.
echo.
echo. WARNING: It will delete *uncommitted new files*.
echo.
echo. WARNING: Before running this file, close Unreal and Visual Studio
echo. and if it asks to unlink old files, then it means that UE4Editor did
echo. not terminate and must be closed from the Task Manager.
echo.
echo. WARNING: Files are not moved to Recycle Bin and can't be recovered.
echo.

IF NOT EXIST *.uproject (
echo ERROR: git_clean.bat should be placed in the project's root directory.
echo.
PAUSE
echo.
exit
)

echo.
choice /c YN /m "Continue"
IF ERRORLEVEL 2 (
echo Nothing Deleted. Goodbye.
) ELSE (
choice /c YN /m "Are you really sure?"
IF ERRORLEVEL 2 (
echo Nothing Deleted. Goodbye.
) ELSE (
git clean -dfx
echo.
echo Finished...
)
)

PAUSE