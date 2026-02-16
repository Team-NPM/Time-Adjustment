time add 1t
scoreboard players operation TimeAdjust.Tick TimeAdjust -= TimeAdjust.Total TimeAdjust
execute store result score TimeAdjust.CurrentTime TimeAdjust run time query daytime
execute if score TimeAdjust.CurrentTime TimeAdjust matches 0 run scoreboard players add TimeAdjust.Day TimeAdjust 1
execute if score TimeAdjust.Tick TimeAdjust >= TimeAdjust.Total TimeAdjust run function timeadjust:runtime/faster/addtick
# Test seeing if the function command is inserting or appending
