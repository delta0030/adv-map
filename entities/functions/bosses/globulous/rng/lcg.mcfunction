# LCG Seed implementation
#
# x_(n+1) = x_(n)*a + c
#
# a = 1103515245, c = 12345

scoreboard players operation #lcg math1 *= #lcg constant1
scoreboard players add #lcg math1 12345
scoreboard players operation out math1 = #lcg math1