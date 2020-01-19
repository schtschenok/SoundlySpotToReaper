# SoundlySpotToReaper
Windows-only Reaper action that allows one to press S button (Spot to Reaper) in Soundly application without leaving Reaper.

## Installation
0. Download the [latest release](https://github.com/schtschenok/SoundlySpotToReaper/releases/latest)
1. Open Reaper
2. Press `Options > Show REAPER resource path in explorer/finder...`
3. Navigate to `Scripts` folder
4. Unpack archive contents there
5. Press `Actions > Show action list...` in Reaper
6. Press `Load...` button to the right from `ReaScript:` and select `SoundlySpotToReaper.lua` from `Scripts` folder. Make sure that `SoundlySpotToReaper.lua` and `SoundlySpotToReaper.exe` are in the same folder.

Then `Script: SoundlySpotToReaper.lua` action should become available in Reaper.

Soundly application should be opened and some sound should be selected when action is triggered.

## Building from source
You could also build `SoundlySpotToReaper.cpp` with your favourite compiler. The only dependency is Windows API (windows.h).
Keep in mind that this script should be only built for x86 platform, since it needs to communicate with Soundly, which is an x86 application.

## FAQ
TODO
