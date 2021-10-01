scoreboard objectives add raycast_range dummy
scoreboard objectives add raycast_reflect dummy

# summon 3 trajectories
execute positioned ~ ~0.3 ~ run function entities:bosses/the_lost_soul/attacks/triple_shot/fire/summon_projectiles
execute positioned ~ ~0.3 ~ rotated ~-30 ~ run function entities:bosses/the_lost_soul/attacks/triple_shot/fire/summon_projectiles
execute positioned ~ ~0.3 ~ rotated ~30 ~ run function entities:bosses/the_lost_soul/attacks/triple_shot/fire/summon_projectiles

playsound minecraft:entity.blaze.hurt master @a[distance=..60] ~ ~ ~ 3 1
tag @s add fired