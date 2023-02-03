function items:weapons/summoner/slime_staff/clear/init
tag @s add ss_owner
tag @s add summoner
summon area_effect_cloud ~ ~ ~ {Tags:["summon_direction"],Duration:1}
data modify entity @e[type=area_effect_cloud,tag=summon_direction,sort=nearest,limit=1] Rotation[0] set from entity @s Rotation[0]
execute as @e[type=area_effect_cloud,tag=summon_direction] at @s positioned ^-0.8 ^ ^2.5 if block ~ ~ ~ air run function items:weapons/summoner/slime_staff/summon
execute as @e[type=area_effect_cloud,tag=summon_direction] at @s positioned ^-0.8 ^ ^2.5 unless block ~ ~ ~ air positioned ~ ~ ~ run function items:weapons/summoner/slime_staff/summon

execute if entity @s[tag=ss_owner,nbt={SelectedItem:{tag:{dev_edit:1b}}}] run data modify entity @e[type=slime,tag=new,tag=ss,limit=1] CustomName set value '{"text":"Jerry","color":"green","italic":false,"bold":false}'
execute if entity @s[tag=ss_owner,nbt={SelectedItem:{tag:{dev_edit:1b}}}] run data modify entity @e[type=slime,tag=new,tag=ss,limit=1] CustomNameVisible set value 1b

# link summon & summoner (from CW)
execute at @s if score @s o_uuid matches 0 run function olink:new_link
execute at @s as @e[type=armor_stand,tag=ss,tag=new] run function olink:join_link
execute at @s as @e[type=slime,tag=ss,tag=new] run function olink:join_link
tag @e[tag=ss,tag=new] remove new

function items:weapons/summoner/slime_staff/control/main