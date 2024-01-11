execute as @e[type=witch,tag=mdm4] at @s run summon armor_stand ~ ~1 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["mdm4_hom"]}
playsound minecraft:entity.witch.throw hostile @a ~ ~ ~
playsound minecraft:block.conduit.attack.target master @a ~ ~ ~ 1 0

function entities:mobs/types/dungeon/mookan/bewitching_witch/attacks/homing_blast/brain