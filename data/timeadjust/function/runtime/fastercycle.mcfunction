function timeadjust:runtime/addtick
scoreboard players add TimeAdjust.Tick TimeAdjust 1
execute if score TimeAdjust.Tick TimeAdjust <= TimeAdjust.TPT TimeAdjust run function timeadjust:runtime/fastercycle
execute if score TimeAdjust.Tick TimeAdjust > TimeAdjust.TPT TimeAdjust run scoreboard players set TimeAdjust.Tick TimeAdjust 0
