scoreboard players operation %hp_var tls_timer = %prev_hp tls_timer
scoreboard players operation %hp_var tls_timer -= @s mob_health

execute unless score %hp_var tls_timer matches 0 run function entities:bosses/the_lost_soul/attacks/teleport/hit_boss