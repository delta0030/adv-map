scoreboard players remove %range tls_clone 1
execute if score %range tls_clone matches 0 run tp @s ~ ~ ~ facing entity @p
execute unless score %range tls_clone matches ..0 positioned ^ ^ ^0.25 unless block ~ ~ ~ air positioned ^ ^ ^-0.25 run tp @s ~ ~ ~ facing entity @p

execute unless score %range tls_clone matches ..0 positioned ^ ^ ^0.25 if block ~ ~ ~ air run function entities:bosses/the_lost_soul/attacks/clone/raycast