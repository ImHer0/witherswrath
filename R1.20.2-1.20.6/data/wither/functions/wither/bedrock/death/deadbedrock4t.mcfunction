execute as @e[type=minecraft:wither,limit=1,sort=nearest] run tp @s @e[type=armor_stand,tag=wither_stasis,limit=1]
execute as @e[type=armor_stand,tag=wither_stasis,limit=1] at @s run tp @s ~ ~ ~ facing entity @e[limit=1,distance=..30,sort=random] feet
execute at @e[type=minecraft:wither,limit=1] run playsound minecraft:block.nether_sprouts.break ambient @e[type=minecraft:player,distance=..40] ~ ~ ~ 1 .3

schedule function wither:wither/bedrock/death/deadbedrock5t 1t