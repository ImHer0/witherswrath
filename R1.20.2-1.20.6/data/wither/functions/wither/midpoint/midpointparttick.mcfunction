# Ticks particles and tp wither to AS

execute at @e[type=minecraft:blaze,tag=wArcher] run particle minecraft:smoke ~ ~ ~ 0 0 0 0 0 normal
execute at @e[type=minecraft:blaze,tag=wArcher] run particle minecraft:lava ~ ~-1 ~ 0.2 0.2 0.2 .003 4 normal
execute as @e[type=minecraft:wither,limit=1,sort=nearest] run tp @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=midpointpos]

schedule function wither:wither/midpoint/midpointparttick 1t