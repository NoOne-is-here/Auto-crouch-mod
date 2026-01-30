@echo off
echo Downloading Gradle Wrapper...
echo.

if not exist "gradle\wrapper" mkdir gradle\wrapper

echo Downloading gradle-wrapper.jar...
powershell -Command "& {Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/gradle/gradle/master/gradle/wrapper/gradle-wrapper.jar' -OutFile 'gradle/wrapper/gradle-wrapper.jar'}"

if exist "gradle\wrapper\gradle-wrapper.jar" (
    echo.
    echo SUCCESS! Gradle wrapper downloaded.
    echo.
    echo You can now run: gradlew build
    echo.
) else (
    echo.
    echo FAILED! Could not download gradle-wrapper.jar
    echo.
    echo Please try installing Gradle globally instead:
    echo   https://gradle.org/releases/
    echo.
    echo Or use: gradle build
    echo   if you already have Gradle installed
    echo.
)

pause
