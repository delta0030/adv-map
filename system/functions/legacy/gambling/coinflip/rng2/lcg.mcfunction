# LCG Seed implementation
#
# x_(n+1) = x_(n)*a + c
#
# a = 1103515245, c = 12345

scoreboard players operation #lcg math10 *= #lcg constant9
scoreboard players add #lcg math10 12345
scoreboard players operation out math10 = #lcg math10