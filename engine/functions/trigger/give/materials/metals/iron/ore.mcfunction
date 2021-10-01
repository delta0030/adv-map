setblock ~ 1 ~ shulker_box
data modify block ~ 1 ~ Items set from entity @s EnderItems

execute store result block ~ 1 ~ Items[1].tag.items.materials.metals.iron.ore int 1 run scoreboard players get @s iron_ore
loot replace entity @s enderchest.0 mine ~ 1 ~ diamond_pickaxe{drop_contents:true}

scoreboard players set @s iron_ore -1
setblock ~ 1 ~ bedrock