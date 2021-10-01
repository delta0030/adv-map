# sets bossbar and boss information
bossbar set guardian players @a
execute store result bossbar guardian max as @e[type=vindicator,tag=swmb1,limit=1] run scoreboard players get @s mob_max_health
execute store result bossbar guardian value as @e[type=vindicator,tag=swmb1,limit=1] run scoreboard players get @s mob_health
execute unless entity @e[type=vindicator,tag=swmb1,limit=1] run bossbar set guardian visible false

# attack sequencing
execute as @a if entity @e[type=vindicator,tag=swmb1,tag=statBoost] run scoreboard players set %atkseq swmb1 180
execute as @a if entity @e[type=vindicator,tag=swmb1,tag=!statBoost] run scoreboard players set %atkseq swmb1 240
execute if score %base swmb1 matches 1.. run scoreboard players remove %base swmb1 1
execute if score %base swmb1 matches 0 run function entities:mobs/types/dungeon/singwoods/guardian/rng2/range_lcg
execute as @a at @s if score %base swmb1 matches 0 run scoreboard players operation %base swmb1 = %atkseq swmb1

# attack selecting
execute if score out math3 matches 1..5 run function entities:mobs/types/dungeon/singwoods/guardian/atk_brain/select
execute if score out math3 matches 1..5 run scoreboard players set out math3 0

# stat boosted boss [speed and faster atk sequence]
execute if entity @e[type=vindicator,tag=swmb1,tag=statBoost] run effect give @e[type=vindicator,tag=swmb1,tag=statBoost] minecraft:speed 1 1 true
execute if entity @e[type=vindicator,tag=swmb1,tag=statBoost] run effect give @e[type=skeleton,tag=statBoost] minecraft:speed 1 1 true
execute if entity @e[type=vindicator,tag=swmb1,tag=statBoost] run effect give @e[type=zombie,tag=statBoost] minecraft:speed 1 1 true
execute if entity @e[type=vindicator,tag=swmb1,tag=statBoost] if entity @a[tag=swmb1_boost] run schedule function entities:mobs/types/dungeon/singwoods/guardian/stat_boost/stop 260t
execute if entity @e[type=vindicator,tag=swmb1,tag=statBoost] if entity @a[tag=swmb1_boost] run tag @a[tag=swmb1_boost] remove swmb1_boost

# if there are no more summons then more summons can be spawned
execute unless entity @e[tag=swmb1_sum] run tag @e[type=vindicator,tag=swmb1] remove swmb1_sumActive

# if the miniboss is dead then clear all the extra non-essential information or if player dies
execute unless entity @e[type=vindicator,tag=swmb1] run function entities:mobs/types/dungeon/singwoods/guardian/clear

# keeps this function running while the miniboss is alive
execute if entity @e[type=vindicator,tag=swmb1] run schedule function entities:mobs/types/dungeon/singwoods/guardian/brain 1t