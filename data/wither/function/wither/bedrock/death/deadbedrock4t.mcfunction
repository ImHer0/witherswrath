data merge entity @e[type=wither,limit=1] {attributes:[{id:"minecraft:scale",base:1}]}
execute as @e[type=minecraft:wither,limit=1,sort=nearest] run tp @s @e[type=armor_stand,tag=wither_stasis,limit=1]
execute as @e[type=armor_stand,tag=wither_stasis,limit=1] at @s run tp @s ~ ~ ~ facing entity @e[limit=1,distance=..30,sort=random] feet

schedule function wither:wither/bedrock/death/deadbedrock4t 5t