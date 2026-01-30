# How to Build the Edge Crouch Mod

This guide will walk you through building the mod from source code.

## Prerequisites

Before building, make sure you have:
- **Java Development Kit (JDK) 21** or higher installed
  - Download from: https://adoptium.net/ (recommended)
  - Or: https://www.oracle.com/java/technologies/downloads/

## Step-by-Step Build Instructions

### Windows

1. **Extract the mod folder**
   - Unzip `edge-crouch-mod.zip` to a location like `C:\Users\YourName\Desktop\minecraft-mod\`

2. **Open Command Prompt**
   - Press `Windows Key + R`
   - Type `cmd` and press Enter
   - Or search for "Command Prompt" in Start Menu

3. **Navigate to the mod folder**
   ```cmd
   cd C:\Users\YourName\Desktop\minecraft-mod
   ```
   (Replace the path with wherever you extracted the mod)

4. **Run the build command**
   ```cmd
   gradlew.bat build
   ```
   OR simply:
   ```cmd
   gradlew build
   ```

5. **Wait for the build to complete**
   - First time will take 5-10 minutes (downloads dependencies)
   - You'll see progress messages
   - When done, you'll see "BUILD SUCCESSFUL"

6. **Find your mod file**
   - Go to `minecraft-mod\build\libs\`
   - The file will be named something like `edgecrouch-1.0.0.jar`

### macOS / Linux

1. **Extract the mod folder**
   - Unzip `edge-crouch-mod.zip` to a location like `~/Desktop/minecraft-mod/`

2. **Open Terminal**
   - Press `Command + Space` (macOS) or `Ctrl + Alt + T` (Linux)
   - Type "Terminal" and press Enter (macOS)

3. **Navigate to the mod folder**
   ```bash
   cd ~/Desktop/minecraft-mod
   ```
   (Replace the path with wherever you extracted the mod)

4. **Make the gradlew script executable** (first time only)
   ```bash
   chmod +x gradlew
   ```

5. **Run the build command**
   ```bash
   ./gradlew build
   ```

6. **Wait for the build to complete**
   - First time will take 5-10 minutes (downloads dependencies)
   - You'll see progress messages
   - When done, you'll see "BUILD SUCCESSFUL"

7. **Find your mod file**
   - Go to `minecraft-mod/build/libs/`
   - The file will be named something like `edgecrouch-1.0.0.jar`

## Troubleshooting

### "Java not found" or "JAVA_HOME not set"

**Solution:** Install Java JDK 21
- Download from https://adoptium.net/
- Install it
- Restart your terminal/command prompt
- Try building again

### "Permission denied" (macOS/Linux)

**Solution:** Run this command first:
```bash
chmod +x gradlew
```

### "gradlew is not recognized" (Windows)

**Solution:** Make sure you're in the correct folder
```cmd
dir
```
You should see `gradlew.bat` in the list. If not, navigate to the correct folder.

### Build fails with errors

**Solution 1:** Clean and rebuild
```bash
./gradlew clean build
```

**Solution 2:** Delete the `.gradle` folder and try again
- Delete the `.gradle` folder in your mod directory
- Run the build command again

### Internet connection issues

The first build downloads dependencies from the internet. Make sure you have:
- Active internet connection
- No firewall blocking Gradle
- No proxy issues

## What Happens During Build?

1. **Gradle downloads** (first time only)
   - The Gradle build tool is downloaded

2. **Dependencies download** (first time only)
   - Minecraft libraries
   - Fabric libraries
   - Other required tools

3. **Code compilation**
   - Your Java code is compiled
   - Resources are processed

4. **JAR creation**
   - Everything is packaged into a `.jar` file
   - Located in `build/libs/`

## Quick Reference

| Operating System | Command |
|-----------------|---------|
| Windows | `gradlew build` or `gradlew.bat build` |
| macOS/Linux | `./gradlew build` |

## After Building

Once you have the `.jar` file:

1. **Locate your Minecraft mods folder:**
   - Windows: `C:\Users\YourName\AppData\Roaming\.minecraft\mods\`
   - macOS: `~/Library/Application Support/minecraft/mods/`
   - Linux: `~/.minecraft/mods/`

2. **Copy the JAR file** from `build/libs/` to the `mods` folder

3. **Make sure you also have:**
   - Fabric Loader installed
   - Fabric API mod in the mods folder

4. **Launch Minecraft** with the Fabric profile

## Additional Commands

### Clean build files
```bash
./gradlew clean
```

### Generate IDE files (IntelliJ IDEA)
```bash
./gradlew idea
```

### Generate IDE files (Eclipse)
```bash
./gradlew eclipse
```

### View all available tasks
```bash
./gradlew tasks
```

## Need More Help?

- Check that Java 21+ is installed: `java -version`
- Make sure you're in the right directory: `pwd` (macOS/Linux) or `cd` (Windows)
- Read the error messages carefully - they often tell you what's wrong
- Try running with `--stacktrace` for more details: `./gradlew build --stacktrace`

---

**Still having issues?** The most common problem is not having Java 21 installed. Double-check your Java version!
