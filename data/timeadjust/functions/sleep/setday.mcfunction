tag @a remove timeadjust.sleeping
tag @a remove timeadjust.sleeping2
execute store result score TimeAdjust.CurrentTime TimeAdjust run time query daytime
scoreboard players set #TimeAdjust.24000 TimeAdjust 24000
execute store result storage timeadjust:data tillDay short 1 run scoreboard players operation #TimeAdjust.24000 TimeAdjust -= TimeAdjust.CurrentTime TimeAdjust
function timeadjust:sleep/today with storage timeadjust:data
