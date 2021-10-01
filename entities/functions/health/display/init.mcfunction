tag @s add update
setblock 0 0 0 oak_sign
data modify block 0 0 0 Text1 set value ""
function entities:health/display/get_custom_name/init
data merge block 0 0 0 {Text1:'[{"nbt":"Text1","block":"0 0 0","interpret":"true"},{"text":"\\uF822"},{"text":"[","color":"gray","bold":true,"italic":false},{"score":{"name":"@e[tag=update]","objective":"mob_health"},"color":"red","bold":true,"italic":false},{"text":"/","color":"gray","bold":true,"italic":false},{"score":{"name":"@e[tag=update]","objective":"mob_max_health"},"color":"red","bold":true,"italic":false},{"text":"]","color":"gray","bold":true,"italic":false}]'}
data modify entity @s CustomName set from block 0 0 0 Text1
setblock 0 0 0 bedrock
tag @s remove update