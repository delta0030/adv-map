summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ss","summoner","new"]}
summon slime ~ ~ ~ {NoAI:1b,PersistenceRequired:1b,ActiveEffects:[{Id:11b,Amplifier:100b,Duration:100,ShowParticles:0b}],Size:0,Tags:["slime","ss","summoner","new"],DeathLootTable:"minecraft:empty",Silent:1b}

team add summoner
team join summoner @e[type=!player,tag=ss]
team modify summoner collisionRule never

particle end_rod ~ ~ ~ 0.001 0.001 0.001 0.3 30 force
playsound entity.firework_rocket.launch master @a ~ ~ ~ 0.3