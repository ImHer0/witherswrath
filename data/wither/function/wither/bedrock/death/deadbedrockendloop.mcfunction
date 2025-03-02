

execute as @e[type=wither,limit=1] run data modify entity @s Health set value 1.0f
damage @e[type=wither,limit=1] 19 player_attack by @p
execute at @e[type=armor_stand,tag=wither_stasis] run summon tnt
execute at @e[type=armor_stand,tag=wither_stasis] run playsound minecraft:entity.dragon_fireball.explode hostile @e[type=minecraft:player] ~ ~ ~ 1 .1
execute at @e[type=armor_stand,tag=wither_stasis] run playsound minecraft:entity.dragon_fireball.explode hostile @e[type=minecraft:player] ~ ~ ~ 1 .5
execute at @e[type=armor_stand,tag=wither_stasis] run playsound minecraft:entity.dragon_fireball.explode hostile @e[type=minecraft:player] ~ ~ ~ 1 .9
kill @e[type=armor_stand,tag=wither_stasis]

schedule clear wither:wither/bedrock/death/deadbedrock1t
schedule clear wither:wither/bedrock/death/deadbedrock2t
schedule clear wither:wither/bedrock/death/deadbedrock3t
schedule clear wither:wither/bedrock/death/deadbedrock4t
