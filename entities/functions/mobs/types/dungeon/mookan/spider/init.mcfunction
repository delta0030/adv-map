scoreboard objectives add spider dummy
scoreboard players set %spider spider 0
execute if predicate entities:chance_25 run scoreboard players set %spider spider 1

execute if score %spider spider matches 0 run function entities:mobs/types/dungeon/mookan/spider/spider
execute if score %spider spider matches 1 run function entities:mobs/types/dungeon/mookan/spider/small_spider

scoreboard players set %spider spider 0