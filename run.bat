@echo off
echo Starting Document Editor...

REM Check if bin directory exists
if not exist "bin" (
    echo Please build the project first using build.bat
    pause
    exit /b 1
)

REM Run the application
java -cp bin com.documenteditor.Main

pause
