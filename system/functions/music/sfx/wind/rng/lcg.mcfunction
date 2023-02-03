# LCG Seed implementation
#
# x_(n+1) = x_(n)*a + c
#
# a = 1103515245, c = 12345

scoreboard players operation #lcg math8 *= #lcg constant8
scoreboard players add #lcg math8 12345
scoreboard players operation out math8 = #lcg math8