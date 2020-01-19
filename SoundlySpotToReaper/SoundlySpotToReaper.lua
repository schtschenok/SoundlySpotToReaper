-- Find the current path to this script (https://bit.ly/366AEGR)
local ScriptPath = debug.getinfo(1,'S').source:match[[^@?(.*[\/])[^\/]-$]]
--reaper.ShowConsoleMsg(ScriptPath)

-- Path to a .bat file to be created. We can't run an executable directly beacuse for some reason it stops executing when Reaper goes inactive, and this executable makes Reaper inactive, so we have to run it as a separate process. While this solution is not really beautiful, it's simple, and it works fast.
local BatPath = ScriptPath .. "SoundlySpotToReaper.bat"
--reaper.ShowConsoleMsg(BatPath)

-- Path to the executable
local ExecutablePath = ScriptPath .. "SoundlySpotToReaper.exe"
--reaper.ShowConsoleMsg(ExecutablePath)

-- Open the .bat file for writing
local Bat = io.open(BatPath, "w")

-- Write code needed to execute SoundlySpotToReaper.exe to the .bat file
Bat:write("start \"\" " .. ExecutablePath)

-- Close the .bat file
Bat:close()

-- Run the .bat file
os.execute(BatPath)

-- Delete the .bat file
os.remove(BatPath)
