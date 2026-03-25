scoreboard players set TimeAdjust.Rate TimeAdjust 20
scoreboard players operation TimeAdjust.Rate TimeAdjust *= #TimeAdjust.100000 TimeAdjust
execute store result storage timeadjust:data rate float 0.00001 run scoreboard players operation TimeAdjust.Rate TimeAdjust /= TimeAdjust.Total TimeAdjust
function timeadjust:setrate with storage timeadjust:data
