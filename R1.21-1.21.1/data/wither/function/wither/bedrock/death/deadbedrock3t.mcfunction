data merge entity @e[type=wither,limit=1] {attributes:[{id:"minecraft:scale",base:1.3}]}
execute as @e[type=minecraft:wither,limit=1,sort=nearest] run tp @s @e[type=armor_stand,tag=wither_stasis,limit=1]
execute at @e[type=minecraft:wither,limit=1] run playsound minecraft:block.nether_sprouts.break ambient @e[type=minecraft:player,distance=..40] ~ ~ ~ 1 .1

schedule function wither:wither/bedrock/death/deadbedrock4t 1t