particle soul ~ ~1 ~ 0.5 0.5 0.5 0.01 30 force
stopsound @a hostile bosses.boss_2.loop3
stopsound @a hostile bosses.boss_2.intro3
playsound bosses.boss_2.outro master @a[distance=..40] ~ ~ ~ 3 1

playsound ambient.soul_sand_valley.mood master @a[distance=..40] ~ ~ ~ 2 2

summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["tls_death"]}
function entities:bosses/the_lost_soul/death/soul

tp @s ~ ~-200 ~
kill @s