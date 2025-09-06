# Ticks particles and tp wither to AS

execute at @e[type=minecraft:blaze,tag=wArcher] run particle minecraft:smoke ~ ~ ~ 0 0 0 0 0 normal
execute at @e[type=minecraft:blaze,tag=wArcher] run particle minecraft:lava ~ ~-1 ~ 0.2 0.2 0.2 .003 4 normal


schedule function wither:wither/midpoint/midpointparttick 1t