-- Find the current path to this script (https://bit.ly/366AEGR)
local ScriptPath = debug.getinfo(1,'S').source:match[[^@?(.*[\/])[^\/]-$]]
--reaper.ShowConsoleMsg(ScriptPath)

-- Path to the executable
local ExecutablePath = ScriptPath .. "SoundlySpotToReaper.exe"
--reaper.ShowConsoleMsg(ExecutablePath)

-- Run the executable
os.execute("start " .. ExecutablePath)
