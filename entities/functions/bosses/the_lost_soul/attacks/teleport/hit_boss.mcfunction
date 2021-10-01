scoreboard players operation %prev_hp tls_timer = @s mob_health
scoreboard players add %hit_count tls_timer 1

# 4 only accounts for 3 hits because for some reason it automatically starts at 1. 
# i could probably fix that, but if it always starts at 1 then this is reliable enough for me
execute if score %hit_count tls_timer matches 4 run function entities:bosses/the_lost_soul/attacks/teleport/init
execute if score %hit_count tls_timer matches 4 run scoreboard players set %hit_count tls_timer 0