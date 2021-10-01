execute if block ~ ~ ~ air rotated ~ 25 run tp @s ^ ^ ^0.25
execute unless block ~ ~ ~ air rotated ~ 0 run tp @s ^ ^ ^0.25

execute as @a[dx=0] if score @s iframes matches 0 run function entities:bosses/the_lost_soul/attacks/pufferfish/dmg

execute unless block ~ ~0.1 ~ air run kill @s