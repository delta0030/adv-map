#if lost
execute unless score %cf coinBet = out math10 run function mechanics:gambling/chat_clear
execute unless score %cf coinBet = out math10 run scoreboard players operation %testMoney coinBet -= %bet coinBet
execute unless score %cf coinBet = out math10 run function mechanics:gambling/coinflip/init
execute unless score %cf coinBet = out math10 run tellraw @p {"text":"You lost.","color":"red"}

execute if score %cf coinBet = out math10 run function mechanics:gambling/chat_clear
execute if score %cf coinBet = out math10 run function mechanics:gambling/coinflip/check