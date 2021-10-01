effect give @a[tag=jump_active] levitation 1 15 true
execute as @a[tag=jump_active] run kill @e[type=boat,tag=jump_platform,sort=nearest,limit=1]
execute as @a[tag=jump_active] run kill @e[type=armor_stand,tag=platform_passenger,sort=nearest,limit=2]
tag @a[tag=jump_active] remove jump_active