# Ran by advancements for hitting the wither with a sword before half hp
advancement revoke @s only wither:wither/prehit_wither

execute if entity @e[type=wither,scores={Health=310..600}] if data storage wither:options {toggleboomtp:1} as @e[type=minecraft:wither,sort=arbitrary,limit=1] at @s run effect give @e[distance=..1] resistance 1 10 true
execute if entity @e[type=wither,scores={Health=310..600}] if data storage wither:options {toggleboomtp:1} as @e[type=minecraft:wither,sort=arbitrary,limit=1] at @s run summon minecraft:creeper ~ ~-1 ~ {CustomName: "The Wither", ExplosionRadius: 4, Invulnerable: 1b, Fuse: 0, ignited: 1b, Silent: 1b, attributes:[{id:"minecraft:scale",base:0.0625}]}
execute if entity @e[type=wither,scores={Health=310..600}] if data storage wither:options {toggleboomtp:1} as @e[type=minecraft:wither,sort=arbitrary,limit=1] at @s unless block ^ ^ ^1 minecraft:bedrock unless block ^ ^ ^2 minecraft:bedrock unless block ^ ^ ^3 minecraft:bedrock unless block ~ ~-1 ~ minecraft:bedrock unless block ~ ~-2 ~ minecraft:bedrock unless block ~ ~1 ~ minecraft:bedrock unless block ~ ~2 ~ minecraft:bedrock unless block ~ ~3 ~ minecraft:bedrock unless block ~ ~4 ~ minecraft:bedrock unless block ~ ~5 ~ minecraft:bedrock unless block ~ ~6 ~ minecraft:bedrock unless block ~ ~7 ~ minecraft:bedrock run data merge entity @s {Motion:[0.0,8.0,0.0]}

