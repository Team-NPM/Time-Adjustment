## Calculate information for a slower daylight cycle (≥20 minutes)
#? The default way to calculate this is 1200x/24000, where 24000 is the number of ticks in a day, 1200 the number of ticks per minute, and x the number of minutes per day. Simplifying this down becomes x/20. X is TimeAdjust.Total

# Calculate game ticks per day tick
  scoreboard players operation TimeAdjust.TpT TimeAdjust = TimeAdjust.Total TimeAdjust
  scoreboard players operation TimeAdjust.TpT TimeAdjust /= #TimeAdjust.20 TimeAdjust

# Calculate leap ticks
  scoreboard players operation TimeAdjust.LeapTicks TimeAdjust = TimeAdjust.Total TimeAdjust
  scoreboard players operation TimeAdjust.LeapTicks TimeAdjust %= #TimeAdjust.20 TimeAdjust

# Clear old leap ticks
  scoreboard players set TimeAdjust.LeapTick TimeAdjust 0