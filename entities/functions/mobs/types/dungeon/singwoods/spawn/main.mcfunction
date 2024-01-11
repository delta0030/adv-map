execute as @a if score @s singwoodsdun matches 0 run scoreboard players remove %timer singwoodsdun 1
execute if score %timer singwoodsdun matches ..0 run scoreboard players set %reset singwoodsdun 1
execute if score %reset singwoodsdun matches 1 run scoreboard players set %timer singwoodsdun 72000

execute as @a[scores={singwoodsdun=1}] if entity @a[x=1379,y=42,z=-1167,distance=..2] run scoreboard players set @s swdfloor2 0
execute as @a[scores={singwoodsdun=1}] if entity @a[x=1344,y=39,z=-1199,distance=..2] run scoreboard players set @s swdfloor2 0

execute as @a[scores={singwoodsdun=1}] if entity @a[x=1341,y=36,z=-1194,distance=..3] run scoreboard players set @s swdfloor2 1
execute as @a[scores={singwoodsdun=1}] if entity @a[x=1379,y=38,z=-1171,distance=..2] run scoreboard players set @s swdfloor2 1

execute as @a[scores={singwoodsdun=1}] if entity @a[scores={swdfloor3=1},x=1274,y=33,z=-1225,dx=180,dy=2,dz=220] run scoreboard players set @s swdfloor2 1
execute as @a[scores={singwoodsdun=1}] if entity @a[scores={swdfloor3=1},x=1274,y=33,z=-1225,dx=180,dy=2,dz=220] run scoreboard players set @s swdfloor3 0
execute as @a[scores={singwoodsdun=1}] if entity @a[scores={swdfloor2=1},x=1274,y=30,z=-1225,dx=180,dy=2,dz=220] run scoreboard players set @s swdfloor3 1
execute as @a[scores={singwoodsdun=1}] if entity @a[scores={swdfloor2=1},x=1274,y=30,z=-1225,dx=180,dy=2,dz=220] run scoreboard players set @s swdfloor2 0

execute if entity @a[scores={singwoodsdun=1},x=1315,y=34,z=-1195,distance=..2] if block 1328 24 -1197 stone run function entities:mobs/types/dungeon/singwoods/extra/hidden_door/tree


execute as @a[scores={singwoodsdun=1}] run function entities:mobs/types/dungeon/singwoods/spawn/summon

execute if score %reset singwoodsdun matches 1 as @a if score @s singwoodsdun matches 0 run function entities:mobs/types/dungeon/singwoods/spawn/reset

execute if score %reset singwoodsdun matches 1 run scoreboard players set %reset singwoodsdun 0