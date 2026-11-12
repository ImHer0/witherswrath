# Ran as the target player, positioned at the chosen spot
scoreboard players set #ok wither.scale 1
execute at @e[type=minecraft:wither_skeleton,tag=wBlinking,limit=1] run particle minecraft:portal ~ ~1 ~ 0.3 0.8 0.3 0.6 40 normal
execute at @e[type=minecraft:wither_skeleton,tag=wBlinking,limit=1] run particle minecraft:large_smoke ~ ~1 ~ 0.3 0.6 0.3 0.02 8 normal
particle minecraft:reverse_portal ~ ~1 ~ 0.3 0.8 0.3 0.05 40 normal
particle minecraft:large_smoke ~ ~1 ~ 0.3 0.6 0.3 0.02 8 normal
playsound minecraft:entity.enderman.teleport hostile @a[distance=..16] ~ ~ ~ 1 0.5
tp @e[type=minecraft:wither_skeleton,tag=wBlinking,limit=1] ~ ~ ~ facing entity @s eyes
