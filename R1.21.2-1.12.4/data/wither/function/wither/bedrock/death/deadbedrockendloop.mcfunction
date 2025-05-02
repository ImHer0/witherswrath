

execute as @e[type=wither,limit=1] run data modify entity @s Health set value 1.0f
execute as @e[type=minecraft:wither,limit=1] run data merge entity @e[type=wither,limit=1] {Invulnerable:0b,Silent:0b,Glowing:0b,Health:1f}
execute at @e[type=wither,limit=1] as @p run damage @e[type=wither,limit=1] 10000 player_attack by @p
execute at @e[type=armor_stand,tag=wither_stasis] run summon tnt
execute at @e[type=armor_stand,tag=wither_stasis] run playsound minecraft:entity.dragon_fireball.explode hostile @e[type=minecraft:player] ~ ~ ~ 1 .1
execute at @e[type=armor_stand,tag=wither_stasis] run playsound minecraft:entity.dragon_fireball.explode hostile @e[type=minecraft:player] ~ ~ ~ 1 .5
execute at @e[type=armor_stand,tag=wither_stasis] run playsound minecraft:entity.dragon_fireball.explode hostile @e[type=minecraft:player] ~ ~ ~ 1 .9
kill @e[type=armor_stand,tag=wither_stasis]


schedule clear wither:wither/bedrock/death/deadbedrock1t
schedule clear wither:wither/bedrock/death/deadbedrock2t
schedule clear wither:wither/bedrock/death/deadbedrock3t
schedule clear wither:wither/bedrock/death/deadbedrock4t
schedule clear wither:wither/bedrock/death/deadbedrock5t
