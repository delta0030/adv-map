# need to triage mobs b/c health tag duplicates otherwise
execute if entity @s[tag=swdm] run function entities:health/display/get_custom_name/dungeons/swdm
execute if entity @s[tag=boss] run function entities:health/display/get_custom_name/bosses
execute if entity @s[tag=minion] run function entities:health/display/get_custom_name/minions