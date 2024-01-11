# summon marker points for the animation to make an "orb" shape

execute at @e[type=zombie_villager,tag=boss_3] run summon armor_stand ~ ~0.75 ~ {Tags:["orb_low","cannon_orb_marker"],NoGravity:1b,Small:1b,Invulnerable:1b,Invisible:1b}
execute at @e[type=zombie_villager,tag=boss_3] run summon armor_stand ~ ~1.5 ~ {Tags:["orb_mid","cannon_orb_marker"],NoGravity:1b,Small:1b,Invulnerable:1b,Invisible:1b}
execute at @e[type=zombie_villager,tag=boss_3] run summon armor_stand ~ ~2.25 ~ {Tags:["orb_high","cannon_orb_marker"],NoGravity:1b,Small:1b,Invulnerable:1b,Invisible:1b}