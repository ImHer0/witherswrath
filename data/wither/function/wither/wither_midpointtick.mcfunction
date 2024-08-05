execute as @e[type=minecraft:wither,limit=1,sort=nearest] if score @e[type=minecraft:wither,limit=1,sort=nearest] wtime matches 3 run function wither:wither/wither_midpoint1

schedule function wither:wither/wither_midpointtick 1t