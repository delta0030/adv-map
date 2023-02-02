execute as @a[scores={singwoodsdun=1}] unless score @s swdfloor2 matches 1 unless score @s swdfloor3 matches 1 run function entities:mobs/types/dungeon/singwoods/spawn/floor/floor1
execute as @a[scores={swdfloor2=1}] run function entities:mobs/types/dungeon/singwoods/spawn/floor/floor2
execute as @a[scores={swdfloor3=1}] run function entities:mobs/types/dungeon/singwoods/spawn/floor/floor3