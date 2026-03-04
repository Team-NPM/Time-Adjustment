scoreboard players operation TimeAdjust.TickTime TimeAdjust = TimeAdjust.Total TimeAdjust
scoreboard players operation TimeAdjust.TickTime TimeAdjust /= #TimeAdjust.20 TimeAdjust
execute if score TimeAdjust.TickTime TimeAdjust matches ..0 run scoreboard players set TimeAdjust.TickTime TimeAdjust 1
execute store result storage timeadjust:data tickTime short 1 run scoreboard players get TimeAdjust.TickTime TimeAdjust
