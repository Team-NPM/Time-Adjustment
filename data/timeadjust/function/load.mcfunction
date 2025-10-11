scoreboard objectives add TimeAdjust.Counter dummy
scoreboard objectives add TimeAdjust.SetTick dummy
scoreboard objectives add TimeAdjust.DoDaylightCycle dummy
scoreboard objectives add TimeAdjust.Daytime dummy
scoreboard players set #TimeAdjust.Min TimeAdjust.SetTick 1
execute unless data storage timeadjust:versionstring {branch: "Release", version: "1.0.3"} run function timeadjust:firsttimesetup
function timeadjust:tick
