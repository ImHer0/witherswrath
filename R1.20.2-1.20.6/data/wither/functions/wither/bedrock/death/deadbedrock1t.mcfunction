data merge entity @e[type=wither,limit=1] {attributes:[{id:"minecraft:scale",base:1.1}]}
execute as @e[type=minecraft:wither,limit=1,sort=nearest] run tp @s @e[type=armor_stand,tag=wither_stasis,limit=1]
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run playsound minecraft:entity.parrot.imitate.wither hostile @e[type=minecraft:player] ~ ~ ~ 1 .8


schedule function wither:wither/bedrock/death/deadbedrock2t 1t
