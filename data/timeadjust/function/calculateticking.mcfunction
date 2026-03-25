scoreboard players operation TimeAdjust.AvgTick TimeAdjust = TimeAdjust.Total TimeAdjust
scoreboard players operation TimeAdjust.AvgTick TimeAdjust /= #TimeAdjust.20 TimeAdjust
scoreboard players operation TimeAdjust.LeapTick TimeAdjust = TimeAdjust.Total TimeAdjust
scoreboard players operation TimeAdjust.LeapTick TimeAdjust %= #TimeAdjust.20 TimeAdjust
scoreboard players set TimeAdjust.IncTick TimeAdjust 1
scoreboard players operation TimeAdjust.IncTick TimeAdjust += TimeAdjust.AvgTick TimeAdjust
execute store result storage timeadjust:data avgTick short 1 run scoreboard players get TimeAdjust.AvgTick TimeAdjust
execute store result storage timeadjust:data incTick short 1 run scoreboard players get TimeAdjust.IncTick TimeAdjust
