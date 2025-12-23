scoreboard objectives add BACKUP.TimeAdjust dummy
scoreboard players set BACKUP.TimeAdjust BACKUP.TimeAdjust 1
execute store result score TimeAdjust.Total BACKUP.TimeAdjust run scoreboard players get TimeAdjust.Total TimeAdjust
execute store result score TimeAdjust.Tick BACKUP.TimeAdjust run scoreboard players get TimeAdjust.Tick TimeAdjust
execute store result score TimeAdjust.DoDaylightCycle BACKUP.TimeAdjust run scoreboard players get TimeAdjust.DoDaylightCycle TimeAdjust
function timeadjust: removedata
gamerule doDaylightCycle false
tellraw @s {translate: "To complete update (the daylight cycle has been paused for your convenience): ", color: white}
tellraw @s [{translate: "1. Run ", color: white}, {translate: "/datapack disable \"file/Time-Adjustment_", color: red, click_event: {action: "suggest_command", command: "/datapack disable \"file/Time-Adjustment_"}, hover_event: {action: "show_text", value: {translate: "Click to run (must have sufficient permissions)"}}}, {translate: ", using tab completion to select the correct version", color: white}]
tellraw @s [{translate: "2. ", color: white}, {translate: "Download", color: blue, click_event: {action: "open_url", url: "https: //modrinth.com/datapack/time-adjustment/versions"}, hover_event: {action: "show_text", value: {translate: "Click to open official Modrinth page"}}}, {translate: " a newer version of Time Adjustment", color: white}]
tellraw @s {translate: "3. Remove the current version of Time Adjustment from the datapack folder and place the newer version in the datapack folder"}
tellraw @s [{translate: "4. Run ", color: white}, {translate: "/datapack list available", color: green, click_event: {action: "run_command", command: "/datapack list available"}, hover_event: {action: "show_text", value: {translate: "Click to run (must have sufficient permissions)"}}}, {translate: " to see new datapacks"}]
tellraw @s [{translate: "5. Run ", color: white}, {translate: "/datapack enable \"file/Time-Adjustment_", color: green, click_event: {action: "suggest_command", command: "/datapack enable \"file/Time-Adjustment_"}, hover_event: {action: "show_text", value: {translate: "Click to run (must have sufficient permissions)"}}}, {translate: ", using tab completion to select the correct version"}]