function timeadjust:removedata
execute if score TimeAdjust.DoDaylightCycle TimeAdjust matches 1 run gamerule doDaylightCycle true
tellraw @a [{"text": "Time Adjustment", "bold": true, "color": "yellow"}, {"text": " has been ", "bold": false, "color": "white"}, {"text": "uninstalled", "bold": false, "color": "red"}]
tellraw @a [{"text": "Run ", "color": "white", "bold": false}, {"text": "/datapack disable \"file/Time-Adjustment_", "color": "red", "bold": false, "clickEvent": {"action": "suggest_command", "value": "/datapack disable \"file/Time-Adjustment_"}, "hoverEvent": {"action": "show_text", "value": {"text": "Click to run (must have sufficient permissions)"}}}, {"text": ", using tab completion to finish uninstallation", "color": "white", "bold": false}]
