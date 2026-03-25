scoreboard players operation TimeAdjust.Rate TimeAdjust = TimeAdjust.Total TimeAdjust
scoreboard players operation TimeAdjust.Rate TimeAdjust /= #TimeAdjust.20 TimeAdjust
scoreboard players set TimeAdjust.Float TimeAdjust 100000
execute store result storage timeadjust:data rate float .00001 run scoreboard players operation TimeAdjust.Float TimeAdjust /= TimeAdjust.Rate TimeAdjust
function timeadjust:setrate with storage timeadjust:data
