# LCG Seed implementation
#
# x_(n+1) = x_(n)*a + c
#
# a = 1103515245, c = 12345

scoreboard players operation #lcg math9 *= #lcg constant9
scoreboard players add #lcg math9 12345
scoreboard players operation out math9 = #lcg math9