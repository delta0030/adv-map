execute if score %timer sts_music matches 1 run playsound bosses.boss_3.p1_loop music @a
execute if score %timer sts_music matches 426.. if score %tick sts_music matches 1 run scoreboard players set %status sts_music 3
execute if score %timer sts_music matches 426.. if score %tick sts_music matches 1 run scoreboard players set %tick sts_music 0
execute if score %timer sts_music matches 426.. run scoreboard players set %timer sts_music 0