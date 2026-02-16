# Changelog

## Release Version 1

### 1.0.1

- I forgot lmao

### 1.0.2

- Fixed version string data storage
- Fixed name inconsistencies (Day Adjustment - Time Adjustment)

## Release Version 2

### 2.0.0

- Complete overhaul of config menu
- Removed old time calculations
- Working manual time adjustment
- Working shorter days
- Working longer days
- Basically full functionality I aimed for

### 2.0.1

- Removed 1/10 preset
- Added 40 minutes preset
- Added 12 hours preset
- Fixed math for leap ticks for faster day cycles
- No branching for scheduling tick in tick
- Fixed math for leap ticks for slower day cycles

### 2.0.2

- Added config namespace
- Added easy command to call upon timeadjust config (/function config: timeadjust)
- Changed pack.png

### 2.0.3

- Fixed Uninstall message
- Actually changed pack.png on the repo (not just the upload to Modrinth/Github Release)
- Made sure that click events work in 1.21.5+
- Added a command that allows players to see how long the daylight cycle lasts
- Added the option for admins to stop players from seeing the day length
- Updated for versions <1.21

### 2.0.4

- Fixed no auto-load on version <1.21
- Fixed no config: timeadjust on version <1.21

### 2.0.5

- Fixed background of advancement screen (I did a stupid back in 2.0.3)
- Separated update and install messages
- Allow players to sleep through the night (not tested for multiplayer yet)

### 2.0.6

- Changed pack format to version 48 through 61
- Fixed tellraw

### 2.1.0

- Fixed installation not working
- Removed ability for players to get day length with command for performance reasons
- Set daylight cycle to work based on previous datapack setting when uninstalling
- Moved datapack daylight cycle setting to use TimeAdjust scoreboard objective instead of its own
- Moved all sleep detection files to their own folder
- Renamed all sleep detection files for better understanding
- Added function uninstall: timeadjust for easier uninstallation
- Fixed uninstallation message saying `Day Adjustment` instead of `Time Adjustment`
- Changed Twitch name to match updated name
- Removed update capabilities
- Added backup capabilities for updating
- Removed version information being saved to storage

### 2.1.1

- Fixed sleeping not skipping night
- Fixed installed datapacks menu in advancements

### 2.1.2

- Fixed sleeping resetting day count

### 2.2.0

- Fixed some formatting mismatch
- Improved backup loading
- Updated pack format to be the last supported version (23w14a)
- Fixed faster cycle not working (or the datapack not working at all)
- Replaced `translate` keys with `text` keys
