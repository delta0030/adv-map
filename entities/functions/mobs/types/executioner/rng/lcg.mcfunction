# LCG Seed implementation
#
# x_(n+1) = x_(n)*a + c
#
# a = 1103515245, c = 12345

scoreboard players operation #lcg math11 *= #lcg constant11
scoreboard players add #lcg math11 12345
scoreboard players operation out math11 = #lcg math11