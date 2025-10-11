execute if score #TimeAdjust TimeAdjust.DoDaylightCycle matches 1 run schedule function timeadjust:tick 1t replace
gamerule doDaylightCycle false
execute if score #TimeAdjust TimeAdjust.Total matches ..19 run function timeadjust:fastercycle
execute if score #TimeAdjust TimeAdjust.Total matches 20.. run function timeadjust:slowercycle
