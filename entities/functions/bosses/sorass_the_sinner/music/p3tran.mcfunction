execute if score %timer sts_music matches 1 run stopsound @a music
execute if score %timer sts_music matches 1 run playsound bosses.boss_3.p3tran music @a
execute if score %timer sts_music matches 211.. run scoreboard players set %status sts_music 6
execute if score %timer sts_music matches 211.. run scoreboard players set %timer sts_music 0