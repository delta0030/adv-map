function entities:bosses/sorass_the_sinner/music/pick
scoreboard players add %timer sts_music 1

execute if score %status sts_music matches 0.. run schedule function entities:bosses/sorass_the_sinner/music/brain 1t