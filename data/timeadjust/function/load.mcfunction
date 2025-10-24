# Boolean. Replacement for gamerule
  scoreboard objectives add TimeAdjust.DoDaylightCycle dummy

# New scoreboard objective stuff
  scoreboard objectives add TimeAdjust dummy
  scoreboard players set #TimeAdjust.60 TimeAdjust 60
  scoreboard players set #TimeAdjust.20 TimeAdjust 20
  scoreboard players set #TimeAdjust.Default.TPD TimeAdjust 24000
  scoreboard players set #TimeAdjust.Default.TPM TimeAdjust 1200

execute unless data storage timeadjust:versionstring {branch: "Release", version: "1.0.3"} run function timeadjust:firsttimesetup

# First time calculations
  function timeadjust:timecalc

function timeadjust:tick
