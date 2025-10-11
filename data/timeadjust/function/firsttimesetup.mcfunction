execute store result score #TimeAdjust TimeAdjust.DoDaylightCycle run gamerule doDaylightCycle
scoreboard players set #TimeAdjust TimeAdjust.SetTick 1
data merge storage timeadjust:versionstring {branch: "Release", version: "1.0.3"}
tellraw @a [{\
"text": "Time Adjustment",\
"bold": true,\
"color": "yellow"\
},{\
"text": " by ",\
"color": "white",\
"bold": false\
},{\
"text": "The_TophatMan",\
"color": "#00ff00",\
"bold": true\
},{\
"text": " has been installed.",\
"bold": false,\
"color": "white"\
}]

tellraw @a [{\
"text":"To configure, run ",\
"color":"white",\
"bold": false\
},{\
"text":"/function timeadjust:.config",\
"color": "green",\
"bold": false,\
"clickEvent": {\
"action": "suggest_command",\
"value": "/function timeadjust:.config"\
},\
"hoverEvent": {\
"action": "show_text",\
"contents": [\
{\
"text": "Click to run (must have sufficient permissions)",\
"color": "green"\
}]}}]

tellraw @a [{\
"text":"To remove, run    ",\
"color": "white",\
"bold": false\
},{\
"text": "/function timeadjust:uninstall",\
"color": "red",\
"bold": false,\
"clickEvent": {\
"action": "suggest_command",\
"value": "/function timeadjust:uninstall"\
},\
"hoverEvent": {\
"action": "show_text",\
"contents": [\
{\
"text": "Click to run (must have sufficient permissions)",\
"color": "red"\
}]}}]
