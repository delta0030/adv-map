# EotB = Elixir of the Brutish

execute as @e[type=zombie_villager,tag=boss_3] run tag @s add eotb
scoreboard players set %duration sts_attacks 300
scoreboard players set %att sts_attacks 0

function entities:bosses/sorass_the_sinner/attacks/elixir/effect