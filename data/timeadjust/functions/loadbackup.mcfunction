scoreboard players operation TimeAdjust.Total TimeAdjust = TimeAdjust.Total BACKUP.TimeAdjust
scoreboard players operation TimeAdjust.Tick TimeAdjust = TimeAdjust.Tick BACKUP.TimeAdjust
scoreboard players operation TimeAdjust.DoDaylightCycle TimeAdjust = TimeAdjust.DoDaylightCycle BACKUP.TimeAdjust
scoreboard objectives remove BACKUP.TimeAdjust
tellraw @a {"text": "Time Adjustment has been successfully updated!", "color": "dark_gray", "italic": true}
