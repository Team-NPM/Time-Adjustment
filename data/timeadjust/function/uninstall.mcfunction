schedule clear timeadjust:tick
scoreboard objectives remove TimeAdjust
scoreboard objectives remove TimeAdjust.DaylightCycle
data remove storage timeadjust branch
data remove storage timeadjust version
gamerule advance_time true
tellraw @a [{"translate": "Time Adjustment","bold": true,"color": "yellow"},{"translate": " has been ","bold": false,"color": "white"},{"translate": "uninstalled","bold": false,"color": "red"}]
tellraw @a [{"translate": "Run ","color": "white","bold": false},{"translate": "/datapack disable \"file/Day-Adjustment-R2.0.5.zip\"","color": "red","bold": false,click_event: {"action": "suggest_command","command": "/datapack disable \"file/Time-Adjustement-R2.0.5.zip\""},hover_event: {"action": "show_text","value": [{"translate": "Click to run (must have sufficient permissions)"}]}},{"translate": " to finish uninstallation","color": "white","bold": false}]
