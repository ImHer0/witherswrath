execute as @e[type=minecraft:wither,limit=1,sort=nearest] run tp @s @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand]

execute if entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand] run schedule function wither:wither/wither_chargetick 1t