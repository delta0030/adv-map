summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["uuid"]}
execute store result score #lcg math2 run data get entity @e[tag=uuid,limit=1] UUID[0] 0.00000000023283064365386962890625
kill @e[tag=uuid]