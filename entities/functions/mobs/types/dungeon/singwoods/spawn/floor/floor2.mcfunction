# spawn mob combo
execute if entity @a[x=1357,y=40,z=-1193,distance=..25] if score %17 singwoodsdun matches 0 if score @s swdfloor2 matches 1 positioned 1357 40 -1193 run function entities:mobs/types/dungeon/singwoods/spawn/combo
execute if entity @a[x=1375,y=35,z=-1178,distance=..25] if score %18 singwoodsdun matches 0 if score @s swdfloor2 matches 1 positioned 1375 35 -1178 run function entities:mobs/types/dungeon/singwoods/spawn/combo
execute if entity @a[x=1373,y=35,z=-1168,distance=..25] if score %19 singwoodsdun matches 0 if score @s swdfloor2 matches 1 positioned 1373 35 -1168 run function entities:mobs/types/dungeon/singwoods/spawn/combo
execute if entity @a[x=1365,y=35,z=-1168,distance=..25] if score %20 singwoodsdun matches 0 if score @s swdfloor2 matches 1 positioned 1365 35 -1168 run function entities:mobs/types/dungeon/singwoods/spawn/combo
execute if entity @a[x=1365,y=35,z=-1178,distance=..25] if score %21 singwoodsdun matches 0 if score @s swdfloor2 matches 1 positioned 1365 35 -1178 run function entities:mobs/types/dungeon/singwoods/spawn/combo
execute if entity @a[x=1381,y=35,z=-1187,distance=..25] if score %22 singwoodsdun matches 0 if score @s swdfloor2 matches 1 positioned 1381 35 -1187 run function entities:mobs/types/dungeon/singwoods/spawn/combo
execute if entity @a[x=1396,y=35,z=-1179,distance=..25] if score %23 singwoodsdun matches 0 if score @s swdfloor2 matches 1 positioned 1396 35 -1179 run function entities:mobs/types/dungeon/singwoods/spawn/combo
execute if entity @a[x=1402,y=35,z=-1162,distance=..25] if score %24 singwoodsdun matches 0 if score @s swdfloor2 matches 1 positioned 1402 35 -1162 run function entities:mobs/types/dungeon/singwoods/spawn/combo
execute if entity @a[x=1410,y=35,z=-1157,distance=..25] if score %25 singwoodsdun matches 0 if score @s swdfloor2 matches 1 positioned 1410 35 -1157 run function entities:mobs/types/dungeon/singwoods/spawn/combo
execute if entity @a[x=1406,y=35,z=-1148,distance=..25] if score %26 singwoodsdun matches 0 if score @s swdfloor2 matches 1 positioned 1406 35 -1148 run function entities:mobs/types/dungeon/singwoods/spawn/combo
execute if entity @a[x=1397,y=35,z=-1147,distance=..25] if score %27 singwoodsdun matches 0 if score @s swdfloor2 matches 1 positioned 1397 35 -1147 run function entities:mobs/types/dungeon/singwoods/spawn/combo
execute if entity @a[x=1396,y=35,z=-1195,distance=..25] if score %28 singwoodsdun matches 0 if score @s swdfloor2 matches 1 positioned 1396 35 -1195 run function entities:mobs/types/dungeon/singwoods/spawn/combo
execute if entity @a[x=1396,y=35,z=-1205,distance=..25] if score %29 singwoodsdun matches 0 if score @s swdfloor2 matches 1 positioned 1396 35 -1205 run function entities:mobs/types/dungeon/singwoods/spawn/combo
execute if entity @a[x=1393,y=35,z=-1211,distance=..25] if score %30 singwoodsdun matches 0 if score @s swdfloor2 matches 1 positioned 1393 35 -1211 run function entities:mobs/types/dungeon/singwoods/spawn/combo
execute if entity @a[x=1364,y=35,z=-1187,distance=..25] if score %31 singwoodsdun matches 0 if score @s swdfloor2 matches 1 positioned 1364 35 -1187 run function entities:mobs/types/dungeon/singwoods/spawn/combo
execute if entity @a[x=1348,y=35,z=-1187,distance=..25] if score %32 singwoodsdun matches 0 if score @s swdfloor2 matches 1 positioned 1348 35 -1187 run function entities:mobs/types/dungeon/singwoods/spawn/combo
execute if entity @a[x=1310,y=35,z=-1183,distance=..25] if score %33 singwoodsdun matches 0 if score @s swdfloor2 matches 1 positioned 1310 35 -1183 run function entities:mobs/types/dungeon/singwoods/spawn/combo
execute if entity @a[x=1302,y=35,z=-1182,distance=..25] if score %34 singwoodsdun matches 0 if score @s swdfloor2 matches 1 positioned 1302 35 -1182 run function entities:mobs/types/dungeon/singwoods/spawn/combo
execute if entity @a[x=1300,y=35,z=-1192,distance=..25] if score %35 singwoodsdun matches 0 if score @s swdfloor2 matches 1 positioned 1300 35 -1192 run function entities:mobs/types/dungeon/singwoods/spawn/combo

# set scores to prevent multiple spawns
execute if entity @a[x=1375,y=35,z=-1178,distance=..25] if score @s swdfloor2 matches 1 run scoreboard players set %18 singwoodsdun 1
execute if entity @a[x=1373,y=35,z=-1168,distance=..25] if score @s swdfloor2 matches 1 run scoreboard players set %19 singwoodsdun 1
execute if entity @a[x=1365,y=35,z=-1168,distance=..25] if score @s swdfloor2 matches 1 run scoreboard players set %20 singwoodsdun 1
execute if entity @a[x=1365,y=35,z=-1178,distance=..25] if score @s swdfloor2 matches 1 run scoreboard players set %21 singwoodsdun 1
execute if entity @a[x=1381,y=35,z=-1187,distance=..25] if score @s swdfloor2 matches 1 run scoreboard players set %22 singwoodsdun 1
execute if entity @a[x=1396,y=35,z=-1179,distance=..25] if score @s swdfloor2 matches 1 run scoreboard players set %23 singwoodsdun 1
execute if entity @a[x=1402,y=35,z=-1162,distance=..25] if score @s swdfloor2 matches 1 run scoreboard players set %24 singwoodsdun 1
execute if entity @a[x=1410,y=35,z=-1157,distance=..25] if score @s swdfloor2 matches 1 run scoreboard players set %25 singwoodsdun 1
execute if entity @a[x=1406,y=35,z=-1148,distance=..25] if score @s swdfloor2 matches 1 run scoreboard players set %26 singwoodsdun 1
execute if entity @a[x=1397,y=35,z=-1147,distance=..25] if score @s swdfloor2 matches 1 run scoreboard players set %27 singwoodsdun 1
execute if entity @a[x=1396,y=35,z=-1195,distance=..25] if score @s swdfloor2 matches 1 run scoreboard players set %28 singwoodsdun 1
execute if entity @a[x=1396,y=35,z=-1205,distance=..25] if score @s swdfloor2 matches 1 run scoreboard players set %29 singwoodsdun 1
execute if entity @a[x=1393,y=35,z=-1211,distance=..25] if score @s swdfloor2 matches 1 run scoreboard players set %30 singwoodsdun 1
execute if entity @a[x=1364,y=35,z=-1187,distance=..25] if score @s swdfloor2 matches 1 run scoreboard players set %31 singwoodsdun 1
execute if entity @a[x=1348,y=35,z=-1187,distance=..25] if score @s swdfloor2 matches 1 run scoreboard players set %32 singwoodsdun 1
execute if entity @a[x=1310,y=35,z=-1183,distance=..25] if score @s swdfloor2 matches 1 run scoreboard players set %33 singwoodsdun 1
execute if entity @a[x=1302,y=35,z=-1182,distance=..25] if score @s swdfloor2 matches 1 run scoreboard players set %34 singwoodsdun 1
execute if entity @a[x=1300,y=35,z=-1192,distance=..25] if score @s swdfloor2 matches 1 run scoreboard players set %35 singwoodsdun 1
