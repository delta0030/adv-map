scoreboard players set %pattern sts_cannon 1
scoreboard players set %seq sts_cannon 7

summon armor_stand ~ ~ ~ {Tags:["cannon_marker","can_mark_1","can_mark"],Small:1b,Invisible:1b,Invulnerable:1b,}
summon armor_stand ~ ~ ~ {Tags:["cannon_marker","can_mark_2","can_mark"],Small:1b,Invisible:1b,Invulnerable:1b,}
summon armor_stand ~ ~ ~ {Tags:["cannon_marker","can_mark_3","can_mark"],Small:1b,Invisible:1b,Invulnerable:1b,}
summon armor_stand ~ ~ ~ {Tags:["cannon_marker","can_mark_4","can_mark"],Small:1b,Invisible:1b,Invulnerable:1b,}
summon armor_stand ~ ~ ~ {Tags:["cannon_marker","can_mark_5","can_mark"],Small:1b,Invisible:1b,Invulnerable:1b,}
summon armor_stand ~ ~ ~ {Tags:["cannon_marker","can_mark_6","can_mark"],Small:1b,Invisible:1b,Invulnerable:1b,}
summon armor_stand ~ ~ ~ {Tags:["cannon_marker","can_mark_7","can_mark"],Small:1b,Invisible:1b,Invulnerable:1b,}

schedule function entities:bosses/sorass_the_sinner/attacks/cannon/pattern/random/movement 1t