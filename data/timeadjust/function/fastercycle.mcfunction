function timeadjust:addtick
scoreboard players add TimeAdjust.FasterTick TimeAdjust 1
execute if score TimeAdjust.FasterTick TimeAdjust <= TimeAdjust.TPT TimeAdjust run function timeadjust:fastercycle
execute if score TimeAdjust.FasterTick TimeAdjust > TimeAdjust.TPT TimeAdjust run scoreboard players set TimeAdjust.FasterTick TimeAdjust 0
