# New scoreboard objective stuff
  scoreboard objectives add TimeAdjust dummy

# Numbers for calculations
  scoreboard players set #TimeAdjust.60 TimeAdjust 60
  scoreboard players set #TimeAdjust.-1 TimeAdjust -1
  scoreboard players set #TimeAdjust.20 TimeAdjust 20
  scoreboard players set #TimeAdjust.100000 TimeAdjust 100000

# Retreive backup data in case of update
  execute if score BACKUP.TimeAdjust BACKUP.TimeAdjust matches 1 run function timeadjust:loadbackup

# Perform first-time installation if not previously installed
  execute unless score TimeAdjust.Total TimeAdjust matches 1.. run function timeadjust:firsttimesetup

# Properly set the time
  function timeadjust:calculateticking
