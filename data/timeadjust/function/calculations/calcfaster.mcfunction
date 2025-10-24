# Calculate ticks per day
  scoreboard players operation TimeAdjust.Divide.TPD TimeAdjust = #TimeAdjust.Default.TPM TimeAdjust
  scoreboard players operation TimeAdjust.Divide.TPD TimeAdjust *= TimeAdjust.Total TimeAdjust

# Calculate ticks per tick
  scoreboard players operation TimeAdjust.TPT TimeAdjust = #TimeAdjust.Default.TPD TimeAdjust
  scoreboard players operation TimeAdjust.TPT TimeAdjust /= TimeAdjust.Divide.TPD TimeAdjust

# Calculate remainder ticks
  scoreboard players operation TimeAdjust.Remainder TimeAdjust = #TimeAdjust.Default.TPD TimeAdjust
  scoreboard players operation TimeAdjust.Remainder TimeAdjust %= TimeAdjust.Divide.TPD TimeAdjust
