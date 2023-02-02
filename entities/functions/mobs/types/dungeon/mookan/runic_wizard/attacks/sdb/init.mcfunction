execute as @e[type=skeleton,tag=mdm5] at @s run summon armor_stand ~ ~1 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["mdm5_sdb"]}
execute as @e[type=skeleton,tag=mdm5] at @s run particle flash ~ ~ ~ 0.1 0.1 0.1 0 5
execute as @e[type=skeleton,tag=mdm5] at @s run playsound minecraft:entity.evoker.prepare_attack hostile @a ~ ~ ~ 5 1

function entities:mobs/types/dungeon/mookan/runic_wizard/attacks/sdb/brain