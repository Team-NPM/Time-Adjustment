execute as @r[nbt={SleepTimer: 100s}, tag=timeadjust.sleeping] run function timeadjust:sleep/givetag2
tag @r[tag=timeadjust.sleeping2] remove timeadjust.sleeping
