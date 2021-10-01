# LCG Seed implementation
#
# x_(n+1) = x_(n)*a + c
#
# a = 1103515245, c = 12345

scoreboard players operation #lcg math3 *= #lcg constant3
scoreboard players add #lcg math3 12345
scoreboard players operation out math3 = #lcg math3