setblock ~ 0 ~ shulker_box
item replace block ~ 0 ~ container.0 from entity @s enderchest.2
data modify block ~ 0 ~ Items[0].tag.dungeons.singwoods.floor1 append value '[{"text":"\\uE005","font":"maps"},{"translate":"space.-81","font":"default"}]'
item replace entity @s enderchest.2 from block ~ 0 ~ container.0
setblock ~ 0 ~ bedrock

tag @s remove hall3