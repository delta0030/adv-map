execute at @e[type=vindicator,tag=swmb1] if score %liveZom swmb1 matches 1 run function entities:mobs/types/dungeon/singwoods/guardian/summons/zomb

execute at @e[type=vindicator,tag=swmb1] if score %liveZom swmb1 matches 0 run function entities:mobs/types/dungeon/singwoods/guardian/summons/zomb
execute at @e[type=vindicator,tag=swmb1] if score %liveZom swmb1 matches 0 run function entities:mobs/types/dungeon/singwoods/guardian/summons/zomb

execute at @e[type=vindicator,tag=swmb1] if score %liveSke swmb1 matches 2 run function entities:mobs/types/dungeon/singwoods/guardian/summons/skele

execute at @e[type=vindicator,tag=swmb1] if score %liveSke swmb1 matches 1 run function entities:mobs/types/dungeon/singwoods/guardian/summons/skele
execute at @e[type=vindicator,tag=swmb1] if score %liveSke swmb1 matches 1 run function entities:mobs/types/dungeon/singwoods/guardian/summons/skele

execute at @e[type=vindicator,tag=swmb1] if score %liveSke swmb1 matches 0 run function entities:mobs/types/dungeon/singwoods/guardian/summons/skele
execute at @e[type=vindicator,tag=swmb1] if score %liveSke swmb1 matches 0 run function entities:mobs/types/dungeon/singwoods/guardian/summons/skele
execute at @e[type=vindicator,tag=swmb1] if score %liveSke swmb1 matches 0 run function entities:mobs/types/dungeon/singwoods/guardian/summons/skele





scoreboard objectives remove swmb1_space


# can shorten to limit=2 for zom and limit=3 for skele