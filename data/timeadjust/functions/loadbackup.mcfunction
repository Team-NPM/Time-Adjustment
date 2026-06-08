scoreboard players operation TimeAdjust.Total TimeAdjust = TimeAdjust.Total B.TimeAdjust
scoreboard players operation TimeAdjust.Tick TimeAdjust = TimeAdjust.Tick B.TimeAdjust
scoreboard players operation TimeAdjust.DoDaylightCycle TimeAdjust = TimeAdjust.DoDaylightCycle B.TimeAdjust
scoreboard objectives remove B.TimeAdjust
tellraw @a {"text": "Time Adjustment has been successfully updated!", "color": "dark_gray", "italic": true}
