$schedule function timeadjust:tick $(tickTime)t replace
gamerule doDaylightCycle false
execute if score TimeAdjust.Total TimeAdjust matches 20.. run return run function timeadjust:runtime/slower/cycle
execute if score TimeAdjust.Total TimeAdjust matches ..19 run function timeadjust:runtime/faster/cycle
