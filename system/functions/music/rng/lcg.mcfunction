# LCG Seed implementation
#
# x_(n+1) = x_(n)*a + c
#
# a = 1103515245, c = 12345

scoreboard players operation #lcg math6 *= #lcg constant6
scoreboard players add #lcg math6 12345
scoreboard players operation out math6 = #lcg math6