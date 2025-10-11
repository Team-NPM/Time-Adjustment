time add 1t
scoreboard players add #TimeAdjust.Match TimeAdjust.Remainder 1
execute if score #TimeAdjust.Match TimeAdjust.Remainder < #TimeAdjust TimeAdjust.Total
