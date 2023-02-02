scoreboard objectives add swmb1 dummy
scoreboard players set %base swmb1 240
scoreboard players set %atkseq swmb1 240
scoreboard objectives add FireTime dummy
scoreboard players set %song swmb1 0
scoreboard players set %timer swmb1 -1
team add swmb1

bossbar add guardian {"text":"Guardian"}
bossbar set minecraft:guardian name {"text":"Guardian","color":"red"}
bossbar set minecraft:guardian color red
bossbar set minecraft:guardian visible true

summon vindicator 1308.50 24.00 -1185.50 {DeathLootTable:"entities:entities/hostile/dun1/guardian",Health:150f,Tags:["swmb1","new_mob","Guardian","swdm"],Team:"swmb1",HandItems:[{id:"minecraft:iron_axe",Count:1b,tag:{display:{Name:'{"text":"Axe of Ruin","color":"aqua","italic":false}',Lore:['{"text":"A mystical weapon once lost in time.","color":"light_purple","italic":false}','{"text":"RARE","color":"blue","bold":true,"italic":false}']},HideFlags:63,Unbreakable:1b,ye_faithful:1b,Enchantments:[{}]}},{}],HandDropChances:[0.040F,0.085F],ArmorItems:[{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Fire Berry","color":"red","italic":false}',Lore:['[{"text":"Gives the player the ability to roam in the","color":"dark_gray","italic":false},{"text":" underworld","color":"red","italic":false},{"text":".","color":"dark_gray","italic":false}]','{"text":"UNCOMMON","color":"green","bold":true,"italic":false}']},HideFlags:63,Unbreakable:1b,CustomModelData:10000002,fire_berry:1b}},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Frost Berry","color":"aqua","italic":false}',Lore:['[{"text":"Gives the player the ability to explore the","color":"dark_gray","italic":false},{"text":" coldest","color":"blue","italic":false},{"text":" of regions.","color":"dark_gray","italic":false}]','{"text":"UNCOMMON","color":"green","bold":true,"italic":false}']},HideFlags:63,Unbreakable:1b,CustomModelData:10000003,frost_berry:1b}},{}],ArmorDropChances:[0.085F,0.085F,0.012F,0.012F],Attributes:[{Name:"generic.max_health",Base:150},{Name:"generic.armor",Base:3},{Name:"generic.follow_range",Base:100}]}
function entities:mobs/types/dungeon/singwoods/guardian/brain
function entities:mobs/types/dungeon/singwoods/guardian/rng/init/init
function entities:mobs/types/dungeon/singwoods/guardian/rng2/init/init
scoreboard players set out math3 0

execute at @e[type=vindicator,tag=swmb1] run bossbar set minecraft:guardian players @a[distance=..40]
execute as @a[scores={singwoodsdun=1}] if entity @e[type=vindicator,tag=swmb1] run scoreboard players set @s bossfight 1

scoreboard objectives add mob_max_health dummy
scoreboard objectives add mob_health dummy
execute as @e[tag=new_mob] run scoreboard players set @s mob_max_health 150
scoreboard players operation @e[type=vindicator,tag=swmb1] mob_max_health *= %playercount HealthScale
execute as @e[tag=new_mob] run scoreboard players set @s levelingPoints 50
execute as @e[tag=new_mob] run function entities:mobs/setup

execute store result bossbar guardian max run scoreboard players get @e[type=minecraft:vindicator,tag=swmb1,limit=1] mob_max_health

function entities:mobs/types/dungeon/singwoods/guardian/song/start