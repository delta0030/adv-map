execute as @e[x=1344,y=46,z=-1215,dx=0,dy=0,dz=0,type=minecraft:item_frame,limit=1] at @s run data modify entity @s Fixed set value 1
scoreboard players set %door singwoodsdun 1
execute positioned 1346 40 -1200 run playsound block.piston.contract ambient @a 1346 40 -1200 2 0.6
fill 1345 42 -1199 1346 40 -1200 air
fill 1341 36 -1190 1342 35 -1190 air

fill 1343 37 -1190 1343 36 -1190 mossy_cobblestone_wall
setblock 1343 35 -1190 andesite_wall
setblock 1340 35 -1190 cobblestone_wall
setblock 1340 36 -1190 mossy_cobblestone_wall
setblock 1341 37 -1190 mossy_cobblestone_stairs[half=top,facing=west]
setblock 1342 37 -1190 stone_slab[type=top]

# storage room 
fill 1389 35 -1208 1389 36 -1208 air
setblock 1389 36 -1208 andesite_slab[type=top]

setblock 1377 25 -1207 stone_slab[type=top]
setblock 1377 24 -1207 air