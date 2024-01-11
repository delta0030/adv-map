execute as @a[tag=!started] run function player:stats/control/init
execute as @a[tag=started,tag=actionbar] run function player:stats/actionbar/actionbar

# base stats
execute as @a run function player:stats/mana/main
execute as @a run function player:stats/def/main

# regen
execute as @a[tag=magic_used] run function player:stats/mana/regen/control
execute as @a run function player:stats/health/regen/control

# status effects
execute as @a[nbt={ActiveEffects:[{Id:19b}]},tag=!poisoned] run function player:stats/dmg/get_base_dmg/status_effect/effects/init
execute as @a[nbt={ActiveEffects:[{Id:20b}]},tag=!withered] run function player:stats/dmg/get_base_dmg/status_effect/effects/init
execute as @a[tag=status_effect] run function player:stats/dmg/get_base_dmg/status_effect/effects/control

team join conf @a

# item count
function player:inventory/item_count

execute as @a[scores={player_hp=0}] run function player:stats/health/death/death