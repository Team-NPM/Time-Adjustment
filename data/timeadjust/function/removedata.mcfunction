schedule clear timeadjust: tick
execute if score TimeAdjust.DoDaylightCycle TimeAdjust matches 1 run gamerule doDaylightCycle true
execute unless score TimeAdjust.DoDaylightCycle TimeAdjust matches 1 run gamerule doDaylightCycle false
scoreboard objectives remove TimeAdjust