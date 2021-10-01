execute as @p if entity @e[tag=executioner,distance=..10] run schedule function entities:mobs/types/misc/executioner/sound/fast_hb 1s
execute as @p if entity @e[tag=executioner,distance=11..20] run schedule function entities:mobs/types/misc/executioner/sound/med_hb 17t
execute as @p if entity @e[tag=executioner,distance=21..30] run schedule function entities:mobs/types/misc/executioner/sound/slow_hb 15t
execute as @p if entity @e[tag=executioner,distance=31..40] run schedule function entities:mobs/types/misc/executioner/sound/ss_hb 10t



schedule function entities:mobs/types/misc/executioner/sound/heartbeat_test 1t