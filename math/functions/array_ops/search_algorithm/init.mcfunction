# algorithm courtesy of bgangwar59 on geeksforgeeks
# seriously i don't get how this works, it's like voodoo magic

scoreboard objectives add math dummy

# necessary variables
execute store result score %arr_size math run data get storage array_ops search
execute store result score %arr_search_val math run data get storage array_ops search_val
scoreboard players set %arr_result math 1
scoreboard players set %search_pointer math 0
    # overflow protection w/ modulo
scoreboard players set %arr_search_mod math 1000000007
scoreboard players set 2 CONSTANTS 2
    # score to check array comparisons count

# check if array size odd
scoreboard players operation %arr_parity math = %arr_size math
scoreboard players operation %arr_parity math %= 2 CONSTANTS
execute if score %arr_parity math matches 1 run function math:array_ops/search_algorithm/adjust_vars
function math:array_ops/search_algorithm/array_product

# if %arr_result math = 0, value was found