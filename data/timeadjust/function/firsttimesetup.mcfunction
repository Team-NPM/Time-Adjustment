## First Time Setup

# Set the daylight cycle to run depending on gamerule
  execute store result score #TimeAdjust TimeAdjust.DoDaylightCycle run gamerule doDaylightCycle

# Set default day length. Don't update if already set
  execute unless score TimeAdjust.Total TimeAdjust matches 1.. run scoreboard players set TimeAdjust.Total TimeAdjust 20

# Save version information to storage
  data merge storage timeadjust {branch: "Release", version: "2.0.1"}

# Inform players of installation
  tellraw @a [{"text": "Time Adjustment","bold": true,"color": "yellow"},{"text": " by ","color": "white","bold": false},{"text": "The_TophatMan","color": "#00ff00","bold": true},{"text": " has been installed.","bold": false,"color": "white"}]
  tellraw @a [{"text":"To configure, run ","color":"white","bold": false},{"text":"/function timeadjust:.config","color": "green","bold": false,"clickEvent": {"action": "suggest_command","value": "/function timeadjust:.config"},"hoverEvent": {"action": "show_text","contents": [{"text": "Click to run (must have sufficient permissions)","color": "green"}]}}]
  tellraw @a [{"text":"To remove, run ","color": "white","bold": false},{"text": "/function timeadjust:uninstall","color": "red","bold": false,"clickEvent": {"action": "suggest_command","value": "/function timeadjust:uninstall"},"hoverEvent": {"action": "show_text","contents": [{"text": "Click to run (must have sufficient permissions)","color": "red"}]}}]
