# center
execute as @e[type=witch,tag=mdm4] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["mdm4_place","mdm4_as"]}
execute as @e[type=witch,tag=mdm4] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["mdm4_draw","mdm4_as"]}
execute as @e[type=witch,tag=mdm4] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["mdm4_draw1","mdm4_as"]}
execute as @e[type=witch,tag=mdm4] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["mdm4_draw2","mdm4_as"]}

# making extra effect particles
execute as @e[tag=mdm4] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["mdm4_float","mdm4_as"]}
execute as @e[tag=mdm4] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["mdm4_float","mdm4_as"]}
execute as @e[tag=mdm4] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["mdm4_float","mdm4_as"]}
execute as @e[tag=mdm4] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["mdm4_float","mdm4_as"]}
execute as @e[tag=mdm4] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["mdm4_float","mdm4_as"]}

# spreading float particles
execute as @e[tag=mdm4] at @s run spreadplayers ~ ~ 1 5 false @e[tag=mdm4_float]

# making verticies
execute as @e[tag=mdm4_place] at @s run tp @s ~ ~ ~ ~72 ~
execute at @e[tag=mdm4_place] run summon armor_stand ^ ^ ^7 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["mdm4_drawMark1","mdm4_dum","mdm4_as"]}
execute at @e[tag=mdm4_place] run summon armor_stand ^ ^ ^7 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["mdm4_line1","mdm4_vis","mdm4_as"]}

execute as @e[tag=mdm4_place] at @s run tp @s ~ ~ ~ ~72 ~
execute at @e[tag=mdm4_place] run summon armor_stand ^ ^ ^7 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["mdm4_drawMark2","mdm4_dum","mdm4_as"]}
execute at @e[tag=mdm4_place] run summon armor_stand ^ ^ ^7 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["mdm4_line2","mdm4_vis","mdm4_as"]}

execute as @e[tag=mdm4_place] at @s run tp @s ~ ~ ~ ~72 ~
execute at @e[tag=mdm4_place] run summon armor_stand ^ ^ ^7 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["mdm4_drawMark3","mdm4_dum","mdm4_as"]}
execute at @e[tag=mdm4_place] run summon armor_stand ^ ^ ^7 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["mdm4_line3","mdm4_vis","mdm4_as"]}

execute as @e[tag=mdm4_place] at @s run tp @s ~ ~ ~ ~72 ~
execute at @e[tag=mdm4_place] run summon armor_stand ^ ^ ^7 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["mdm4_drawMark4","mdm4_dum","mdm4_as"]}
execute at @e[tag=mdm4_place] run summon armor_stand ^ ^ ^7 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["mdm4_line4","mdm4_vis","mdm4_as"]}

execute as @e[tag=mdm4_place] at @s run tp @s ~ ~ ~ ~72 ~
execute at @e[tag=mdm4_place] run summon armor_stand ^ ^ ^7 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["mdm4_drawMark5","mdm4_dum","mdm4_as"]}
execute at @e[tag=mdm4_place] run summon armor_stand ^ ^ ^7 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["mdm4_line5","mdm4_vis","mdm4_as"]}

# setting line directions
execute as @e[tag=mdm4_line1] at @s run tp @s ~ ~ ~ facing entity @e[tag=mdm4_drawMark3,limit=1] feet

execute as @e[tag=mdm4_line2] at @s run tp @s ~ ~ ~ facing entity @e[tag=mdm4_drawMark4,limit=1] feet

execute as @e[tag=mdm4_line3] at @s run tp @s ~ ~ ~ facing entity @e[tag=mdm4_drawMark5,limit=1] feet

execute as @e[tag=mdm4_line4] at @s run tp @s ~ ~ ~ facing entity @e[tag=mdm4_drawMark1,limit=1] feet

execute as @e[tag=mdm4_line5] at @s run tp @s ~ ~ ~ facing entity @e[tag=mdm4_drawMark2,limit=1] feet

# clearing
kill @e[tag=mdm4_place]
function entities:mobs/types/dungeon/mookan/bewitching_witch/attacks/hex/drawing

execute at @e[tag=mdm4] run schedule function entities:mobs/types/dungeon/mookan/bewitching_witch/attacks/hex/effects 53t