time add 1t
execute if score TimeAdjust.CurrentTime TimeAdjust matches 0 run scoreboard players add TimeAdjust.Day TimeAdjust 1
execute if score TimeAdjust.Tick TimeAdjust >= TimeAdjust.Total TimeAdjust run function timeadjust:runtime/faster/addtick
