# update cloud pos to allow player to move
tp @s @p
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get @p rx
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get @p ry
# tp player to moved cloud to lock rotation
tp @p @s