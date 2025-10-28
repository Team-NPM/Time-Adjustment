time add 1t
scoreboard players add TimeAdjust.Tick TimeAdjust 1
execute if score TimeAdjust.Tick TimeAdjust >= TimeAdjust.TpT TimeAdjust run return run function timeadjust:runtime/faster/leaptick
execute if score TimeAdjust.Tick TimeAdjust < TimeAdjust.TpT TimeAdjust run function timeadjust:runtime/faster/cycle
