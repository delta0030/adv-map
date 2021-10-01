#doing the math to add the correct amount to player balance
scoreboard players operation %testMoney coinBet -= %bet coinBet
scoreboard players operation %bet coinBet *= %multip coinBet
scoreboard players operation %win coinBet = %bet coinBet
scoreboard players operation %testMoney coinBet += %win coinBet

function mechanics:gambling/coinflip/init