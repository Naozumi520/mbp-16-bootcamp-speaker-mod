@echo off
rem This is a loop that runs the command every 20 seconds
for /l %%x in (1, 1, 500) do (
  echo Running SoundVolumeView /LoadProfile %USERPROFILE%\AudioCache.spr
  SoundVolumeView /LoadProfile %USERPROFILE%\AudioCache.spr
)