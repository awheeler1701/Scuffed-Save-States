![Scuffed-Save-States-mod logo](Assets/Scuffed-Save-StatesLogo.jpg)
--
## Requirements
- [Lovely](https://github.com/ethangreen-dev/lovely-injector) injector -- Get it here: https://github.com/ethangreen-dev/lovely-injector/releases

## Installation

1. Install [Lovely](https://github.com/ethangreen-dev/lovely-injector) and follow the manual installation instructions.

### Windows

1. Go to your Balatro Mods dir `/Users/$USER/Library/Application Support/Balatro/Mods`.
2. Clone the Scuffed Save States repo `git clone https://github.com/awheeler1701/Scuffed-Save-States`.
3. Ensure that this new directory's name is 'Scuffed-Save-States' [^1]
4. Reload the game to activate the mod.

### Linux (Debian example)

1. Go to your Balatro Mods dir `/$HOME/.steam/debian-installation/steamapps/compatdata/2379780/pfx/drive_c/users/steamuser/AppData/Roaming/Balatro/Mods`.
2. Clone the Scuffed Save States repo `git clone https://github.com/awheeler1701/Scuffed-Save-States`.
3. Ensure that this new directory's name is 'Scuffed-Save-States' [^1]
4. Reload the game to activate the mod.

### MacOS

1. Go to your Balatro Mods dir `/Users/$USER/Library/Application Support/Balatro/Mods`.
2. Clone the Scuffed Save States repo `git clone https://github.com/awheeler1701/Scuffed-Save-States.git`.
3. Ensure that this new directory's name is "Scuffed-Save-States". [^1]
4. Reload the game to activate the mod.

## Features
### Save-States
Scuffed Save States has the capability to save up to 10 save-states through the use of in-game key binds. It also provides 1 additional slot that can save the file uncompressed, allowing manual editing of some attributes of that save state more easily, and providing a quick-load of this state if so desired.
> To create a save-state: Hold `s + 0-9`
> To load a save-state: Hold `l + 0-9`
> To create an uncompressed save-state: Hold `s + r`
> To attempt to load this raw save-state: Hold `l + r`

Each number from 0 - 9 corresponds to a save slot. To overwrite an old save, simply create a new save-state in its slot.
Any failure to load a save-state for any reason, will simply cause the mod to \"load\" a new run, which may have bugged behaviors. It is advised to simply scrap that save-state, and load a working one, or start a fresh run.
