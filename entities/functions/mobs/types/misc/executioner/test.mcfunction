execute if score out math11 matches 157 run function entities:mobs/types/misc/executioner/summon
execute if score out math11 matches 7635 run function entities:mobs/types/misc/executioner/summon
execute if score out math11 matches 16394 run function entities:mobs/types/misc/executioner/summon
execute if entity @e[tag=executioner] run scoreboard players set %spawn exeSpawn 1
execute unless entity @e[tag=executioner] run scoreboard players set %spawn exeSpawn 0


execute as @a at @s if entity @e[tag=executioner,distance=..10] run scoreboard players set %hb exeSpawn 1
execute if score %fhb exeSpawn matches 0 if score %hb exeSpawn matches 1 run scoreboard players set %fhb exeSpawn 37
execute as @a at @s if score %fhb exeSpawn matches 36 run playsound minecraft:executioner.fast_hb master @a
execute if score %fhb exeSpawn matches 0 run scoreboard players set %fhb exeSpawn 37
execute if score %hb exeSpawn matches 1 run stopsound @a * minecraft:executioner.med_hb


execute as @a at @s if entity @e[tag=executioner,distance=11..20] run scoreboard players set %hb exeSpawn 3
execute if score %mhb exeSpawn matches 0 if score %hb exeSpawn matches 3 run scoreboard players set %mhb exeSpawn 75
execute as @a at @s if score %mhb exeSpawn matches 74 run playsound minecraft:executioner.med_hb master @a
execute if score %mhb exeSpawn matches 0 run scoreboard players set %mhb exeSpawn 75
execute if score %hb exeSpawn matches 3 run stopsound @a * minecraft:executioner.fast_hb
execute if score %hb exeSpawn matches 3 run stopsound @a * minecraft:executioner.slow_hb


execute as @a at @s if entity @e[tag=executioner,distance=21..30] run scoreboard players set %hb exeSpawn 5
execute if score %shb exeSpawn matches 0 if score %hb exeSpawn matches 5 run scoreboard players set %shb exeSpawn 73
execute as @a at @s if score %shb exeSpawn matches 72 run playsound minecraft:executioner.slow_hb master @a
execute if score %shb exeSpawn matches 0 run scoreboard players set %shb exeSpawn 73
execute if score %hb exeSpawn matches 5 run stopsound @a * minecraft:executioner.med_hb
execute if score %hb exeSpawn matches 5 run stopsound @a * minecraft:executioner.ss_hb


execute as @a at @s if entity @e[tag=executioner,distance=31..40] run scoreboard players set %hb exeSpawn 7
execute if score %sshb exeSpawn matches 0 if score %hb exeSpawn matches 7 run scoreboard players set %sshb exeSpawn 74
execute as @a at @s if score %sshb exeSpawn matches 73 run playsound minecraft:executioner.ss_hb master @a
execute if score %sshb exeSpawn matches 0 run scoreboard players set %sshb exeSpawn 74
execute if score %hb exeSpawn matches 7 run stopsound @a * minecraft:executioner.slow_hb

execute as @a at @s if entity @e[tag=executioner,distance=41..] run scoreboard players set %hb exeSpawn 9
execute unless entity @e[tag=executioner] run scoreboard players set %hb exeSpawn 9
execute if score %hb exeSpawn matches 9 run stopsound @a * minecraft:executioner.fast_hb
execute if score %hb exeSpawn matches 9 run stopsound @a * minecraft:executioner.med_hb
execute if score %hb exeSpawn matches 9 run stopsound @a * minecraft:executioner.slow_hb
execute if score %hb exeSpawn matches 9 run stopsound @a * minecraft:executioner.ss_hb

execute unless score %hb exeSpawn matches 1 run scoreboard players set %fhb exeSpawn -1
execute unless score %hb exeSpawn matches 3 run scoreboard players set %mhb exeSpawn -1
execute unless score %hb exeSpawn matches 5 run scoreboard players set %shb exeSpawn -1
execute unless score %hb exeSpawn matches 7 run scoreboard players set %sshb exeSpawn -1

execute if score %fhb exeSpawn matches 0 if score %hb exeSpawn matches 1 run scoreboard players set %fhb exeSpawn 37
execute if score %mhb exeSpawn matches 0 if score %hb exeSpawn matches 3 run scoreboard players set %mhb exeSpawn 75
execute if score %shb exeSpawn matches 0 if score %hb exeSpawn matches 5 run scoreboard players set %shb exeSpawn 73
execute if score %sshb exeSpawn matches 0 if score %hb exeSpawn matches 7 run scoreboard players set %sshb exeSpawn 74

execute if score %fhb exeSpawn matches -1 if score %hb exeSpawn matches 1 run scoreboard players set %fhb exeSpawn 37
execute if score %mhb exeSpawn matches -1 if score %hb exeSpawn matches 3 run scoreboard players set %mhb exeSpawn 75
execute if score %shb exeSpawn matches -1 if score %hb exeSpawn matches 5 run scoreboard players set %shb exeSpawn 73
execute if score %sshb exeSpawn matches -1 if score %hb exeSpawn matches 7 run scoreboard players set %sshb exeSpawn 74

execute if score %fhb exeSpawn matches 1.. run scoreboard players remove %fhb exeSpawn 1
execute if score %mhb exeSpawn matches 1.. run scoreboard players remove %mhb exeSpawn 1
execute if score %shb exeSpawn matches 1.. run scoreboard players remove %shb exeSpawn 1
execute if score %sshb exeSpawn matches 1.. run scoreboard players remove %sshb exeSpawn 1

execute unless entity @p run tp @e[tag=executioner] ~ ~-1000 ~
execute unless entity @p run kill @e[tag=executioner]

execute if score %clock timeCycle matches 13000..21400 run scoreboard players set %yes exeSpawn 1
execute unless score %clock exeSpawn matches 13000..21400 run scoreboard players set %yes exeSpawn 0
execute if score %yes exeSpawn matches 1 if score %forest biome matches 1 run scoreboard players set %try exeSpawn 1
execute unless entity @e[tag=executioner] if score %try exeSpawn matches 1 run function entities:mobs/types/misc/executioner/init

schedule function entities:mobs/types/misc/executioner/test 1t