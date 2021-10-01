tag @e[tag=mob,nbt={HurtTime:10s},scores={iframes=0},sort=nearest,limit=1] add dmg

execute store result score @e[tag=mob,tag=dmg] base_dmg run data get entity @s SelectedItem.tag.data.stats.base_dmg
execute store result score @e[tag=mob,tag=dmg] iframes run data get entity @s SelectedItem.tag.data.stats.iframes

execute as @e[tag=mob,tag=dmg] run data modify entity @s Health set value 100f

execute as @e[tag=mob,tag=dmg] run function entities:dmg/calc_new_hp

advancement revoke @s only entities:dmg/physical_dmg
tag @e[tag=mob,tag=dmg] remove dmg

# for tls
execute if entity @e[tag=!mob,tag=boss_2,nbt={HurtTime:10s}] run function entities:bosses/the_lost_soul/dmg_attempt