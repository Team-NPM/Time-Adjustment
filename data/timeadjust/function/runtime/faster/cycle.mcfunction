scoreboard players add TimeAdjust.Tick TimeAdjust 20
execute if score TimeAdjust.Tick TimeAdjust >= TimeAdjust.Total TimeAdjust run function timeadjust:runtime/faster/addtick
schedule function timeadjust:tick 1t replace
