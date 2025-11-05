## First Time Setup

# Set the daylight cycle to run depending on gamerule
  execute store result score #TimeAdjust TimeAdjust.DoDaylightCycle run gamerule doDaylightCycle

# Set default day length. Don't update if already set
  execute unless score TimeAdjust.Total TimeAdjust matches 1.. run scoreboard players set TimeAdjust.Total TimeAdjust 20
  execute unless score TimeAdjust.AllowView TimeAdjust matches 0..1 run scoreboard players set TimeAdjust.AllowView TimeAdjust 1

# Save version information to storage
  data merge storage timeadjust {branch: "Release", version: "2.0.5"}

# Inform players of installation

tellraw @a [\
{\
"translate": "Time Adjustment",\
"bold": true,\
"color": "yellow"\
  },\
{\
"translate": " by ",\
"color": "white",\
"bold": false\
  },\
{\
"translate": "The_TophatMan",\
"color": "#00ff00",\
"bold": true\
  },\
{\
"translate": " has been installed.",\
"bold": false,\
"color": "white"\
  }\
]

tellraw @a [\
  {\
    "translate": "To configure, run ",\
    "color": "white",\
    "bold": false\
  },\
  {\
    "translate": "/function timeadjust:.config",\
    "color": "green",\
    "bold": false,\
    "clickEvent": {\
      "action": "suggest_command",\
      "value": "/function timeadjust:.config"\
    },\
    "hoverEvent": {\
      "action": "show_text",\
      "contents": {\
        "translate": "Click to run (must have sufficient permissions)",\
        "color": "green"\
      }\
    }\
  }\
]

tellraw @a [\
{\
"translate": "To remove, run ",\
"color": "white",\
"bold": false\
  },\
  {\
"translate": "/function timeadjust:uninstall",\
"color": "red",\
"bold": false,\
"clickEvent": {\
"action": "suggest_command",\
"value": "/function timeadjust:uninstall"\
    },\
"hoverEvent": {\
"action": "show_text",\
"contents": {\
"translate": "Click to run (must have sufficient permissions)",\
"color": "red"\
      }\
    }\
  }\
]
