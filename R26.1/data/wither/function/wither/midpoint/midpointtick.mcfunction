# Safety net: if the marker is gone (killed/unloaded) or the slam takes over 10s, finish the midpoint
scoreboard players add #midT wither.stats 1
execute unless entity @e[type=minecraft:armor_stand,tag=midpointpos,limit=1] run return run function wither:wither/midpoint/midpointground
execute if score #midT wither.stats matches 200.. run return run function wither:wither/midpoint/midpointground

execute unless score midpoint stages matches 1 as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=midpointpos] at @s unless block ^ ^ ^1 minecraft:bedrock unless block ^ ^ ^2 minecraft:bedrock unless block ^ ^ ^3 minecraft:bedrock unless block ~ ~-1 ~ minecraft:bedrock unless block ~ ~-2 ~ minecraft:bedrock unless block ~ ~1 ~ minecraft:bedrock unless block ~ ~2 ~ minecraft:bedrock unless block ~ ~3 ~ minecraft:bedrock unless block ~ ~4 ~ minecraft:bedrock unless block ~ ~5 ~ minecraft:bedrock unless block ~ ~6 ~ minecraft:bedrock run tp @s ^ ^1 ^ ~20 ~

execute if score midpoint stages matches 1 unless entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=midpointpos,predicate=wither:on_ground] run data merge entity @s {Motion:[0.0,0.2,0.0]}
execute if score midpoint stages matches 1 if entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=midpointpos,predicate=wither:on_ground] run function wither:wither/midpoint/midpointground

execute as @e[type=minecraft:wither,limit=1,sort=nearest] run tp @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=midpointpos]

execute if entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=midpointpos] run schedule function wither:wither/midpoint/midpointtick 1t
