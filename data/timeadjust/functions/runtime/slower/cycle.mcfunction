scoreboard players set TimeAdjust.AddTime TimeAdjust 20
scoreboard players operation TimeAdjust.AddTime TimeAdjust *= TimeAdjust.TickTime TimeAdjust
scoreboard players operation TimeAdjust.Tick TimeAdjust += TimeAdjust.AddTime TimeAdjust
function timeadjust:runtime/slower/addtick
