# Boolean. Replacement for gamerule
  scoreboard objectives add TimeAdjust.DoDaylightCycle dummy

# Uint. Ticks per minute
  scoreboard objectives add TimeAdjust.TPM dummy

# Uint. Used to display total day length in config menu
  scoreboard objectives add TimeAdjust.Hours dummy
  scoreboard objectives add TimeAdjust.Minutes dummy
  scoreboard objectives add TimeAdjust.Total dummy
  scoreboard players set #TimeAdjust.Divide TimeAdjust.Minutes 60

execute unless data storage timeadjust:versionstring {branch: "Release", version: "1.0.3"} run function timeadjust:firsttimesetup
function timeadjust:tick
