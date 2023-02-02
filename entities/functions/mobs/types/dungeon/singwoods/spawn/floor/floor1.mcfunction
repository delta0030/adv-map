# spawn mob combo
execute if entity @a[x=1403,y=47,z=-1181,distance=..25] if score %1 singwoodsdun matches 0 positioned 1403 47 -1181 run function entities:mobs/types/dungeon/singwoods/spawn/combo
execute if entity @a[x=1391,y=47,z=-1198,distance=..25] if score %2 singwoodsdun matches 0 positioned 1391 47 -1198 run function entities:mobs/types/dungeon/singwoods/spawn/combo
execute if entity @a[x=1391,y=47,z=-1181,distance=..25] if score %3 singwoodsdun matches 0 positioned 1391 47 -1181 run function entities:mobs/types/dungeon/singwoods/spawn/combo
execute if entity @a[x=1396,y=47,z=-1206,distance=..25] if score %4 singwoodsdun matches 0 positioned 1396 47 -1206 run function entities:mobs/types/dungeon/singwoods/spawn/combo
execute if entity @a[x=1400,y=47,z=-1218,distance=..25] if score %5 singwoodsdun matches 0 positioned 1400 47 -1218 run function entities:mobs/types/dungeon/singwoods/spawn/combo
execute if entity @a[x=1381,y=47,z=-1206,distance=..25] if score %6 singwoodsdun matches 0 positioned 1381 47 -1206 run function entities:mobs/types/dungeon/singwoods/spawn/combo
execute if entity @a[x=1385,y=47,z=-1172,distance=..25] if score %7 singwoodsdun matches 0 positioned 1385 47 -1172 run function entities:mobs/types/dungeon/singwoods/spawn/combo
execute if entity @a[x=1375,y=47,z=-1172,distance=..25] if score %8 singwoodsdun matches 0 positioned 1375 47 -1172 run function entities:mobs/types/dungeon/singwoods/spawn/combo
execute if entity @a[x=1367,y=47,z=-1172,distance=..25] if score %9 singwoodsdun matches 0 positioned 1367 47 -1172 run function entities:mobs/types/dungeon/singwoods/spawn/combo
execute if entity @a[x=1375,y=47,z=-1198,distance=..25] if score %10 singwoodsdun matches 0 positioned 1374 47 -1198 run function entities:mobs/types/dungeon/singwoods/spawn/combo
execute if entity @a[x=1374,y=47,z=-1214,distance=..25] if score %11 singwoodsdun matches 0 positioned 1374 47 -1214 run function entities:mobs/types/dungeon/singwoods/spawn/combo
execute if entity @a[x=1360,y=47,z=-1225,distance=..25] if score %12 singwoodsdun matches 0 positioned 1360 47 -1225 run function entities:mobs/types/dungeon/singwoods/spawn/combo
execute if entity @a[x=1360,y=47,z=-1187,distance=..25] if score %13 singwoodsdun matches 0 positioned 1360 47 -1187 run function entities:mobs/types/dungeon/singwoods/spawn/combo
execute if entity @a[x=1346,y=43,z=-1206,distance=..25] if score %14 singwoodsdun matches 0 positioned 1346 43 -1206 run function entities:mobs/types/dungeon/singwoods/spawn/combo
execute if entity @a[x=1366,y=40,z=-1206,distance=..25] if score %15 singwoodsdun matches 0 positioned 1366 40 -1206 run function entities:mobs/types/dungeon/singwoods/spawn/combo
execute if entity @a[x=1357,y=40,z=-1218,distance=..25] if score %16 singwoodsdun matches 0 positioned 1357 40 -1218 run function entities:mobs/types/dungeon/singwoods/spawn/combo

# set scores to prevent multiple spawns
execute if entity @a[x=1403,y=47,z=-1181,distance=..25] run scoreboard players set %1 singwoodsdun 1
execute if entity @a[x=1391,y=47,z=-1198,distance=..25] run scoreboard players set %2 singwoodsdun 1
execute if entity @a[x=1391,y=47,z=-1181,distance=..25] run scoreboard players set %3 singwoodsdun 1
execute if entity @a[x=1396,y=47,z=-1206,distance=..25] run scoreboard players set %4 singwoodsdun 1
execute if entity @a[x=1400,y=47,z=-1218,distance=..25] run scoreboard players set %5 singwoodsdun 1
execute if entity @a[x=1381,y=47,z=-1206,distance=..25] run scoreboard players set %6 singwoodsdun 1
execute if entity @a[x=1385,y=47,z=-1172,distance=..25] run scoreboard players set %7 singwoodsdun 1
execute if entity @a[x=1375,y=47,z=-1172,distance=..25] run scoreboard players set %8 singwoodsdun 1
execute if entity @a[x=1367,y=47,z=-1172,distance=..25] run scoreboard players set %9 singwoodsdun 1
execute if entity @a[x=1375,y=47,z=-1198,distance=..25] run scoreboard players set %10 singwoodsdun 1
execute if entity @a[x=1374,y=47,z=-1214,distance=..25] run scoreboard players set %11 singwoodsdun 1
execute if entity @a[x=1360,y=47,z=-1225,distance=..25] run scoreboard players set %12 singwoodsdun 1
execute if entity @a[x=1360,y=47,z=-1187,distance=..25] run scoreboard players set %13 singwoodsdun 1
execute if entity @a[x=1346,y=43,z=-1206,distance=..25] run scoreboard players set %14 singwoodsdun 1
execute if entity @a[x=1366,y=40,z=-1206,distance=..25] run scoreboard players set %15 singwoodsdun 1
execute if entity @a[x=1357,y=40,z=-1218,distance=..25] run scoreboard players set %16 singwoodsdun 1
execute if entity @a[x=1357,y=40,z=-1193,distance=..25] run scoreboard players set %17 singwoodsdun 1