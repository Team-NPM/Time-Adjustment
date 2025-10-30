## Boolean. Replacement for gamerule
  scoreboard objectives add TimeAdjust.DoDaylightCycle dummy

## New scoreboard objective stuff
  scoreboard objectives add TimeAdjust dummy
  #? The number 60 for calculating the display time in the config
  scoreboard players set #TimeAdjust.60 TimeAdjust 60

## First time setup if fresh install/update
  execute unless data storage timeadjust {branch: "Release", version: "2.0.3"} run function timeadjust:firsttimesetup

## Begin ticking
  execute if score #TimeAdjust TimeAdjust.DoDaylightCycle matches 1 run schedule function timeadjust:tick 1t replace
