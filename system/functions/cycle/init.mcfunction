gamerule doDaylightCycle false
scoreboard objectives add timeCycle dummy
scoreboard players set %night timeCycle 0

# day - 23000..12999
# night - 13000..22999

function system:cycle/loop