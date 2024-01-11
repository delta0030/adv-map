execute as @e[type=armor_stand,tag=sts_cannonProj,nbt={OnGround:1b}] run function entities:bosses/sorass_the_sinner/attacks/cannon/damage/init

execute unless entity @e[type=armor_stand,tag=sts_cannonProj] run kill @e[type=armor_stand,tag=can_mark]