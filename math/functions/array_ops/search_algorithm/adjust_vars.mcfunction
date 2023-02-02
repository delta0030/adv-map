execute store result score %arr_0 math run data get storage array_ops search[0][0]
data remove storage array_ops search[0]
scoreboard players set %search_pointer math 1
scoreboard players operation %arr_0 math -= %arr_search_val math
scoreboard players operation %arr_result math *= %arr_0 math
scoreboard players operation %arr_result math %= %arr_search_mod math