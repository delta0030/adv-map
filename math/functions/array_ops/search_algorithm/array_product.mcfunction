# T *= (A[i] - X)
execute store result score %arr_val math run data get storage array_ops search[0][0]
scoreboard players operation %arr_val math -= %arr_search_val math
scoreboard players operation %arr_result math *= %arr_val math
# T *= (A[i + 1] - X)
execute store result score %arr_val math run data get storage array_ops search[1][0]
scoreboard players operation %arr_val math -= %arr_search_val math
scoreboard players operation %arr_result math *= %arr_val math

scoreboard players operation %arr_result math %= %arr_search_mod math

data remove storage array_ops search[0]
data remove storage array_ops search[0]
scoreboard players add %search_pointer math 2

execute if score %search_pointer math < %arr_size math run function math:array_ops/search_algorithm/array_product