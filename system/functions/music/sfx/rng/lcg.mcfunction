# LCG Seed implementation
#
# x_(n+1) = x_(n)*a + c
#
# a = 1103515245, c = 12345

scoreboard players operation #lcg math7 *= #lcg constant7
scoreboard players add #lcg math7 12345
scoreboard players operation out math7 = #lcg math7