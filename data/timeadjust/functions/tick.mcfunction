schedule function timeadjust:tick 1t replace
gamerule doDaylightCycle false
execute if score #TimeAdjust TimeAdjust.DoDaylightCycle matches 1 run scoreboard players add #TimeAdjust TimeAdjust.Counter 1
execute if score #TimeAdjust TimeAdjust.DoDaylightCycle matches 1 if score #TimeAdjust TimeAdjust.Counter >= #TimeAdjust TimeAdjust.SetTick run function timeadjust:moveforward