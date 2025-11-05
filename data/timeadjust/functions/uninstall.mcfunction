schedule clear timeadjust:tick
scoreboard objectives remove TimeAdjust
scoreboard objectives remove TimeAdjust.DoDaylightCycle
data remove storage timeadjust branch
data remove storage timeadjust version
gamerule doDaylightCycle true
tellraw @a [\
  {\
    "translate": "Time Adjustment",\
    "bold": true,\
    "color": "yellow"\
  },\
  {\
    "translate": " has been ",\
    "bold": false,\
    "color": "white"\
  },\
  {\
    "translate": "uninstalled",\
    "bold": false,\
    "color": "red"\
  }\
]
tellraw @a [\
  {\
    "translate": "Run ",\
    "color": "white",\
    "bold": false\
  },\
  {\
    "translate": "/datapack disable \"file/Day-Adjustment-R2.0.5.zip\"",\
    "color": "red",\
    "bold": false,\
    "clickEvent": {\
      "action": "suggest_command",\
      "value": "/datapack disable \"file/Time-Adjustement-R2.0.5.zip\""\
    },\
    "hoverEvent": {\
      "action": "show_text",\
      "contents": [\
        {\
          "translate": "Click to run (must have sufficient permissions)"\
        }\
      ]\
    }\
  },\
  {\
    "translate": " to finish uninstallation",\
    "color": "white",\
    "bold": false\
  }\
]
