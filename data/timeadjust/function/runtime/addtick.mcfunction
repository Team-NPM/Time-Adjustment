time add 1t
scoreboard players add TimeAdjust.CurrRemain TimeAdjust 1
execute if score TimeAdjust.CurrRemain TimeAdjust >= TimeAdjust TimeAdjust run function timeadjust:runtime/remainder
