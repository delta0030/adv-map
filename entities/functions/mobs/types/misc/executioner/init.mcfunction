scoreboard objectives add exeSpawn dummy
scoreboard players add %spawn exeSpawn 0
scoreboard players set %hb exeSpawn 0
scoreboard players set %fhb exeSpawn 0
scoreboard players set %mhb exeSpawn 0
scoreboard players set %shb exeSpawn 0
scoreboard players set %sshb exeSpawn 0
scoreboard players set %yes exeSpawn 0
scoreboard players set %try exeSpawn 0
function entities:mobs/types/misc/executioner/rng/range_lcg
function entities:mobs/types/misc/executioner/sound/heartbeat_test
schedule function entities:mobs/types/misc/executioner/test 5t

#%fhb-sshb are the timers for the heart beat cycle so that they dont over lap and break eardrums