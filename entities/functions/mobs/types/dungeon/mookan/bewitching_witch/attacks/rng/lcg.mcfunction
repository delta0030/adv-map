# LCG Seed implementation
#
# x_(n+1) = x_(n)*a + c
#
# a = 1103515245, c = 12345

scoreboard players operation #lcg math4 *= #lcg constant2
scoreboard players add #lcg math4 12345
scoreboard players operation out math4 = #lcg math4