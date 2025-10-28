scoreboard players set TimeAdjust.Tick TimeAdjust 0
scoreboard players operation TimeAdjust.LeapTick TimeAdjust += TimeAdjust.LeapTicks TimeAdjust
scoreboard players operation TimeAdjust.Divide.LeapTick TimeAdjust = TimeAdjust.LeapTick TimeAdjust
scoreboard players operation TimeAdjust.Divide.LeapTick TimeAdjust /= #TimeAdjust.20 TimeAdjust
execute if score TimeAdjust.Divide.LeapTick TimeAdjust matches 1.. run function timeadjust:runtime/slower/leap
