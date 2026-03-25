$scoreboard players set TimeAdjust.Total TimeAdjust $(minutes)
$scoreboard players set TimeAdjust.Hours TimeAdjust $(hours)
scoreboard players operation TimeAdjust.Hours TimeAdjust *= #TimeAdjust.60 TimeAdjust
scoreboard players operation TimeAdjust.Total TimeAdjust += TimeAdjust.Hours TimeAdjust
execute if score TimeAdjust.Total TimeAdjust matches ..-1 run scoreboard players operation TimeAdjust.Total TimeAdjust *= #TimeAdjust.-1 TimeAdjust
execute if score TimeAdjust.Total TimeAdjust matches 0 run scoreboard players add TimeAdjust.Total TimeAdjust 1
function timeadjust:.config
