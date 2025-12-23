## First Time Setup

# Set the daylight cycle to run depending on gamerule
execute store result score TimeAdjust.DoDaylightCycle TimeAdjust run gamerule advance_time

# Set default day length
scoreboard players set TimeAdjust.Total TimeAdjust 20

# Inform players of installation

tellraw @a [{translate: "Time Adjustment", bold: true, color: yellow}, {translate: " by ", color: white, bold: false}, {translate: "The_TophatMan", color: "#00ff00", bold: true}, {translate: " has been installed.", bold: false, color: white}]

tellraw @a [{translate: "To configure, run ", color: white, bold: false}, {translate: "/function timeadjust:.config", color: green, bold: false, click_event: {action: "suggest_command", command: "/function timeadjust:.config"}, hover_event: {action: "show_text", value: {translate: "Click to run (must have sufficient permissions)", color: green}}}]

tellraw @a [{translate: "To remove, run ", color: white, bold: false}, {translate: "/function timeadjust:uninstall", color: red, bold: false, click_event: {action: "suggest_command", command: "/function timeadjust:uninstall"}, hover_event: {action: "show_text", value: {translate: "Click to run (must have sufficient permissions)", color: red}}}]
