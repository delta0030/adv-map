scoreboard objectives add old_mat_count dummy
scoreboard objectives add new_mat_count dummy

execute at @s run setblock ~ 2 ~ shulker_box
data modify block ~ 2 ~ Items set from entity @s EnderItems

execute store result score @s old_mat_count run data get block ~ 2 ~ Items[1].tag.items.materials.mob_drops.hostile.bosses.globulous.slime_ball
execute store result score @s new_mat_count run scoreboard players remove @s old_mat_count 7
execute store result block ~ 2 ~ Items[1].tag.items.materials.mob_drops.hostile.bosses.globulous.slime_ball int 1 run scoreboard players get @s new_mat_count

execute store result score @s old_mat_count run data get block ~ 2 ~ Items[1].tag.items.materials.mob_drops.hostile.bosses.globulous.gelatin
execute store result score @s new_mat_count run scoreboard players remove @s old_mat_count 3
execute store result block ~ 2 ~ Items[1].tag.items.materials.mob_drops.hostile.bosses.globulous.gelatin int 1 run scoreboard players get @s new_mat_count

execute store result score @s old_mat_count run data get block ~ 2 ~ Items[1].tag.items.gear.armor.slime_set.slimy_leggings
execute store result score @s new_mat_count run scoreboard players add @s old_mat_count 1
execute store result block ~ 2 ~ Items[1].tag.items.gear.armor.slime_set.slimy_leggings int 1 run scoreboard players get @s new_mat_count
loot replace entity @s enderchest.0 2 mine ~ 2 ~ minecraft:diamond_pickaxe{drop_contents:true}
setblock ~ 2 ~ bedrock

tellraw @s {"text":"+1 Slimy Leggings","color":"green","italic":false}