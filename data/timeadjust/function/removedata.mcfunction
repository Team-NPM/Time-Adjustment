schedule clear timeadjust: tick
execute if score TimeAdjust.DoDaylightCycle TimeAdjust matches 1 run gamerule advance_time true
execute unless score TimeAdjust.DoDaylightCycle TimeAdjust matches 1 run gamerule advance_time false
scoreboard objectives remove TimeAdjust