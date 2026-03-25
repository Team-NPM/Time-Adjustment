time add 1t
scoreboard players operation TimeAdjust.Tick TimeAdjust -= TimeAdjust.Total TimeAdjust
execute if score TimeAdjust.Tick TimeAdjust >= TimeAdjust.Total TimeAdjust run function timeadjust:runtime/faster/addtick
