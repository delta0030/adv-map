# LCG Seed implementation
#
# x_(n+1) = x_(n)*a + c
#
# a = 1103515245, c = 12345

scoreboard players operation #lcg math2 *= #lcg constant2
scoreboard players add #lcg math2 12345
scoreboard players operation out math2 = #lcg math2