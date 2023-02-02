# sets bossbar and boss information
execute at @e[type=vindicator,tag=swmb1] run bossbar set guardian players @a[distance=..25]
execute as @e[type=vindicator,tag=swmb1,limit=1] store result bossbar guardian value run scoreboard players get @s mob_health
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

# song timer
execute if score %timer swmb1 matches 1.. run scoreboard players remove %timer swmb1 1
execute if score %timer swmb1 matches 0 run function entities:mobs/types/dungeon/singwoods/guardian/song/songloop

# stat boosted boss [speed and faster atk sequence]
execute if entity @e[type=vindicator,tag=swmb1,tag=statBoost] run effect give @e[type=vindicator,tag=swmb1,tag=statBoost] minecraft:speed 1 1 true
execute if entity @e[type=vindicator,tag=swmb1,tag=statBoost] run effect give @e[type=skeleton,tag=statBoost] minecraft:speed 1 1 true
execute if entity @e[type=vindicator,tag=swmb1,tag=statBoost] run effect give @e[type=zombie,tag=statBoost] minecraft:speed 1 1 true
execute if entity @e[type=vindicator,tag=swmb1,tag=statBoost] if entity @a[tag=swmb1_boost] run schedule function entities:mobs/types/dungeon/singwoods/guardian/stat_boost/stop 260t
execute if entity @e[type=vindicator,tag=swmb1,tag=statBoost] if entity @a[tag=swmb1_boost] run tag @a[tag=swmb1_boost] remove swmb1_boost

# if there are no more summons then more summons can be spawned
execute unless entity @e[tag=swmb1_sum] run tag @e[type=vindicator,tag=swmb1] remove swmb1_sumActive

# ensure that fire as are dead
execute as @e[type=armor_stand,tag=swmb1_fire,nbt={OnGround:1b}] at @s unless block ~ ~-0.78 ~ air run kill @s

# sum testing
execute store result score %liveZom swmb1 if entity @e[type=zombie,tag=swmb1_sum]
execute store result score %liveSke swmb1 if entity @e[type=skeleton,tag=swmb1_sum]

# health spill over fix
execute as @e[type=vindicator,tag=swmb1] if score @s mob_health > @s mob_max_health store result score @s mob_health run scoreboard players get @s mob_max_health

# if the miniboss is dead then clear all the extra non-essential information or if player dies
execute unless entity @e[type=vindicator,tag=swmb1] run function entities:mobs/types/dungeon/singwoods/guardian/clear

# keeps this function running while the miniboss is alive
execute if entity @e[type=vindicator,tag=swmb1] run schedule function entities:mobs/types/dungeon/singwoods/guardian/brain 1t