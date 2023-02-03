function mechanics:gambling/chat_clear
tellraw @p ["",{"text":"[Heads]","color":"red","clickEvent":{"action":"run_command","value":"/function mechanics:gambling/coinflip/results/heads"}},{"text":" [Tails]","color":"blue","clickEvent":{"action":"run_command","value":"/function mechanics:gambling/coinflip/results/tails"}}]
function mechanics:gambling/coinflip/rng2/range_lcg