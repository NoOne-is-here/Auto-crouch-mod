# IMPORTANT: First-Time Setup Required

The Gradle wrapper JAR file is missing. This is a small file that Gradle needs to run.

## Automatic Setup (Recommended)

### Windows:
1. Open Command Prompt in this folder
2. Run this command:
   ```cmd
   setup-gradle.bat
   ```

### macOS/Linux:
1. Open Terminal in this folder
2. Run these commands:
   ```bash
   chmod +x setup-gradle.sh
   ./setup-gradle.sh
   ```

This will download the gradle-wrapper.jar file (about 60KB).

## Manual Setup (If automatic doesn't work)

If you have Gradle already installed on your system:

```bash
gradle wrapper
```

This will generate all the wrapper files you need.

## Alternative: Use Your System's Gradle

If you have Gradle installed globally, you can skip the wrapper and just use:

```bash
gradle build
```

Instead of:
```bash
./gradlew build
```

## Installing Gradle Globally

If you don't have Gradle:

### Windows (using Chocolatey):
```cmd
choco install gradle
```

### Windows (using Scoop):
```cmd
scoop install gradle
```

### macOS (using Homebrew):
```bash
brew install gradle
```

### Linux (Ubuntu/Debian):
```bash
sudo apt install gradle
```

### Manual Installation:
Download from: https://gradle.org/releases/
- Download Gradle 8.8 or higher
- Extract it
- Add the `bin` folder to your PATH

## After Setup

Once you have Gradle (either wrapper or global), run:
```bash
./gradlew build    # Using wrapper
# OR
gradle build       # Using global Gradle
```

The compiled mod will be in: `build/libs/edgecrouch-1.0.0.jar`

---

**Why is this needed?**
The gradle wrapper JAR is a binary file that can't be included in text-based archives. It's normally downloaded automatically, but you need to run the setup first.
