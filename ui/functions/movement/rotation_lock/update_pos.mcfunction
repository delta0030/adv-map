# update cloud pos to allow player to move
tp @s @p
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get @p rx
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get @p ry
# tp player to moved cloud to lock rotation if player has tried to rotate head
execute if score %match rot matches 0 run tp @p @s