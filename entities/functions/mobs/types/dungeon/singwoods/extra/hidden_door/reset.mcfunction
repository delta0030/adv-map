scoreboard players set %door singwoodsdun 0
execute as @e[x=1344,y=46,z=-1215,dx=0,dy=0,dz=0,type=minecraft:item_frame,limit=1] at @s run data modify entity @s ItemRotation set value 0
execute as @e[x=1344,y=46,z=-1215,dx=0,dy=0,dz=0,type=minecraft:item_frame,limit=1] at @s run data modify entity @s Fixed set value 0
fill 1346 40 -1199 1346 40 -1200 spruce_stairs[facing=west]
fill 1346 42 -1199 1346 42 -1200 spruce_stairs[half=top,facing=west]
fill 1345 42 -1199 1345 40 -1200 bookshelf
fill 1343 35 -1190 1341 37 -1190 stone
setblock 1340 36 -1190 mossy_cobblestone
setblock 1340 35 -1190 stone

# storage room
fill 1389 35 -1208 1389 36 -1208 andesite

fill 1377 25 -1207 1377 24 -1207 stone

# tree
fill 1328 25 -1197 1328 24 -1197 stone