execute store result score @s ammo_req run data get entity @s SelectedItem.tag.data.stats.ammo_cost.regular_arrow
execute store result score %available ammo_req run data get entity @s EnderItems[1].tag.items.gear.weapons.ranged.ammo.arrow.regular_arrow

scoreboard players operation %available ammo_req -= @s ammo_req

execute if score %available ammo_req matches 0.. if score @s carrot_rc matches 1.. run function items:weapons/ranged/ammo_req/ammo/arrow/regular/remove