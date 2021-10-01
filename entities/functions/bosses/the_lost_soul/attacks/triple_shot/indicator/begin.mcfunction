scoreboard players set %range raycast 500
scoreboard players set %reflect raycast 4

summon area_effect_cloud ~ ~ ~ {Tags:["reflect"]}

tp @e[type=area_effect_cloud,tag=reflect] ~ ~ ~ ~ ~

execute as @e[type=area_effect_cloud,tag=reflect] run function entities:bosses/the_lost_soul/attacks/triple_shot/indicator/raycast

kill @e[type=area_effect_cloud,tag=reflect]