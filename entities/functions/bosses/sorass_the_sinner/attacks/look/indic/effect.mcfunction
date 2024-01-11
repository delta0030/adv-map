execute at @s run playsound minecraft:entity.zombie.attack_wooden_door hostile @s ~ ~ ~ 0.2 0.5
execute at @s run playsound minecraft:entity.zombie.infect hostile @s ~ ~ ~ 1 0.5
execute at @s run playsound minecraft:entity.illusioner.prepare_blindness hostile @s ~ ~ ~ 1 1.25
execute if score @s iframes matches 0 run function player:stats/dmg/get_base_dmg/sinner/look
effect give @a[tag=sts_behind] levitation 1 50 true
schedule function entities:bosses/sorass_the_sinner/attacks/look/clear 3t