setblock ~ 1 ~ shulker_box
data modify block ~ 1 ~ Items set from entity @s EnderItems

execute store result block ~ 1 ~ Items[1].tag.items.gear.weapons.ranged.ammo.arrow.regular_arrow int 1 run scoreboard players get %available ammo_req
loot replace entity @s enderchest.0 mine ~ 1 ~ diamond_pickaxe{drop_contents:true}

setblock ~ 1 ~ bedrock