function entities:dmg/calc_new_hp
effect give @s[type=!#entity_types:undead] instant_damage 1 0 true
effect give @s instant_health 1 0 true
effect give @s[type=#entity_types:undead] instant_damage 1 10 true

