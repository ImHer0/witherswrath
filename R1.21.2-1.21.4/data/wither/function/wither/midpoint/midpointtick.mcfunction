execute unless score midpoint stages matches 1 as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=midpointpos] at @s unless block ^ ^ ^1 minecraft:bedrock unless block ^ ^ ^2 minecraft:bedrock unless block ^ ^ ^3 minecraft:bedrock unless block ~ ~-1 ~ minecraft:bedrock unless block ~ ~-2 ~ minecraft:bedrock unless block ~ ~1 ~ minecraft:bedrock unless block ~ ~2 ~ minecraft:bedrock unless block ~ ~3 ~ minecraft:bedrock unless block ~ ~4 ~ minecraft:bedrock unless block ~ ~5 ~ minecraft:bedrock unless block ~ ~6 ~ minecraft:bedrock run tp @s ^ ^1 ^ ~20 ~

execute if score midpoint stages matches 1 unless entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=midpointpos,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0,0.2,0.0]}
execute if score midpoint stages matches 1 if entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=midpointpos,nbt={OnGround:1b}] run function wither:wither/midpoint/midpointground

execute as @e[type=minecraft:wither,limit=1,sort=nearest] run tp @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=midpointpos]

execute if entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=midpointpos] run schedule function wither:wither/midpoint/midpointtick 1t
