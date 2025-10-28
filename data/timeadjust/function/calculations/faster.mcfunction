## Calculate information for a quicker daylight cycle (<20 minutes)
#? The default way to calculate this is 24000/1200x, where 24000 is the number of ticks in a day, 1200 the number of ticks per minute, and x the number of minutes per day. Simplifying this down becomes 20/x. X is TimeAdjust.Total

# Calculate ticks per tick
#? For a faster daylight cycle, TpT is number of day ticks per game tick
  scoreboard players set TimeAdjust.TpT TimeAdjust 20
  scoreboard players operation TimeAdjust.TpT TimeAdjust /= TimeAdjust.Total TimeAdjust

# Calculate leap ticks
#? Leap ticks are calculated by finding the remainder when 20 is divided by the length of the day. 
  scoreboard players set TimeAdjust.LeapTicks TimeAdjust 20
  scoreboard players operation TimeAdjust.LeapTicks TimeAdjust %= TimeAdjust.Total TimeAdjust

# Clear old leap ticks
  scoreboard players set TimeAdjust.LeapTick TimeAdjust 0
