schedule function timeadjust:tick 1t replace
gamerule doDaylightCycle false
execute if score TimeAdjust.Total TimeAdjust matches ..19 run function timeadjust:runtime/faster/cycle
execute if score TimeAdjust.Total TimeAdjust matches 20.. run function timeadjust:runtime/slower/cycle
