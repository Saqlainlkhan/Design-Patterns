@echo off
echo Building Document Editor...

REM Create bin directory if it doesn't exist
if not exist "bin" mkdir bin

REM Compile all Java files
javac -d bin -cp src\main\java src\main\java\com\documenteditor\*.java src\main\java\com\documenteditor\core\*.java src\main\java\com\documenteditor\elements\*.java src\main\java\com\documenteditor\factories\*.java src\main\java\com\documenteditor\visitors\*.java src\main\java\com\documenteditor\commands\*.java src\main\java\com\documenteditor\strategies\*.java src\main\java\com\documenteditor\adapters\*.java src\main\java\com\documenteditor\decorators\*.java src\main\java\com\documenteditor\observers\*.java src\main\java\com\documenteditor\logging\*.java src\main\java\com\documenteditor\ui\*.java

if %errorlevel% equ 0 (
    echo Build successful!
    echo Run the application with: run.bat
) else (
    echo Build failed!
)

pause
