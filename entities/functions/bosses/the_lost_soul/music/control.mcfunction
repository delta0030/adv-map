execute if score %phase tls_music matches 1 unless score %intro1 tls_music matches 1 run function entities:bosses/the_lost_soul/music/phases/phase1/intro
execute if score %phase tls_music matches 1..2 if score %intro1 tls_music matches 1 unless score %switch1 tls_music matches 1 run function entities:bosses/the_lost_soul/music/phases/phase1/loop

execute if score %phase tls_music matches 2 unless score %intro2 tls_music matches 1 run function entities:bosses/the_lost_soul/music/phases/phase2/intro
execute if score %phase tls_music matches 2..3 if score %intro2 tls_music matches 1 unless score %switch2 tls_music matches 1 run function entities:bosses/the_lost_soul/music/phases/phase2/loop

execute if score %phase tls_music matches 3..4 unless score %intro3 tls_music matches 1 run function entities:bosses/the_lost_soul/music/phases/phase3-4/intro
execute if score %phase tls_music matches 3..4 if score %intro3 tls_music matches 1 run function entities:bosses/the_lost_soul/music/phases/phase3-4/loop