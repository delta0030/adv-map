summon armor_stand ^ ^-0.5 ^1 {NoGravity:1b,Tags:["tls_fb_stand"],Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:fireball",Tags:["tls_fb"]}]}
data modify entity @e[type=armor_stand,tag=tls_fb_stand,limit=1] Rotation[0] set from entity @s Rotation[0]
playsound entity.blaze.shoot hostile @a ~ ~ ~ 3 1
function entities:bosses/the_lost_soul/attacks/homing_fireball/main