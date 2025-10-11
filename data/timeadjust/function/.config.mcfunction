# Calculate Time
  scoreboard players operation #TimeAdjust TimeAdjust.Minutes = #TimeAdjust TimeAdjust.Total
  scoreboard players operation #TimeAdjust TimeAdjust.Hours = #TimeAdjust TimeAdjust.Total
  scoreboard players operation #TimeAdjust TimeAdjust.Minutes %= #TimeAdjust.Divide TimeAdjust.Minutes
  scoreboard players operation #TimeAdjust TimeAdjust.Hours /= #TimeAdjust.Divide TimeAdjust.Minutes

# Clear Chat
  tellraw @s {"text": "\n\n\n\n\n\n\n\n\n"}

# Title Bar
  tellraw @s {"text": "■▬▬▬▬ Time Adjustment Configuration ▬▬▬▬■","bold": true,"color": "gold"}

# Show Time
  tellraw @s [{"text":"Day Length: ","color": "yellow","bold": false},{"score": {"name": "#TimeAdjust","objective": "TimeAdjust.Hours"},"color": "green","bold": true},{"text": " hours, ","color": "yellow","bold": false},{"score": {"name": "#TimeAdjust","objective": "TimeAdjust.Minutes"},"color": "green","bold": true},{"text": " minutes","color": "yellow","bold": false}]

# Do Daylight Cycle
  execute if score #TimeAdjust TimeAdjust.DoDaylightCycle matches 0 run tellraw @s [\
  {"text": "Daylight Cycle: [","color": "yellow","bold": false},\
  {"text": "Disabled","color": "red","bold": true,"clickEvent": {"action": "run_command","value": "/function timeadjust:config/enabledaylightcycle"}},\
  {"text": "]","color": "yellow","bold": false}]
  execute if score #TimeAdjust TimeAdjust.DoDaylightCycle matches 1 run tellraw @s [\
  {"text": "Daylight Cycle: [","color": "yellow","bold": false},\
  {"text": "Enabled","color": "green","bold": true,"clickEvent": {"action": "run_command","value": "/function timeadjust:config/disabledaylightcycle"}},\
  {"text": "]","color": "yellow","bold": false}]

# Presets
  execute if score #TimeAdjust TimeAdjust.Total matches 20 run tellraw @s [\
  {"text": "Presets: [","color": "yellow","bold": false},\
  {"text": "Default","color": "gold","bold": true},\
  {"text": "] [","color": "yellow","bold": false},\
  {"text": "1/10","color": "yellow","bold": false,"clickEvent": {"action": "run_command","value": "/function timeadjust:config/preset1"}},\
  {"text": "] [","color": "yellow","bold": false},\
  {"text": "Realtime","color": "yellow","bold": false,"clickEvent": {"action": "run_command","value": "/function timeadjust:config/preset2"}},\
  {"text": "]","color": "yellow","bold": false}]
  execute if score #TimeAdjust TimeAdjust.Total matches 144 run tellraw @s [\
  {"text": "Presets: [","color": "yellow","bold": false},\
  {"text": "Default","color": "yellow","bold": false,"clickEvent": {"action": "run_command","value": "/function timeadjust:config/preset0"}},\
  {"text": "] [","color": "yellow","bold": false},\
  {"text": "1/10","color": "gold","bold": true},\
  {"text": "] [","color": "yellow","bold": false},\
  {"text": "Realtime","color": "yellow","bold": false,"clickEvent": {"action": "run_command","value": "/function timeadjust:config/preset2"}},\
  {"text": "]","color": "yellow","bold": false}]
  execute if score #TimeAdjust TimeAdjust.Total matches 1440 run tellraw @s [\
  {"text": "Presets: [","color": "yellow","bold": false},\
  {"text": "Default","color": "yellow","bold": false,"clickEvent": {"action": "run_command","value": "/function timeadjust:config/preset0"}},\
  {"text": "] [","color": "yellow","bold": false},\
  {"text": "1/10","color": "yellow","bold": false,"clickEvent": {"action": "run_command","value": "/function timeadjust:config/preset1"}},\
  {"text": "] [","color": "yellow","bold": false},\
  {"text": "Realtime","color": "gold","bold": true},\
  {"text": "]","color": "yellow","bold": false}]
  execute unless score #TimeAdjust TimeAdjust.Total matches 20 unless score #TimeAdjust TimeAdjust.Total matches 144 unless score #TimeAdjust TimeAdjust.Total matches 1440 run tellraw @s [\
  {"text": "Presets: [","color": "yellow","bold": false},\
  {"text": "Default","color": "yellow","bold": false,"clickEvent": {"action": "run_command","value": "/function timeadjust:config/preset0"}},\
  {"text": "] [","color": "yellow","bold": false},\
  {"text": "1/10","color": "yellow","bold": false,"clickEvent": {"action": "run_command","value": "/function timeadjust:config/preset1"}},\
  {"text": "] [","color": "yellow","bold": false},\
  {"text": "Realtime","color": "yellow","bold": false,"clickEvent": {"action": "run_command","value": "/function timeadjust:config/preset2"}},\
  {"text": "]","color": "yellow","bold": false}]

# Separator
  tellraw @s {"text": ""}

# Manual Adjustment
  tellraw @s [{"text": "[","color": "yellow"},{"text": "-05","color": "red","clickEvent": {"action": "run_command","value": "/function timeadjust:config/decrease5"}},{"text": "] [","color": "yellow"},{"text": "-01","color": "red","clickEvent": {"action": "run_command","value": "/function timeadjust:config/decrease1"}},{"text": "] ","color": "yellow"},{"text": "manual","color": "yellow","clickEvent": {"action": "suggest_command","value": "/scoreboard players set #TimeAdjust TimeAdjust.Total TIME_IN_MINUTES"}},{"text": " [","color": "yellow"},{"text": "+01","color": "green","clickEvent": {"action": "run_command","value": "/function timeadjust:config/increase1"}},{"text": "] [","color": "yellow"},{"text": "+05","color": "green","clickEvent": {"action": "run_command","value": "/function timeadjust:config/increase5"}},{"text": "]","color": "yellow"}]
  tellraw @s [{"text": "[","color": "yellow","underlined": false},{"text": "-60","color": "red","underlined": false,"clickEvent": {"action": "run_command","value": "/function timeadjust:config/decrease60"}},{"text": "] [","color": "yellow","underlined": false},{"text": "-20","color": "red","underlined": false,"clickEvent": {"action": "run_command","value": "/function timeadjust:config/decrease20"}},{"text": "] ","color": "yellow","underlined": false},{"text": "adjust","color": "yellow","underlined": true,"clickEvent": {"action": "suggest_command","value": "/scoreboard players set #TimeAdjust TimeAdjust.Total TIME_IN_MINUTES"}},{"text": " [","color": "yellow","underlined": false},{"text": "+20","color": "green","underlined": false,"clickEvent": {"action": "run_command","value": "/function timeadjust:config/increase20"}},{"text": "] [","color": "yellow","underlined": false},{"text": "-60","color": "green","underlined": false,"clickEvent": {"action": "run_command","value": "/function timeadjust:config/increase60"}},{"text": "]","color": "yellow","underlined": false}]

# Separator
  tellraw @s {"text": ""}

# Uninstall
  tellraw @s {"text": "Uninstall Datapack","bold": true,"color": "red","hoverEvent": {"action": "show_text","contents": {"text": "!! WARNING !! This is irriversible!","color": "red"}},"clickEvent": {"action": "run_command","value": "/function timeadjust:uninstall"}}

# Bottom
  tellraw @s {"text": "■▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬■","color": "gold","bold": true}
