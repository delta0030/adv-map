scoreboard players set %phase sts_phase 3
execute if score %tick sts_music matches 0 if score %phase sts_phase matches 3 run scoreboard players set %tick sts_music 1


execute if score %phase sts_phase matches 3 as @a at @s if entity @e[type=zombie_villager,tag=boss_3,distance=..2] run function player:stats/dmg/get_base_dmg/sinner/lightning

execute at @e[type=armor_stand,tag=phase_3_marker] run particle large_smoke ~ ~ ~ 0.5 1.5 0.5 0 250
execute at @e[type=armor_stand,tag=boss_3_center] run particle large_smoke ~ ~ ~ 0.5 1.5 0.5 0 250

scoreboard players set %cal sts_attacks 0
scoreboard players set %inatt sts_attacks 0

function entities:bosses/sorass_the_sinner/attacks/elixir/start

function entities:bosses/sorass_the_sinner/music/p3