# location testing

### mainland ###
execute as @a at @s if entity @e[type=marker,tag=mainlandMark,distance=2500..] run scoreboard players set @s mainland 0
execute as @a at @s if entity @e[type=marker,tag=mainlandMark,distance=..2500] run scoreboard players set @s mainland 1

# singwoods
execute as @a at @s if entity @e[type=marker,tag=swMark,distance=45..] run scoreboard players set @s singwoods 0
execute as @a at @s if entity @e[type=marker,tag=swMark,distance=..45] run scoreboard players set @s singwoods 1

# singwoods dungeon

execute as @a[x=1417,y=48,z=-1190,distance=..1] run scoreboard players set @s singwoodsdun 0
execute as @a[x=1415,y=48,z=-1190,distance=..1] run scoreboard players set @s singwoodsdun 1

# singwoods forest
execute as @a at @s if entity @e[type=marker,tag=swforestMark,distance=250..] run scoreboard players set @s swforest 0
execute as @a at @s if entity @e[type=marker,tag=swforestMark,distance=..250] run scoreboard players set @s swforest 1

# mookan
execute as @a at @s if entity @e[type=marker,tag=mookanMark,distance=5..] run scoreboard players set @s mookan 0
execute as @a at @s if entity @e[type=marker,tag=mookanMark,distance=..5] run scoreboard players set @s mookan 1

# mookan dungeon
execute as @a at @s if entity @e[type=marker,tag=mkdunMark,distance=5..] run scoreboard players set @s mookandun 0
execute as @a at @s if entity @e[type=marker,tag=mkdundMark,distance=..5] run scoreboard players set @s mookandun 1

# elnora
execute as @a at @s if entity @e[type=marker,tag=enMark,distance=5..] run scoreboard players set @s enforest 0
execute as @a at @s if entity @e[type=marker,tag=enMark,distance=..5] run scoreboard players set @s enforest 1

### desert ###
execute as @a at @s if entity @e[type=marker,tag=desertMark,distance=10..] run scoreboard players set @s desert 0
execute as @a at @s if entity @e[type=marker,tag=desertMark,distance=..10] run scoreboard players set @s desert 1

# bers
execute as @a at @s if entity @e[type=marker,tag=brMark,distance=5..] run scoreboard players set @s bers 0
execute as @a at @s if entity @e[type=marker,tag=brMark,distance=..5] run scoreboard players set @s bers 1

# anoh badlands dungeon
execute as @a at @s if entity @e[type=marker,tag=andunMark,distance=5..] run scoreboard players set @s anohdun 0
execute as @a at @s if entity @e[type=marker,tag=andunMark,distance=..5] run scoreboard players set @s anohdun 1

### coldbluff ###
execute as @a at @s if entity @e[type=marker,tag=cbMark,distance=10..] run scoreboard players set @s coldbluff 0
execute as @a at @s if entity @e[type=marker,tag=cbMark,distance=..10] run scoreboard players set @s coldbluff 1

# au
execute as @a at @s if entity @e[type=marker,tag=auMark,distance=5..] run scoreboard players set @s au 0
execute as @a at @s if entity @e[type=marker,tag=auMark,distance=..5] run scoreboard players set @s au 1

# coldbluff dungeon
execute as @a at @s if entity @e[type=marker,tag=cbdunMark,distance=5..] run scoreboard players set @s coldbluffdun 0
execute as @a at @s if entity @e[type=marker,tag=cbdunMark,distance=..5] run scoreboard players set @s coldbluffdun 1

### turware ###
execute as @a at @s if entity @e[type=marker,tag=twMark,distance=10..] run scoreboard players set @s turware 0
execute as @a at @s if entity @e[type=marker,tag=twMark,distance=..10] run scoreboard players set @s turware 1

# bior
execute as @a at @s if entity @e[type=marker,tag=brMark,distance=5..] run scoreboard players set @s bior 0
execute as @a at @s if entity @e[type=marker,tag=brMark,distance=..5] run scoreboard players set @s bior 1

# singwoods forest sfx
execute as @a[scores={swforest=1}] if score @s swforest matches 1 if score %sfxdelay forestsfx matches 0 run function system:music/sfx/init

# wind event chance
execute as @a if score @s windevent matches 0 if score @s wind matches 0 if predicate system:chance_0003 run scoreboard players set @s windevent 1
execute as @a if score @s windevent matches 1 run function system:music/sfx/wind/init

# scoreboard timers and other stuff
execute as @a if score @s delay matches 0.. unless score @s songstop matches 1 unless score @s bossfight matches 1 run scoreboard players remove @s delay 1
execute as @a if score @s wind matches 1.. run scoreboard players remove @s wind 1
execute if score %wind windeventtimer matches 1.. run scoreboard players remove %wind windeventtimer 1
execute as @a if score %wind windeventtimer matches 0 run scoreboard players set @s windevent 0
execute if score %sfxdelay forestsfx matches 1.. run scoreboard players remove %sfxdelay forestsfx 1

# ambient music
execute as @a at @s if score @s delay matches 0 run function system:music/song/init
execute as @a if score @s delay matches 0 run function system:music/delay/delay

execute as @a if score @s windevent matches 1 run scoreboard players set @s windevent 2

execute as @a if score @s wind matches 0 if score @s windevent matches 1..2 run function system:music/sfx/wind/wind

# matches song 31 or 58 make delay much larger (30k-50k ticks) if even used
## 30k - 25 mins
## 50k - 41.6 mins