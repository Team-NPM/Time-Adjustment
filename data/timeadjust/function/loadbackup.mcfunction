execute store result score TimeAdjust.Total TimeAdjust run scoreboard players get TimeAdjust.Total BACKUP.TimeAdjust
execute store result score TimeAdjust.Tick TimeAdjust run scoreboard players get TimeAdjust.Tick BACKUP.TimeAdjust
execute store result score TimeAdjust.DoDaylightCycle TimeAdjust run scoreboard players get TimeAdjust.DoDaylightCycle BACKUP.TimeAdjust
scoreboard objectives remove BACKUP.TimeAdjust
tellraw @a {translate:"Time Adjustment has been successfully updated!",color:dark_gray,italic:true}