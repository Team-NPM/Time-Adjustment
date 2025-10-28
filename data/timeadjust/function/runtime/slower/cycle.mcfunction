scoreboard players add TimeAdjust.Tick TimeAdjust 1
execute if score TimeAdjust.Tick TimeAdjust <= TimeAdjust.TpT TimeAdjust run function timeadjust:runtime/slower/addtick
function timeadjust:runtime/slower/leaptick
