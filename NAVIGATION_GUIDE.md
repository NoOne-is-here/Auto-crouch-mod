# How to Navigate to the Mod Folder in Command Prompt

## Easy Method (Recommended for Windows)

### Option 1: Right-Click Method (Easiest!)

1. **Extract the mod folder** to somewhere easy like your Desktop or Downloads
2. **Open the folder** in File Explorer (the `minecraft-mod` folder)
3. **Right-click in the empty space** inside the folder (not on a file)
4. **Select "Open in Terminal"** or "Open PowerShell window here"
   - On Windows 11: Select "Open in Terminal"
   - On Windows 10: Hold `Shift` while right-clicking, then select "Open PowerShell window here"
5. **You're done!** You're now in the correct folder
6. Run the build command: `gradlew build`

### Option 2: Address Bar Method (Also Easy!)

1. **Open the mod folder** in File Explorer
2. **Click on the address bar** at the top (where it shows the folder path)
3. **Type `cmd`** and press Enter
4. **Command Prompt opens** in that folder automatically!
5. Run the build command: `gradlew build`

### Option 3: Drag and Drop Method

1. **Open Command Prompt:**
   - Press `Windows Key + R`
   - Type `cmd`
   - Press Enter

2. **Type `cd` followed by a space** (don't press Enter yet)
   ```
   cd 
   ```

3. **Drag the `minecraft-mod` folder** from File Explorer into the Command Prompt window
   - The full path will appear automatically!

4. **Press Enter**

5. Run the build command: `gradlew build`

## Manual Navigation Method

If you want to learn the traditional way:

### Step 1: Open Command Prompt
- Press `Windows Key + R`
- Type `cmd`
- Press Enter

### Step 2: Find Your Current Location
```cmd
cd
```
This shows where you are (probably `C:\Users\YourName`)

### Step 3: Navigate to Your Folder

**Example 1: Folder is on Desktop**
```cmd
cd Desktop\minecraft-mod
```

**Example 2: Folder is in Downloads**
```cmd
cd Downloads\minecraft-mod
```

**Example 3: Folder is in a custom location**
```cmd
cd C:\Users\YourName\Desktop\minecraft-mod
```

**Example 4: Folder is on D: drive**
```cmd
D:
cd minecraft-mod
```

### Step 4: Verify You're in the Right Place
```cmd
dir
```
This lists all files. You should see:
- `gradlew.bat`
- `build.gradle`
- `src` folder

If you see these, you're in the right place! ✅

## Common Commands

| Command | What it does |
|---------|-------------|
| `cd FolderName` | Go into a folder |
| `cd ..` | Go back one folder |
| `cd` | Show current location |
| `dir` | List all files and folders |
| `D:` | Switch to D: drive |
| `C:` | Switch to C: drive |

## Examples

### If your folder is here: `C:\Users\John\Desktop\minecraft-mod`

```cmd
cd C:\Users\John\Desktop\minecraft-mod
```

### If your folder is here: `C:\MyMods\minecraft-mod`

```cmd
cd C:\MyMods\minecraft-mod
```

### If your folder is here: `D:\Games\Minecraft\Mods\minecraft-mod`

```cmd
D:
cd Games\Minecraft\Mods\minecraft-mod
```

## Troubleshooting

### "The system cannot find the path specified"

**Problem:** The folder path is wrong or doesn't exist

**Solution:**
1. Double-check the folder location in File Explorer
2. Make sure you spelled everything correctly
3. Use the "Address Bar Method" above instead

### "Access is denied"

**Problem:** You don't have permission to access that folder

**Solution:**
1. Extract the mod to your Desktop or Documents folder instead
2. Don't put it in system folders like `C:\Windows`

### Spaces in folder names

If your folder path has spaces, use quotes:
```cmd
cd "C:\My Mods\minecraft-mod"
```

## Quick Tips

✅ **DO:**
- Extract the mod to an easy location (Desktop, Documents, Downloads)
- Use the right-click method (easiest!)
- Check the path in File Explorer first

❌ **DON'T:**
- Put the mod in Program Files or Windows folders
- Use complicated folder structures
- Forget to extract the ZIP file first!

## Visual Guide

```
1. You are here:
   C:\Users\YourName>

2. Type this:
   C:\Users\YourName> cd Desktop\minecraft-mod

3. Press Enter, now you're here:
   C:\Users\YourName\Desktop\minecraft-mod>

4. Now run:
   C:\Users\YourName\Desktop\minecraft-mod> gradlew build
```

---

**Still stuck?** Use the **Address Bar Method** - it's the easiest and works every time! Just click the address bar in File Explorer, type `cmd`, and press Enter.
