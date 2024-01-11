execute as @a[scores={mainland=1}] unless score @s singwoods matches 1 unless score @s mookan matches 1 unless score @s singwoodsdun matches 1 unless score @s mookandun matches 1 at @s run function system:music/song/location/mainland/init
execute as @a[scores={coldbluff=1}] at @s run function system:music/song/location/coldbluff/init
execute as @a[scores={desert=1}] at @s run function system:music/song/location/desert/init
execute as @a[scores={turware=1}] run function system:music/song/location/turware/init

execute as @a[scores={singwoods=1}] run function system:music/song/location/mainland/singwoods/init
execute as @a[scores={mookan=1}] run function system:music/song/location/mainland/mookan/init
execute as @a[scores={au=1}] run function system:music/song/location/coldbluff/au/init
execute as @a[scores={bior=1}] run function system:music/song/location/turware/bior/init
execute as @a[scores={bers=1}] run function system:music/song/location/desert/bers/init

execute as @a[scores={singwoodsdun=1}] at @s run function system:music/song/location/mainland/singwoods/singwoodsdun/init
execute as @a[scores={mookandun=1}] run function system:music/song/location/mainland/mookan/mookandun/init
execute as @a[scores={coldbluffdun=1}] run function system:music/song/location/coldbluff/coldbluffdun/init
execute as @a[scores={anohdun=1}] run function system:music/song/location/desert/anohdun/init
