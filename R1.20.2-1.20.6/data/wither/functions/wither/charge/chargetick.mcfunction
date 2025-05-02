execute as @e[type=minecraft:wither,limit=1,sort=nearest] run tp @s @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand]

function wither:wither/charge/charge1

execute if entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand] run schedule function wither:wither/charge/chargetick 1t