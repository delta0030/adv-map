summon zombie ~ ~ ~ {DeathLootTable:"entities:mobs/dungeon/singwoods/armored_zombie",Tags:["swdm2","swdm","new_mob","armored_zombie","swmb1_sum4"],Team:"swdm",PersistenceRequired:1b,CanPickUpLoot:0b,Health:100f,HandItems:[{id:"minecraft:stone_axe",Count:1b,tag:{display:{Name:'{"text":"Stone Hatchet","color":"white","italic":false}',Lore:['{"text":"Once used to chop wood.","color":"dark_gray","italic":false}','{"text":"COMMON","color":"gray","bold":true,"italic":false}']},HideFlags:63,Unbreakable:1b,stone_axe:1b}},{}],HandDropChances:[0.010F,0.085F],ArmorItems:[{id:"minecraft:chainmail_boots",Count:1b,tag:{display:{Name:'{"text":"Broken Chainmail Boots","color":"white","italic":false}',Lore:['{"text":"Falling apart due to age.","color":"dark_gray","italic":false}','{"text":"COMMON","color":"gray","bold":true,"italic":false}']},HideFlags:63,Unbreakable:1b,chain_boots:1b}},{id:"minecraft:chainmail_leggings",Count:1b,tag:{display:{Name:'{"text":"Broken Chainmail Leggings","color":"white","italic":false}',Lore:['{"text":"Falling apart due to age.","color":"dark_gray","italic":false}','{"text":"COMMON","color":"gray","bold":true,"italic":false}']},HideFlags:63,Unbreakable:1b,chain_legs:1b}},{id:"minecraft:chainmail_chestplate",Count:1b,tag:{display:{Name:'{"text":"Broken Chainmail Chestplate","color":"white","italic":false}',Lore:['{"text":"Falling apart due to age.","color":"dark_gray","italic":false}','{"text":"COMMON","color":"gray","bold":true,"italic":false}']},HideFlags:63,Unbreakable:1b,chain_chest:1b}},{id:"minecraft:chainmail_helmet",Count:1b,tag:{display:{Name:'{"text":"Broken Chainmail Helmet","color":"white","italic":false}',Lore:['{"text":"Falling apart due to age.","color":"dark_gray","italic":false}','{"text":"COMMON","color":"gray","bold":true,"italic":false}']},HideFlags:63,Unbreakable:1b,chain_helm:1b}}],ArmorDropChances:[0.010F,0.010F,0.010F,0.010F],Attributes:[{Name:"generic.max_health",Base:100},{Name:"generic.movement_speed",Base:0.2}]}

scoreboard objectives add mob_max_health dummy
scoreboard objectives add mob_health dummy
execute as @e[tag=new_mob] run scoreboard players set @s mob_max_health 20
execute as @e[tag=new_mob] run function entities:mobs/setup