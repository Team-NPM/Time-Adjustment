# Calculate how many ticks should go by in a day
  scoreboard players operation TimeAdjust.Divide.TPD TimeAdjust = TimeAdjust.Total TimeAdjust
  scoreboard players operation TimeAdjust.Divide.TPD TimeAdjust *= #TimeAdjust.60 TimeAdjust
  scoreboard players operation TimeAdjust.Divide.TPD TimeAdjust *= #TimeAdjust.20 TimeAdjust

# Calculate how many game ticks pass for each day tick
  scoreboard players operation TimeAdjust.TPT TimeAdjust = #TimeAdjust.Default.TPD TimeAdjust
  scoreboard players operation TimeAdjust.TPT TimeAdjust /= TimeAdjust.Divide.TPD TimeAdjust

# Calculate the leap tick
  scoreboard players operation TimeAdjust.Remainder TimeAdjust = #TimeAdjust.Default.TPD TimeAdjust
  scoreboard players operation TimeAdjust.Remainder TimeAdjust %= TimeAdjust.Divide.TPD TimeAdjust
