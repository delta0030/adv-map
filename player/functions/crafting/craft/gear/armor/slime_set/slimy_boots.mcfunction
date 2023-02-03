scoreboard objectives add old_mat_count dummy
scoreboard objectives add new_mat_count dummy

execute at @s run setblock 0 -1 0 shulker_box
data modify block 0 -1 0 Items set from entity @s EnderItems

execute store result score @s old_mat_count run data get block 0 -1 0 Items[{Slot:1b}].tag.items.materials.mob_drops.hostile.bosses.globulous.slime_ball
execute store result score @s new_mat_count run scoreboard players remove @s old_mat_count 4
execute store result block 0 -1 0 Items[{Slot:1b}].tag.items.materials.mob_drops.hostile.bosses.globulous.slime_ball int 1 run scoreboard players get @s new_mat_count

execute store result score @s old_mat_count run data get block 0 -1 0 Items[{Slot:1b}].tag.items.materials.mob_drops.hostile.bosses.globulous.gelatin
execute store result score @s new_mat_count run scoreboard players remove @s old_mat_count 2
execute store result block 0 -1 0 Items[{Slot:1b}].tag.items.materials.mob_drops.hostile.bosses.globulous.gelatin int 1 run scoreboard players get @s new_mat_count

execute store result score @s old_mat_count run data get block 0 -1 0 Items[{Slot:1b}].tag.items.gear.armor.slime_set.slimy_boots
execute store result score @s new_mat_count run scoreboard players add @s old_mat_count 1
execute store result block 0 -1 0 Items[1].tag.items.gear.armor.slime_set.slimy_boots int 1 run scoreboard players get @s new_mat_count
item replace entity @s enderchest.1 from block 0 -1 0 container.1
setblock 0 -1 0 bedrock

tellraw @s {"text":"+1 Slimy Boots","color":"green","italic":false}