execute as @e[tag=mdm5] at @r[distance=..25,limit=1] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Small:1b,Tags:["mdm5_frozen"]}
execute as @e[tag=mdm5_frozen] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:630720000,Tags:["mdm5_timer1"]}

# spinny inner circle
execute as @e[tag=mdm5_frozen] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:630720000,Tags:["mdm5_frocircle"]}

# drawing stand placement
execute as @e[tag=mdm5_frozen] at @s run summon armor_stand ^ ^ ^5.5 {NoGravity:1b,Small:1b,Invulnerable:1b,Invisible:1b,Tags:["mdm5_fro1","mdm5_draw"]}
execute as @e[tag=mdm5_frozen] at @s run tp @s ~ ~ ~ ~45 ~
execute as @e[tag=mdm5_frozen] at @s run summon armor_stand ^ ^ ^5.5 {NoGravity:1b,Small:1b,Invulnerable:1b,Invisible:1b,Tags:["mdm5_fro2","mdm5_draw"]}
execute as @e[tag=mdm5_frozen] at @s run tp @s ~ ~ ~ ~45 ~
execute as @e[tag=mdm5_frozen] at @s run summon armor_stand ^ ^ ^5.5 {NoGravity:1b,Small:1b,Invulnerable:1b,Invisible:1b,Tags:["mdm5_fro3","mdm5_draw"]}
execute as @e[tag=mdm5_frozen] at @s run tp @s ~ ~ ~ ~45 ~
execute as @e[tag=mdm5_frozen] at @s run summon armor_stand ^ ^ ^5.5 {NoGravity:1b,Small:1b,Invulnerable:1b,Invisible:1b,Tags:["mdm5_fro4","mdm5_draw"]}
execute as @e[tag=mdm5_frozen] at @s run tp @s ~ ~ ~ ~45 ~
execute as @e[tag=mdm5_frozen] at @s run summon armor_stand ^ ^ ^5.5 {NoGravity:1b,Small:1b,Invulnerable:1b,Invisible:1b,Tags:["mdm5_fro5","mdm5_draw"]}
execute as @e[tag=mdm5_frozen] at @s run tp @s ~ ~ ~ ~45 ~
execute as @e[tag=mdm5_frozen] at @s run summon armor_stand ^ ^ ^5.5 {NoGravity:1b,Small:1b,Invulnerable:1b,Invisible:1b,Tags:["mdm5_fro6","mdm5_draw"]}
execute as @e[tag=mdm5_frozen] at @s run tp @s ~ ~ ~ ~45 ~
execute as @e[tag=mdm5_frozen] at @s run summon armor_stand ^ ^ ^5.5 {NoGravity:1b,Small:1b,Invulnerable:1b,Invisible:1b,Tags:["mdm5_fro7","mdm5_draw"]}
execute as @e[tag=mdm5_frozen] at @s run tp @s ~ ~ ~ ~45 ~
execute as @e[tag=mdm5_frozen] at @s run summon armor_stand ^ ^ ^5.5 {NoGravity:1b,Small:1b,Invulnerable:1b,Invisible:1b,Tags:["mdm5_fro8","mdm5_draw"]}

# drawing stand rotation
execute as @e[tag=mdm5_fro1] at @s run tp @s ~ ~ ~ facing entity @e[tag=mdm5_fro3,limit=1] feet
execute as @e[tag=mdm5_fro2] at @s run tp @s ~ ~ ~ facing entity @e[tag=mdm5_fro4,limit=1] feet
execute as @e[tag=mdm5_fro3] at @s run tp @s ~ ~ ~ facing entity @e[tag=mdm5_fro5,limit=1] feet
execute as @e[tag=mdm5_fro4] at @s run tp @s ~ ~ ~ facing entity @e[tag=mdm5_fro6,limit=1] feet
execute as @e[tag=mdm5_fro5] at @s run tp @s ~ ~ ~ facing entity @e[tag=mdm5_fro7,limit=1] feet
execute as @e[tag=mdm5_fro6] at @s run tp @s ~ ~ ~ facing entity @e[tag=mdm5_fro8,limit=1] feet
execute as @e[tag=mdm5_fro7] at @s run tp @s ~ ~ ~ facing entity @e[tag=mdm5_fro1,limit=1] feet
execute as @e[tag=mdm5_fro8] at @s run tp @s ~ ~ ~ facing entity @e[tag=mdm5_fro2,limit=1] feet

# marker dectector stands
execute as @e[tag=mdm5_draw] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Invulnerable:1b,Invisible:1b,Tags:["mdm5_froMark"]}
execute as @e[tag=mdm5_froMark] at @s run tp @s @e[sort=nearest,limit=1]

# floating snow particles
execute as @e[tag=mdm5_frozen] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:630720000,Tags:["mdm5_particle1","mdm5_part"]}
execute as @e[tag=mdm5_frozen] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:630720000,Tags:["mdm5_particle2","mdm5_part"]}
execute as @e[tag=mdm5_frozen] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:630720000,Tags:["mdm5_particle3","mdm5_part"]}
execute as @e[tag=mdm5_frozen] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:630720000,Tags:["mdm5_particle4","mdm5_part"]}
execute as @e[tag=mdm5_frozen] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:630720000,Tags:["mdm5_particle5","mdm5_part"]}

execute as @e[tag=mdm5_frozen] at @s run spreadplayers ~ ~ 1 3 false @e[tag=mdm5_part]
execute as @e[tag=mdm5_part] at @s run tp @s ~ ~2 ~

playsound minecraft:entities.hostile.dungeon.mookan.runic_wizard.subzero hostile @a ~ ~ ~

# sequencing
function entities:mobs/types/dungeon/mookan/runic_wizard/attacks/subzero/brain

schedule function entities:mobs/types/dungeon/mookan/runic_wizard/attacks/subzero/next 30t

schedule function entities:mobs/types/dungeon/mookan/runic_wizard/attacks/subzero/next1 76t

schedule function entities:mobs/types/dungeon/mookan/runic_wizard/attacks/subzero/clear 140t