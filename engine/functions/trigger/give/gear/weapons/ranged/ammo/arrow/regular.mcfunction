setblock ~ 1 ~ shulker_box
data modify block ~ 1 ~ Items set from entity @s EnderItems

execute store result block ~ 1 ~ Items[1].tag.items.gear.weapons.ranged.ammo.arrow.regular int 1 run scoreboard players get @s regular_arrow
loot replace entity @s enderchest.0 mine ~ 1 ~ diamond_pickaxe{drop_contents:true}

scoreboard players set @s regular_arrow 0
setblock ~ 1 ~ bedrock