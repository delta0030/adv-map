scoreboard players operation %prev_hp tls_clone = @s mob_health
scoreboard players add %hit_count tls_clone 1

# 4 only accounts for 3 hits because for some reason it automatically starts at 1. 
# i could probably fix that, but if it always starts at 1 then this is reliable enough for me
execute if score %hit_count tls_clone matches 4 run kill @s
execute if score %hit_count tls_clone matches 4 run scoreboard objectives remove tls_clone