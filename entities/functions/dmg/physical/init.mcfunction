execute as @e[tag=mob] if score @s entityid = $hit entityid if score @s iframes matches 0 run tag @s add dmg
execute store result score @e[tag=mob,tag=dmg] base_dmg run data get entity @s SelectedItem.tag.data.stats.base_dmg
execute store result score @e[tag=mob,tag=dmg] iframes run data get entity @s SelectedItem.tag.data.stats.iframes
execute store result score @e[tag=mob,tag=dmg,tag=!boss] confusion run data get entity @s SelectedItem.tag.data.stats.confusion

scoreboard players operation @e[tag=mob,tag=dmg] player_id = @s player_id

execute as @e[tag=mob,tag=dmg] if score @s confusion matches 1 run tag @s add conf
execute as @e[tag=conf,tag=!conf1] run function items:weapons/magic/confusion/melee


execute as @e[tag=mob,tag=dmg] run data modify entity @s Health set value 100f
execute as @e[tag=mob,tag=dmg] run function entities:dmg/calc_new_hp

tag @e[tag=mob,tag=dmg] remove dmg

# for tls
execute if entity @e[tag=!mob,tag=boss_2,nbt={HurtTime:10s}] run function entities:bosses/the_lost_soul/dmg_attempt