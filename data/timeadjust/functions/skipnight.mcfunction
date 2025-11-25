execute as @r[nbt={SleepTimer:100s},tag=timeadjust.sleeping] run function timeadjust:stage2
tag @r[tag=timeadjust.sleeping] remove timeadjust.sleeping