# New scoreboard objective stuff
scoreboard objectives add TimeAdjust dummy

# The number 60 for calculating the display time in the config
scoreboard players set #TimeAdjust.60 TimeAdjust 60

# Perform first-time installation if not previously installed
execute unless score BACKUP.TimeAdjust BACKUP.TimeAdjust matches 1 unless score TimeAdjust.Total TimeAdjust matches 1.. run function timeadjust:firsttimesetup

# Retreive backup data in case of update
execute if score BACKUP.TimeAdjust BACKUP.TimeAdjust matches 1 run function timeadjust:loadbackup

# Begin ticking
  execute if score TimeAdjust.DoDaylightCycle TimeAdjust matches 1 run schedule function timeadjust:tick 1t replace
