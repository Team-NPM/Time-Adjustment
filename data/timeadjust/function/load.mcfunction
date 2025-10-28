## Boolean. Replacement for gamerule
  scoreboard objectives add TimeAdjust.DoDaylightCycle dummy

## New scoreboard objective stuff
  scoreboard objectives add TimeAdjust dummy
  #? The number 60 for calculating the display time in the config
  scoreboard players set #TimeAdjust.60 TimeAdjust 60
  #? The number 20 for calculating game ticks per day ticks for slower daylight cycles
  scoreboard players set #TimeAdjust.20 TimeAdjust 20

## First time setup if fresh install/update
  execute unless data storage timeadjust {branch: "Release", version: "2.0.1"} run function timeadjust:firsttimesetup

## Make sure calculations are up to date
  function timeadjust:calculations/timecalc

## Begin ticking
  execute if score #TimeAdjust TimeAdjust.DoDaylightCycle matches 1 run schedule function timeadjust:tick 1t replace
