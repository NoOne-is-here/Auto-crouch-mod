#!/bin/bash

echo "Downloading Gradle Wrapper..."
echo

mkdir -p gradle/wrapper

echo "Downloading gradle-wrapper.jar..."
curl -L -o gradle/wrapper/gradle-wrapper.jar https://raw.githubusercontent.com/gradle/gradle/master/gradle/wrapper/gradle-wrapper.jar

if [ -f "gradle/wrapper/gradle-wrapper.jar" ]; then
    echo
    echo "SUCCESS! Gradle wrapper downloaded."
    echo
    echo "You can now run: ./gradlew build"
    echo
else
    echo
    echo "FAILED! Could not download gradle-wrapper.jar"
    echo
    echo "Please try installing Gradle globally instead:"
    echo "  macOS: brew install gradle"
    echo "  Linux: sudo apt install gradle"
    echo
    echo "Or use: gradle build"
    echo "  if you already have Gradle installed"
    echo
fi
