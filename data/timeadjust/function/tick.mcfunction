schedule function timeadjust:tick 1t replace
gamerule advance_time false
execute if score TimeAdjust.AllowView TimeAdjust matches 1 run scoreboard players enable @a TimeAdjust
execute as @a[scores={TimeAdjust=1..}] run function timeadjust:gettime
execute if score TimeAdjust.Total TimeAdjust matches ..19 run return run function timeadjust:runtime/faster/cycle
execute if score TimeAdjust.Total TimeAdjust matches 20.. run function timeadjust:runtime/slower/cycle
