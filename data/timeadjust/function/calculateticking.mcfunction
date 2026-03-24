scoreboard players operation TimeAdjust.Rate TimeAdjust = TimeAdjust.Total TimeAdjust
execute store result storage timeadjust:data rate float 1 run scoreboard players operation TimeAdjust.Rate TimeAdjust /= #TimeAdjust.20 TimeAdjust
function timeadjust:setrate with storage timeadjust:data
