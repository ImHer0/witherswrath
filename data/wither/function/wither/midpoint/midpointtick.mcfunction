execute as @e[type=minecraft:wither,limit=1,sort=nearest] if score @e[type=minecraft:wither,limit=1,sort=nearest] wtime matches 3 run function wither:wither/midpoint/midpoint1
execute at @e[type=minecraft:blaze,tag=wArcher] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0 0 normal

schedule function wither:wither/midpoint/midpointtick 1t