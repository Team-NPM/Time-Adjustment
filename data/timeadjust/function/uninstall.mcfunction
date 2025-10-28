schedule clear timeadjust:tick
scoreboard objectives remove TimeAdjust
scoreboard objectives remove TimeAdjust.DoDaylightCycle
data remove storage timeadjust branch
data remove storage timeadjust version
gamerule doDaylightCycle true
tellraw @a [{"text": "Time Adjustment","bold": true,"color": "yellow"},{"text": " has been ","bold": false,"color": "white"},{"text": "uninstalled","bold": false,"color": "red"}]
tellraw @a [{"text": "Run ","color": "white","bold": false},{"text": "/datapack disable \"file/Day-Adjustment-R1.0.1.zip\"","color": "red","bold": false,"clickEvent": {"action": "suggest_command","value": "/datapack disable \"file/Day-Adjustement-R1.0.1.zip\""},"hoverEvent": {"action": "show_text","contents": [{"text": "Click to run (must have sufficient permissions)"}]}},{"text": " to finish uninstallation","color": "white","bold": false}]
