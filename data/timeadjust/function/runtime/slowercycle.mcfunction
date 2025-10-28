scoreboard players add TimeAdjust.Tick TimeAdjust 1
execute if score TimeAdjust.Tick TimeAdjust > TimeAdjust.TpT TimeAdjust run function timeadjust:runtime/addtick
execute if score TimeAdjust.Tick TimeAdjust > TimeAdjust.TpT TimeAdjust run scoreboard players set TimeAdjust.Tick TimeAdjust 0
