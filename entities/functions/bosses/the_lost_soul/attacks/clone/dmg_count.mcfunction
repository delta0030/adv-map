scoreboard players operation %hp_var tls_clone = %prev_hp tls_clone
scoreboard players operation %hp_var tls_clone -= @s mob_health

execute unless score %hp_var tls_clone matches 0 run function entities:bosses/the_lost_soul/attacks/clone/dmg