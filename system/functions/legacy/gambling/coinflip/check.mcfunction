#calculating winning result
execute if score %cf coinBet = out math10 run function mechanics:gambling/coinflip/rng/range_lcg

#determining which multiplier to give based on score
execute if score out math9 matches 1..4298 run scoreboard players set %multip coinBet 2
execute if score out math9 matches 5703..9999 run scoreboard players set %multip coinBet 2
execute if score out math9 matches 4299..5701 run scoreboard players set %multip coinBet 3
execute if score out math9 matches 5702 run scoreboard players set %multip coinBet 4
execute if score out math9 matches 10000 run scoreboard players set %multip coinBet 4

#saying player won with x times multiplier
execute if score out math9 matches 1..4298 run tellraw @p {"text":"You win 2x bonus!"}
execute if score out math9 matches 5703..9999 run tellraw @p {"text":"You win 2x bonus!"}
execute if score out math9 matches 4299..5701 run tellraw @p {"text":"You win 3x bonus!"}
execute if score out math9 matches 5702 run tellraw @p {"text":"You win 4x bonus!"}
execute if score out math9 matches 10000 run tellraw @p {"text":"You win 4x bonus!"}

#stopping timer and adding winnings to player balance
execute if score %cf coinBet = out math10 if score %multip coinBet matches 2..4 run scoreboard players set %timer coinBet 2
execute if score %cf coinBet = out math10 if score %multip coinBet matches 2..4 run function mechanics:gambling/coinflip/calc
execute if score %cf coinBet = out math10 if score %timer coinBet matches 1 run schedule function mechanics:gambling/coinflip/check 1t