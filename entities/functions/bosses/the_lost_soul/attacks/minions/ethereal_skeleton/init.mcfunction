scoreboard objectives add tls_summon_count dummy
execute store result score @s tls_summon_count if entity @e[type=skeleton,tag=tls_minion,tag=ethereal_skeleton]

execute unless score @s tls_summon_count matches 2.. run function entities:bosses/the_lost_soul/attacks/minions/ethereal_skeleton/summon

scoreboard objectives remove tls_summon_count