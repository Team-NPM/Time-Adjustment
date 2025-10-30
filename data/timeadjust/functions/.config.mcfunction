# Calculate Time
  scoreboard players operation TimeAdjust.Display.Minutes TimeAdjust = TimeAdjust.Total TimeAdjust
  scoreboard players operation TimeAdjust.Display.Hours TimeAdjust = TimeAdjust.Total TimeAdjust
  scoreboard players operation TimeAdjust.Display.Minutes TimeAdjust %= #TimeAdjust.60 TimeAdjust
  scoreboard players operation TimeAdjust.Display.Hours TimeAdjust /= #TimeAdjust.60 TimeAdjust

# Clear Chat
  tellraw @s {\
  "translate": "\n\n\n\n\n\n\n"\
  }

# Title Bar
  tellraw @s {\
  "translate": "■▬▬▬▬▬ Time Adjustment Configuration ▬▬▬▬▬■",\
  "bold": true,\
  "color": "gold"\
  }

# Show Time
  tellraw @s [\
  {\
  "translate": "Day Length: ",\
  "color": "yellow",\
  "bold": false\
  },\
  {\
  "score": {\
  "name": "TimeAdjust.Display.Hours",\
  "objective": "TimeAdjust"\
  },\
  "color": "green",\
  "bold": true\
  },\
  {\
  "translate": " hours, ",\
  "color": "yellow",\
  "bold": false\
  },\
  {\
  "score": {\
  "name": "TimeAdjust.Display.Minutes",\
  "objective": "TimeAdjust"\
  },\
  "color": "green",\
  "bold": true\
  },\
  {\
  "translate": " minutes",\
  "color": "yellow",\
  "bold": false\
  }\
  ]

# Do Daylight Cycle
  execute if score #TimeAdjust TimeAdjust.DoDaylightCycle matches 0 run tellraw @s [\
  {\
  "translate": "Daylight Cycle: [",\
  "color": "yellow",\
  "bold": false\
  },\
  {\
  "translate": "Disabled",\
  "color": "red",\
  "bold": true,\
  "clickEvent": {\
  "action": "run_command",\
  "value": "/function timeadjust:config/enabledaylightcycle"\
  }\
  },\
  {\
  "translate": "]",\
  "color": "yellow",\
  "bold": false\
  }\
  ]
execute if score #TimeAdjust TimeAdjust.DoDaylightCycle matches 1 run tellraw @s [\
  {\
    "translate": "Daylight Cycle: [",\
    "color": "yellow",\
    "bold": false\
  },\
  {\
    "translate": "Enabled",\
    "color": "green",\
    "bold": true,\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function timeadjust:config/disabledaylightcycle"\
    }\
  },\
  {\
    "translate": "]",\
    "color": "yellow",\
    "bold": false\
  }\
]

# Let players view the cycle length
execute if score TimeAdjust.AllowView TimeAdjust matches 0 run tellraw @s [\
  {\
    "translate": "Let Players View Day Length [",\
    "color": "yellow",\
    "bold": false\
  },\
  {\
    "translate": "Disabled",\
    "color": "red",\
    "bold": true,\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function timeadjust:config/enableview"\
    }\
  },\
  {\
    "translate": "]",\
    "color": "yellow",\
    "bold": false\
  }\
]
execute if score TimeAdjust.AllowView TimeAdjust matches 1 run tellraw @s [\
  {\
    "translate": "Let Players View Day Length [",\
    "color": "yellow",\
    "bold": false\
  },\
  {\
    "translate": "Enabled",\
    "color": "green",\
    "bold": true,\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function timeadjust:config/disableview"\
    }\
  },\
  {\
    "translate": "]",\
    "color": "yellow",\
    "bold": false\
  }\
]

# Presets
execute if score TimeAdjust.Total TimeAdjust matches 20 run tellraw @s [\
  {\
    "translate": "Presets: [",\
    "color": "yellow",\
    "bold": false\
  },\
  {\
    "translate": "Default",\
    "color": "gold",\
    "bold": true\
  },\
  {\
    "translate": "] [",\
    "color": "yellow",\
    "bold": false\
  },\
  {\
    "translate": "40 mins",\
    "color": "yellow",\
    "bold": false,\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function timeadjust:config/preset1"\
    }\
  },\
  {\
    "translate": "] [",\
    "color": "yellow",\
    "bold": false\
  },\
  {\
    "translate": "12 hrs",\
    "color": "yellow",\
    "bold": false,\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function timeadjust:config/preset2"\
    }\
  },\
  {\
    "translate": "] [",\
    "color": "yellow",\
    "bold": false\
  },\
  {\
    "translate": "Realtime",\
    "color": "yellow",\
    "bold": false,\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function timeadjust:config/preset3"\
    }\
  },\
  {\
    "translate": "]",\
    "color": "yellow",\
    "bold": false\
  }\
]
execute if score TimeAdjust.Total TimeAdjust matches 40 run tellraw @s [\
  {\
    "translate": "Presets: [",\
    "color": "yellow",\
    "bold": false\
  },\
  {\
    "translate": "Default",\
    "color": "yellow",\
    "bold": false,\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function timeadjust:config/preset0"\
    }\
  },\
  {\
    "translate": "] [",\
    "color": "yellow",\
    "bold": false\
  },\
  {\
    "translate": "40 mins",\
    "color": "gold",\
    "bold": true\
  },\
  {\
    "translate": "] [",\
    "color": "yellow",\
    "bold": false\
  },\
  {\
    "translate": "12 hrs",\
    "color": "yellow",\
    "bold": false,\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function timeadjust:config/preset2"\
    }\
  },\
  {\
    "translate": "] [",\
    "color": "yellow",\
    "bold": false\
  },\
  {\
    "translate": "Realtime",\
    "color": "yellow",\
    "bold": false,\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function timeadjust:config/preset3"\
    }\
  },\
  {\
    "translate": "]",\
    "color": "yellow",\
    "bold": false\
  }\
]
execute if score TimeAdjust.Total TimeAdjust matches 720 run tellraw @s [\
  {\
    "translate": "Presets: [",\
    "color": "yellow",\
    "bold": false\
  },\
  {\
    "translate": "Default",\
    "color": "yellow",\
    "bold": false,\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function timeadjust:config/preset0"\
    }\
  },\
  {\
    "translate": "] [",\
    "color": "yellow",\
    "bold": false\
  },\
  {\
    "translate": "40 mins",\
    "color": "yellow",\
    "bold": false,\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function timeadjust:config/preset1"\
    }\
  },\
  {\
    "translate": "] [",\
    "color": "yellow",\
    "bold": false\
  },\
  {\
    "translate": "12 hrs",\
    "color": "gold",\
    "bold": true\
  },\
  {\
    "translate": "] [",\
    "color": "yellow",\
    "bold": false\
  },\
  {\
    "translate": "Realtime",\
    "color": "yellow",\
    "bold": false,\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function timeadjust:config/preset3"\
    }\
  },\
  {\
    "translate": "]",\
    "color": "yellow",\
    "bold": false\
  }\
]
execute if score TimeAdjust.Total TimeAdjust matches 1440 run tellraw @s [\
  {\
    "translate": "Presets: [",\
    "color": "yellow",\
    "bold": false\
  },\
  {\
    "translate": "Default",\
    "color": "yellow",\
    "bold": false,\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function timeadjust:config/preset0"\
    }\
  },\
  {\
    "translate": "] [",\
    "color": "yellow",\
    "bold": false\
  },\
  {\
    "translate": "40 mins",\
    "color": "yellow",\
    "bold": false,\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function timeadjust:config/preset1"\
    }\
  },\
  {\
    "translate": "] [",\
    "color": "yellow",\
    "bold": false\
  },\
  {\
    "translate": "12 hrs",\
    "color": "yellow",\
    "bold": false,\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function timeadjust:config/preset2"\
    }\
  },\
  {\
    "translate": "] [",\
    "color": "yellow",\
    "bold": false\
  },\
  {\
    "translate": "Realtime",\
    "color": "gold",\
    "bold": true\
  },\
  {\
    "translate": "]",\
    "color": "yellow",\
    "bold": false\
  }\
]
execute unless score TimeAdjust.Total TimeAdjust matches 20 unless score TimeAdjust.Total TimeAdjust matches 40 unless score TimeAdjust.Total TimeAdjust matches 720 unless score TimeAdjust.Total TimeAdjust matches 1440 run tellraw @s [\
  {\
    "translate": "Presets: [",\
    "color": "yellow",\
    "bold": false\
  },\
  {\
    "translate": "Default",\
    "color": "yellow",\
    "bold": false,\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function timeadjust:config/preset0"\
    }\
  },\
  {\
    "translate": "] [",\
    "color": "yellow",\
    "bold": false\
  },\
  {\
    "translate": "40 mins",\
    "color": "yellow",\
    "bold": false,\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function timeadjust:config/preset1"\
    }\
  },\
  {\
    "translate": "] [",\
    "color": "yellow",\
    "bold": false\
  },\
  {\
    "translate": "12 hrs",\
    "color": "yellow",\
    "bold": false,\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function timeadjust:config/preset2"\
    }\
  },\
  {\
    "translate": "] [",\
    "color": "yellow",\
    "bold": false\
  },\
  {\
    "translate": "Realtime",\
    "color": "yellow",\
    "bold": false,\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function timeadjust:config/preset3"\
    }\
  },\
  {\
    "translate": "]",\
    "color": "yellow",\
    "bold": false\
  }\
]

# Separator
tellraw @s {"translate": ""}

# Manual Adjustment
tellraw @s [\
  {\
    "translate": "[",\
    "color": "yellow"\
  },\
  {\
    "translate": "-05",\
    "color": "red",\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function timeadjust:config/decrease5"\
    }\
  },\
  {\
    "translate": "] [",\
    "color": "yellow"\
  },\
  {\
    "translate": "-01",\
    "color": "red",\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function timeadjust:config/decrease1"\
    }\
  },\
  {\
    "translate": "] ",\
    "color": "yellow"\
  },\
  {\
    "translate": "manual",\
    "color": "yellow",\
    "clickEvent": {\
      "action": "suggest_command",\
      "value": "/scoreboard players set TimeAdjust.Total TimeAdjust TIME_IN_MINUTES"\
    }\
  },\
  {\
    "translate": " [",\
    "color": "yellow"\
  },\
  {\
    "translate": "+01",\
    "color": "green",\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function timeadjust:config/increase1"\
    }\
  },\
  {\
    "translate": "] [",\
    "color": "yellow"\
  },\
  {\
    "translate": "+05",\
    "color": "green",\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function timeadjust:config/increase5"\
    }\
  },\
  {\
    "translate": "]",\
    "color": "yellow"\
  }\
]
tellraw @s [\
  {\
    "translate": "[",\
    "color": "yellow",\
    "underlined": false\
  },\
  {\
    "translate": "-60",\
    "color": "red",\
    "underlined": false,\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function timeadjust:config/decrease60"\
    }\
  },\
  {\
    "translate": "] [",\
    "color": "yellow",\
    "underlined": false\
  },\
  {\
    "translate": "-20",\
    "color": "red",\
    "underlined": false,\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function timeadjust:config/decrease20"\
    }\
  },\
  {\
    "translate": "] ",\
    "color": "yellow",\
    "underlined": false\
  },\
  {\
    "translate": "adjust",\
    "color": "yellow",\
    "underlined": true,\
    "clickEvent": {\
      "action": "suggest_command",\
      "value": "/scoreboard players set TimeAdjust.Total TimeAdjust TIME_IN_MINUTES"\
    }\
  },\
  {\
    "translate": " [",\
    "color": "yellow",\
    "underlined": false\
  },\
  {\
    "translate": "+20",\
    "color": "green",\
    "underlined": false,\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function timeadjust:config/increase20"\
    }\
  },\
  {\
    "translate": "] [",\
    "color": "yellow",\
    "underlined": false\
  },\
  {\
    "translate": "+60",\
    "color": "green",\
    "underlined": false,\
    "clickEvent": {\
      "action": "run_command",\
      "value": "/function timeadjust:config/increase60"\
    }\
  },\
  {\
    "translate": "]",\
    "color": "yellow",\
    "underlined": false\
  }\
]

# Separator
tellraw @s {"translate": ""}

# Uninstall
tellraw @s {\
  "translate": "Uninstall Datapack",\
  "bold": true,\
  "color": "red",\
  "hoverEvent": {\
    "action": "show_text",\
    "contents": {\
      "translate": "!! WARNING !! This is irriversible!",\
      "color": "red"\
    }\
  },\
  "clickEvent": {\
    "action": "run_command",\
    "value": "/function timeadjust:uninstall"\
  }\
}

# Bottom
tellraw @s {\
  "translate": "■▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬■",\
  "color": "gold",\
  "bold": true\
}
