#### reset previous links ####
tag @e remove olinked
execute as @e[scores={o_uuid=1..}] if score @s o_uuid = @e[sort=nearest,limit=1] o_uuid run tag @s add olinked