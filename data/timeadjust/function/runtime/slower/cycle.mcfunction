scoreboard players add TimeAdjust.Tick TimeAdjust 20
execute if score TimeAdjust.Tick TimeAdjust >= TimeAdjust.Total TimeAdjust run function timeadjust:runtime/slower/addtick
