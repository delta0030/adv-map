execute as @e[type=vindicator,tag=swmb1] at @s run summon minecraft:armor_stand ~ ~0.25 ~ {Tags:["swmb1_circle"],Invisible:1b,Invulnerable:1b}
execute as @e[type=vindicator,tag=swmb1] at @s run summon minecraft:armor_stand ~ ~1.75 ~ {Tags:["swmb1_circle1"],NoGravity:1b,Invisible:1b,Invulnerable:1b}

execute at @e[type=vindicator,tag=swmb1] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Tags:["swmb1_FroRise"],Small:1b,Invisible:1b,Invulnerable:1b}
execute at @e[type=vindicator,tag=swmb1] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Tags:["swmb1_FroRise"],Small:1b,Invisible:1b,Invulnerable:1b}
execute at @e[type=vindicator,tag=swmb1] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Tags:["swmb1_FroRise"],Small:1b,Invisible:1b,Invulnerable:1b}
execute at @e[type=vindicator,tag=swmb1] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Tags:["swmb1_FroRise"],Small:1b,Invisible:1b,Invulnerable:1b}
execute at @e[type=vindicator,tag=swmb1] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Tags:["swmb1_FroRise"],Small:1b,Invisible:1b,Invulnerable:1b}
execute at @e[type=vindicator,tag=swmb1] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Tags:["swmb1_FroRise"],Small:1b,Invisible:1b,Invulnerable:1b}
execute at @e[type=vindicator,tag=swmb1] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Tags:["swmb1_FroRise"],Small:1b,Invisible:1b,Invulnerable:1b}
execute at @e[type=vindicator,tag=swmb1] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Tags:["swmb1_FroRise"],Small:1b,Invisible:1b,Invulnerable:1b}
execute at @e[type=vindicator,tag=swmb1] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Tags:["swmb1_FroRise"],Small:1b,Invisible:1b,Invulnerable:1b}
execute at @e[type=vindicator,tag=swmb1] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Tags:["swmb1_FroRise"],Small:1b,Invisible:1b,Invulnerable:1b}
execute at @e[type=vindicator,tag=swmb1] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Tags:["swmb1_FroRise"],Small:1b,Invisible:1b,Invulnerable:1b}
execute at @e[type=vindicator,tag=swmb1] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Tags:["swmb1_FroRise"],Small:1b,Invisible:1b,Invulnerable:1b}
execute as @e[type=vindicator,tag=swmb1] at @s run spreadplayers ~ ~ 0 6.5 false @e[type=minecraft:armor_stand,tag=swmb1_FroRise]
execute as @e[type=armor_stand,tag=swmb1_FroRise] at @s run tp @s ~ ~-0.25 ~

function entities:mobs/types/dungeon/singwoods/guardian/frost/indic_test

execute as @e[type=vindicator,tag=swmb1] at @s run effect give @e[type=vindicator,tag=swmb1] slowness 10000 150 true

schedule function entities:mobs/types/dungeon/singwoods/guardian/frost/particle 49t
schedule function entities:mobs/types/dungeon/singwoods/guardian/frost/init 50t