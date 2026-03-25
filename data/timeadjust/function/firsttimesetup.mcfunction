## First Time Setup

# Set the daylight cycle to run depending on gamerule
	execute store result score TimeAdjust.DoDaylightCycle TimeAdjust run gamerule doDaylightCycle

# Set default day length
	scoreboard players set TimeAdjust.Total TimeAdjust 20

# Inform players of installation

tellraw @a [{text: "Time Adjustment", bold: true, color: yellow}, {text: " by ", color: white, bold: false}, {text: "The_TophatMan", color: "#00ff00", bold: true}, {text: " has been installed.", bold: false, color: white}]

tellraw @a [{text: "To configure, run ", color: white, bold: false}, {text: "/function timeadjust:.config", color: green, bold: false, click_event: {action: "suggest_command", command: "/function timeadjust:.config"}, hover_event: {action: "show_text", value: {text: "Click to run (must have sufficient permissions)", color: green}}}]

tellraw @a [{text: "To remove, run ", color: white, bold: false}, {text: "/function timeadjust:uninstall", color: red, bold: false, click_event: {action: "suggest_command", command: "/function timeadjust:uninstall"}, hover_event: {action: "show_text", value: {text: "Click to run (must have sufficient permissions)", color: red}}}]
