execute positioned ~ ~1.5 ~ run particle dust 0.071 0.847 0.808 1 ~ ~ ~ 0.5 0.5 0.5 0.1 30 force
execute positioned ^ ^ ^0.8 if block ~ ~0.7 ~ air run tp ~ ~ ~
execute positioned ^ ^ ^0.8 unless block ~ ~0.7 ~ air positioned ^ ^ ^-1.2 run function entities:bosses/the_lost_soul/attacks/dash/end

execute as @a[dx=0,scores={iframes=0}] run function entities:bosses/the_lost_soul/attacks/dash/dmg