execute if score %timer sts_cannon matches 0 run scoreboard players add %seqCount sts_cannon 1
execute if score %timer sts_cannon matches 0 run scoreboard players set %timer sts_cannon 4
scoreboard players remove %timer sts_cannon 1