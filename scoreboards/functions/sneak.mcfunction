scoreboard objectives add sneak minecraft.custom:sneak_time
execute as @a[scores={sneak=3..},nbt={OnGround:0b}] run scoreboard players set @s sneak 0
execute as @a[scores={sneak=2..},nbt={OnGround:1b}] run scoreboard players set @s sneak 0