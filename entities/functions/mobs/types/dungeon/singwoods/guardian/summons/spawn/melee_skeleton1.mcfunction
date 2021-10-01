summon skeleton ~ ~ ~ {DeathLootTable:"entities:mobs/dungeon/singwoods/melee_skeleton",Tags:["swdm1","swdm","melee_skeleton","new_mob","swmb1_sum1"],Team:"swdm",HandItems:[{id:"minecraft:stone_sword",Count:1b,tag:{display:{Name:'{"text":"Ruined Sword","color":"white","italic":false}',Lore:['{"text":"A sword often found among new adventurers.","color":"dark_gray","italic":false}','{"text":"COMMON","color":"gray","bold":true,"italic":false}']},HideFlags:63,Unbreakable:1b,stone_sword:1b}},{}],HandDropChances:[0.100F,0.085F],Attributes:[{Name:"generic.max_health",Base:100}],Health:100f}

scoreboard objectives add mob_max_health dummy
scoreboard objectives add mob_health dummy
execute as @e[tag=new_mob] run scoreboard players set @s mob_max_health 10
execute as @e[tag=new_mob] run function entities:mobs/setup