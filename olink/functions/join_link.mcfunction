#### adds to nearest entity's link ####
scoreboard players operation @s o_uuid = @e[sort=nearest,limit=1,scores={o_uuid=1..}] o_uuid