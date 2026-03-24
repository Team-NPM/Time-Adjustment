time add 1t
scoreboard players operation TimeAdjust.Tick TimeAdjust += TimeAdjust.LeapTick TimeAdjust
execute if score TimeAdjust.Tick TimeAdjust matches 20.. run return run function timeadjust:runtime/slower/inctick with storage timeadjust:data
$schedule function timeadjust:tick $(avgTick)t replace
