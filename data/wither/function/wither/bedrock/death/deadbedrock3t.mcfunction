data merge entity @e[type=wither,limit=1] {attributes:[{id:"minecraft:scale",base:1.15}]}
execute as @e[type=minecraft:wither,limit=1,sort=nearest] run tp @s @e[type=armor_stand,tag=wither_stasis,limit=1]

schedule function wither:wither/bedrock/death/deadbedrock3t 5t