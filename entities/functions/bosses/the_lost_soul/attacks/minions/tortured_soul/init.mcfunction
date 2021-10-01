scoreboard objectives add tls_summon_count dummy
execute store result score @s tls_summon_count if entity @e[type=vex,tag=tls_minion,tag=tortured_soul]

execute unless score @s[tag=!phase3,tag=!phase4] tls_summon_count matches 3.. run function entities:bosses/the_lost_soul/attacks/minions/tortured_soul/summon
execute unless score @s[tag=phase3] tls_summon_count matches 7.. run function entities:bosses/the_lost_soul/attacks/minions/tortured_soul/summon
execute unless score @s[tag=phase4] tls_summon_count matches 5.. run function entities:bosses/the_lost_soul/attacks/minions/tortured_soul/summon

scoreboard objectives remove tls_summon_count