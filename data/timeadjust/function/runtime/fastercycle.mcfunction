function timeadjust:runtime/addtick
execute if score TimeAdjust.Tick TimeAdjust <= TimeAdjust.TPT TimeAdjust run function timeadjust:runtime/fastercycle
scoreboard players set TimeAdjust.Tick TimeAdjust 0
