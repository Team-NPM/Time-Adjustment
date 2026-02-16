time set 0
tag @a remove timeadjust.sleeping
tag @a remove timeadjust.sleeping2
scoreboard players add TimeAdjust.Day TimeAdjust 1
scoreboard players operation TimeAdjust.LowerDay TimeAdjust = TimeAdjust.Day TimeAdjust
execute if score TimeAdjust.LowerDay TimeAdjust matches 1.. run function timeadjust:sleep/adddays
