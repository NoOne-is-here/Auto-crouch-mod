# Edge Crouch Mod for Minecraft 1.21.1-11

A client-side Fabric mod that automatically makes your player crouch when approaching the edge of a block. Perfect for preventing accidental falls while building or exploring!

**Note:** This mod is built for Minecraft **1.21.1-11** .

## 🎮 Features

- **Automatic Edge Detection**: Detects when you're near the edge of any block
- **Works with all block types**: Full blocks, slabs, stairs, and more
- **Smart Detection**: Only crouches when actually at risk of falling
- **Toggle On/Off**: Press **Left Alt** to enable/disable the mod
- **Visual Feedback**: Shows mod status in the action bar when toggled
- **Respects Manual Crouch**: Won't interfere if you're already holding crouch

## 🎯 How It Works

The mod continuously checks your position relative to nearby blocks. When it detects you're approaching an edge where you could fall:
1. It automatically activates crouch/sneak
2. You move slower and can't fall off edges
3. When you move away from the edge, crouch is automatically released

### Edge Detection Includes:
- Regular blocks (stone, dirt, wood, etc.)
- Half blocks (slabs - both top and bottom)
- Stairs (all orientations)
- Any block with a drop-off

## ⌨️ Controls

| Key | Action |
|-----|--------|
| **Left Alt** | Toggle Edge Crouch on/off |
| **Shift** | Manual crouch (mod won't interfere) |

When you toggle the mod, you'll see a message above your hotbar:
- `[Edge Crouch] enabled` - Mod is active
- `[Edge Crouch] disabled` - Mod is off

## 📋 Prerequisites

- **Java 21** or higher
- **Minecraft 1.21.1**
- **Fabric Loader** (0.16.0 or higher)
- **Fabric API** (0.105.0+1.21.1)

## 🔧 Installation

1. Install [Fabric Loader](https://fabricmc.net/use/) for Minecraft 1.21.1
2. Download [Fabric API](https://modrinth.com/mod/fabric-api) for 1.21.1
3. Download this mod
4. Place both Fabric API and Edge Crouch mod JARs in your `.minecraft/mods` folder
5. Launch Minecraft with the Fabric profile

## 🛠️ Building from Source

### Quick Start

**Windows:**
1. Extract the mod folder
2. Double-click `setup-gradle.bat` (downloads Gradle wrapper)
3. Double-click the mod folder in File Explorer
4. Click the address bar, type `cmd`, press Enter
5. Type: `gradlew build`

**macOS/Linux:**
1. Extract the mod folder
2. Open Terminal in the folder
3. Run: `chmod +x setup-gradle.sh && ./setup-gradle.sh`
4. Run: `./gradlew build`

The compiled mod JAR will be in `build/libs/edgecrouch-1.0.0.jar`

### Alternative: Use System Gradle

If you have Gradle installed globally, just run:
```bash
gradle build
```

See `SETUP_GRADLE.md` for detailed setup instructions.

## 📁 Project Structure

```
edgecrouch/
├── src/
│   └── main/
│       ├── java/
│       │   └── com/example/edgecrouch/
│       │       └── EdgeCrouchMod.java      # Main mod logic
│       └── resources/
│           ├── fabric.mod.json             # Mod metadata
│           └── assets/edgecrouch/
│               └── lang/
│                   └── en_us.json          # Keybinding translations
├── build.gradle                            # Build configuration
├── gradle.properties                       # Version properties
└── settings.gradle                         # Gradle settings
```

## 🎲 Technical Details

### Edge Detection Algorithm

The mod uses several techniques to detect edges:

1. **Position Checking**: Continuously monitors player position relative to blocks
2. **Direction Awareness**: Checks edges in the direction you're moving (or all directions if standing still)
3. **Height Validation**: Ensures there's actually a drop-off (not just a minor step)
4. **Special Block Handling**: Properly handles slabs, stairs, and other non-full blocks

### Client-Side Only

This is a **client-side mod**, meaning:
- ✅ Works in singleplayer
- ✅ Works on multiplayer servers (no server-side installation needed)
- ✅ Doesn't give unfair advantages (just prevents accidental falls)
- ✅ Can be used on vanilla servers

## 🔄 Compatibility

### Works With:
- ✅ **Sodium** (performance mod) - Fully compatible!
- ✅ **Lithium** (optimization)
- ✅ **Iris** (shaders)
- ✅ **ModMenu**
- ✅ Most client-side mods

### Version Info:
- Minecraft: **1.21.1** (stable, well-supported version)
- Fabric Loader: **0.16.5**
- Fabric API: **0.105.0+1.21.1**

## ⚠️ Known Limitations

- May occasionally activate on stairs if you're right at the edge
- Won't prevent falls if you're sprinting and jump off an edge
- Requires Fabric API (not a standalone mod)

## 🐛 Troubleshooting

**Mod doesn't load:**
- Make sure you have Fabric Loader installed
- Verify Fabric API is in your mods folder
- Check you're using Minecraft 1.21.1

**Keybind doesn't work:**
- Check if another mod is using Left Alt
- Rebind the key in Controls settings

**Auto-crouch is too sensitive/not sensitive enough:**
- Modify the `checkDistance` value in the code and rebuild

## 📝 License

This mod is provided as-is under the MIT License. Feel free to modify and distribute!

## 🤝 Contributing

Found a bug or want to add a feature? Feel free to:
- Report issues
- Submit pull requests
- Fork and modify for your own use

## 💡 Tips

- The mod is **enabled by default** when you load the game
- Great for building tall structures in survival mode
- Useful for exploring caves with lots of ledges
- Helps prevent accidental deaths while AFK on high platforms

## 📚 Resources

- [Fabric Wiki](https://fabricmc.net/wiki/)
- [Fabric API Documentation](https://fabricmc.net/wiki/documentation:start)
- [Minecraft Wiki](https://minecraft.wiki/)

---

**Enjoy safer building and exploring!** 🏗️
