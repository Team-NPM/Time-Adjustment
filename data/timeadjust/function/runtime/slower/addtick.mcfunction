time add 1t
scoreboard players operation TimeAdjust.Tick TimeAdjust -= TimeAdjust.Total TimeAdjust
execute store result score TimeAdjust.CurrentTime TimeAdjust run time query daytime
execute if score TimeAdjust.CurrentTime TimeAdjust matches 0 run scoreboard players add TimeAdjust.Day TimeAdjust 1
