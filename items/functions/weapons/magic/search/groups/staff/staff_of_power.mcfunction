say wer
execute unless entity @s[nbt={SelectedItem:{tag:{staff:1b}}}] if score @s sneak matches 1.. run say staff not selected

execute if score @s sneak matches 1.. run scoreboard players set @s sneak 0

# work on having this determine if the player isnt holding the staff, and if not just make mention of that
# for debugging reasons

# DOESNT DETECT THE NOT HOLDING -- STOPS RUNNING THE FILE TOO QUICK