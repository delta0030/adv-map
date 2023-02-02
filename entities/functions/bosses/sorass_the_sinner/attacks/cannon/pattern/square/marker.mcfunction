scoreboard players set %pattern sts_cannon 4
scoreboard players set %seq sts_cannon 8

summon armor_stand ~-1.5 ~ ~-1.5 {Tags:["cannon_marker","can_mark_1","can_mark"],Small:1b,Invisible:1b,Invulnerable:1b}
summon armor_stand ~ ~ ~-1.5 {Tags:["cannon_marker","can_mark_2","can_mark"],Small:1b,Invisible:1b,Invulnerable:1b}
summon armor_stand ~1.5 ~ ~-1.5 {Tags:["cannon_marker","can_mark_3","can_mark"],Small:1b,Invisible:1b,Invulnerable:1b}
summon armor_stand ~1.5 ~ ~ {Tags:["cannon_marker","can_mark_4","can_mark"],Small:1b,Invisible:1b,Invulnerable:1b}
summon armor_stand ~1.5 ~ ~1.5 {Tags:["cannon_marker","can_mark_5","can_mark"],Small:1b,Invisible:1b,Invulnerable:1b}
summon armor_stand ~ ~ ~1.5 {Tags:["cannon_marker","can_mark_6","can_mark"],Small:1b,Invisible:1b,Invulnerable:1b}
summon armor_stand ~-1.5 ~ ~1.5 {Tags:["cannon_marker","can_mark_7","can_mark"],Small:1b,Invisible:1b,Invulnerable:1b}
summon armor_stand ~-1.5 ~ ~ {Tags:["cannon_marker","can_mark_8","can_mark"],Small:1b,Invisible:1b,Invulnerable:1b}

schedule function entities:bosses/sorass_the_sinner/attacks/cannon/pattern/generic_movement 1t