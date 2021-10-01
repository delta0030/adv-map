gamerule doDaylightCycle false
scoreboard objectives add timeCycle dummy
scoreboard players set %clock timeCycle 0
scoreboard players set %stop timeCycle 0
time set 0

function system:cycle/loop