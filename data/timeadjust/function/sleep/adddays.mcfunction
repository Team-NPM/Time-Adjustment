time add 24000
scoreboard players remove TimeAdjust.LowerDay TimeAdjust 1
execute if score TimeAdjust.LowerDay TimeAdjust matches 1.. run function timeadjust:sleep/adddays
