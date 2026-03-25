scoreboard objectives add BACKUP.TimeAdjust dummy
scoreboard players set BACKUP.TimeAdjust BACKUP.TimeAdjust 1
scoreboard players operation TimeAdjust.Total BACKUP.TimeAdjust = TimeAdjust.Total TimeAdjust
scoreboard players operation TimeAdjust.Tick BACKUP.TimeAdjust = TimeAdjust.Tick TimeAdjust
scoreboard players operation TimeAdjust.DoDaylightCycle BACKUP.TimeAdjust = TimeAdjust.DoDaylightCycle TimeAdjust
function timeadjust:removedata
tellraw @s {"text": "To complete update (the daylight cycle has been paused for your convenience):"}
tellraw @s [{"text": "1. Run ", "color": "white"}, {"text": "/datapack disable \"file/Time-Adjustment_", "color": "red", "clickEvent": {"action": "suggest_command", "value": "/datapack disable \"file/Time-Adjustment_"}, "hoverEvent": {"action": "show_text", "value": {"text": "Click to run (must have sufficient permissions)"}}}, {"text": ", using tab completion to select the correct version", "color": "white"}]
tellraw @s [{"text": "2. ", "color": "white"}, {"text": "Download", "color": "blue", "clickEvent": {"action": "open_url", "value": "https://modrinth.com/datapack/time-adjustment/versions"}, "hoverEvent": {"action": "show_text", "value": {"text": "Click to open official Modrinth page"}}}, {"text": " a newer version of Time Adjustment", "color": "white"}]
tellraw @s {"text": "3. Remove the current version of Time Adjustment from the datapack folder and place the newer version in the datapack folder"}
tellraw @s [{"text": "4. Run ", "color": "white"}, {"text": "/datapack list available", "color": "green", "clickEvent": {"action": "run_command", "value": "/datapack list available"}, "hoverEvent": {"action": "show_text", "value": {"text": "Click to run (must have sufficient permissions)"}}}, {"text": " to see new datapacks"}]
tellraw @s [{"text": "5. Run ", "color": "white"}, {"text": "/datapack enable \"file/Time-Adjustment_", "color": "green", "clickEvent": {"action": "suggest_command", "value": "/datapack enable \"file/Time-Adjustment_"}, "hoverEvent": {"action": "show_text", "value": {"text": "Click to run (must have sufficient permissions)"}}}, {"text": ", using tab completion to select the correct version"}]
