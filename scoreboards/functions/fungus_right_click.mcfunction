scoreboard objectives add fungus_rc minecraft.used:minecraft.warped_fungus_on_a_stick
execute if entity @a[scores={fungus_rc=1..}] run scoreboard players set @s fungus_rc 0