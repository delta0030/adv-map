# control phases
function entities:bosses/the_lost_soul/calc_perc
execute if score @s[tag=!phase1] perc_hp matches 66.. run tag @s add phase1
execute if score @s[tag=!phase2] perc_hp matches 33..65 if score %intro1 tls_music matches 1 run function entities:bosses/the_lost_soul/phases/phase2
execute if score @s[tag=!phase2.5] perc_hp matches 0..32 unless score %intro2 tls_music matches 1 run function entities:bosses/the_lost_soul/phases/phase2.5
execute if score @s[tag=!phase3,tag=!phase4] perc_hp matches 0..32 if score %intro2 tls_music matches 1 run function entities:bosses/the_lost_soul/phases/phase3
execute if score @s[tag=phase3,tag=!phase4] perc_hp matches 0..32 if score %timer tls_music matches 325.. run function entities:bosses/the_lost_soul/phases/phase4

execute store result score %max+ tls_timer run scoreboard players add %max tls_timer 1
scoreboard players remove %max tls_timer 1

execute if score @s tls_timer >= %max+ tls_timer run scoreboard players set @s tls_timer 0

# give resistance since no mob tag
effect give @s resistance 1 10 true

# set bossbar
bossbar set lost_soul players @a[distance=..50]
execute store result bossbar lost_soul value run scoreboard players get @s mob_health

# choose attack
execute if score @s tls_timer = %max tls_timer run function entities:bosses/the_lost_soul/attacks/control

# extra attack controls
execute if entity @s[tag=phase1] run function entities:bosses/the_lost_soul/attacks/teleport/dmg_count
execute as @e[type=stray,tag=boss_2_clone] run function entities:bosses/the_lost_soul/attacks/clone/dmg_count
execute if entity @s[tag=triple_shot] run function entities:bosses/the_lost_soul/attacks/triple_shot/main
execute if score %count tls_poison_count matches 8.. run function entities:bosses/the_lost_soul/attacks/poison_clouds/effect/main
execute if entity @s[tag=phase3] run function entities:bosses/the_lost_soul/attacks/pufferfish/timer
execute if entity @s[tag=phase3] positioned ~ ~1.3 ~ run function entities:bosses/the_lost_soul/p3_pause
execute if entity @s[tag=phase4,tag=!triple_shot] run tp @s ~ ~ ~ facing entity @p

# music
function entities:bosses/the_lost_soul/music/main

# death
execute if score @s mob_health matches ..0 run function entities:bosses/the_lost_soul/death/init

scoreboard players add @s tls_timer 1