execute if block ~ ~ ~ air positioned ^ ^ ^0.25 unless entity @s[distance=5.5..] run function player:movement/dash/check_front
execute unless block ~ ~ ~ air positioned ^ ^ ^0.25 positioned ^ ^ ^-1 run tp @p ~ ~ ~
execute if block ~ ~ ~ air positioned ^ ^ ^0.25 if entity @s[distance=5.5..] run tp @p ~ ~ ~