# Boolean. Replacement for gamerule
  scoreboard objectives add TimeAdjust.DoDaylightCycle dummy

# Uint. Used to display total day length in config menu
  scoreboard objectives add TimeAdjust.Hours dummy
  scoreboard objectives add TimeAdjust.Minutes dummy
  scoreboard objectives add TimeAdjust.Total dummy
  scoreboard objectives add TimeAdjust.Remainder dummy
  scoreboard players set #TimeAdjust.Divide TimeAdjust.Minutes 60
  scoreboard players set #TimeAdjust.TPD TimeAdjust.Total 24000

execute unless data storage timeadjust:versionstring {branch: "Release", version: "1.0.3"} run function timeadjust:firsttimesetup

# First time calculations
  function timeadjust:timecalc

function timeadjust:tick
