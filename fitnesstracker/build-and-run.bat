@echo off
echo ========================================
echo Fitness Tracker - Build & Run
echo ========================================

echo.
echo 1. Cleaning and compiling...
mvn clean compile

if %ERRORLEVEL% NEQ 0 (
    echo Compilation failed!
    pause
    exit /b 1
)

echo.
echo 2. Building WAR file...
mvn package -DskipTests

if %ERRORLEVEL% NEQ 0 (
    echo Build failed!
    pause
    exit /b 1
)

echo.
echo 3. Starting embedded Tomcat...
echo Application will be available at: http://localhost:8080/fitnesstracker
echo Press Ctrl+C to stop the server
echo.

mvn tomcat10:run

pause
