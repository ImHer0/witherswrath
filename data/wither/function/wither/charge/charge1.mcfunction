# WITHER CHARGE
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand] at @e[type=minecraft:wither,limit=1,sort=nearest] unless block ^ ^ ^1 minecraft:bedrock unless block ^ ^ ^2 minecraft:bedrock unless block ^ ^ ^3 minecraft:bedrock unless block ~ ~-1 ~ minecraft:bedrock unless block ~ ~-2 ~ minecraft:bedrock unless block ~ ~1 ~ minecraft:bedrock unless block ~ ~2 ~ minecraft:bedrock unless block ~ ~3 ~ minecraft:bedrock unless block ~ ~4 ~ minecraft:bedrock unless block ~ ~5 ~ minecraft:bedrock run playsound minecraft:entity.wither.break_block hostile @e[distance=..20,type=player] ~ ~ ~ 1 .3
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand] at @s if block ^ ^ ^1 minecraft:bedrock run playsound minecraft:block.anvil.place hostile @e[distance=..20,type=player] ~ ~ ~ 1 2
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand] at @s if block ^ ^ ^2 minecraft:bedrock run playsound minecraft:block.anvil.place hostile @e[distance=..20,type=player] ~ ~ ~ 1 2
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand] at @s if block ^ ^ ^3 minecraft:bedrock run playsound minecraft:block.anvil.place hostile @e[distance=..20,type=player] ~ ~ ~ 1 2
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand] at @s if block ~ ~-1 ~ minecraft:bedrock run playsound minecraft:block.anvil.place hostile @e[distance=..20,type=player] ~ ~ ~ 1 2
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand] at @s if block ~ ~-2 ~ minecraft:bedrock run playsound minecraft:block.anvil.place hostile @e[distance=..20,type=player] ~ ~ ~ 1 2
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand] at @s if block ~ ~1 ~ minecraft:bedrock run playsound minecraft:block.anvil.place hostile @e[distance=..20,type=player] ~ ~ ~ 1 2
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand] at @s if block ~ ~2 ~ minecraft:bedrock run playsound minecraft:block.anvil.place hostile @e[distance=..20,type=player] ~ ~ ~ 1 2
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand] at @s if block ~ ~3 ~ minecraft:bedrock run playsound minecraft:block.anvil.place hostile @e[distance=..20,type=player] ~ ~ ~ 1 2
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand] at @s if block ~ ~4 ~ minecraft:bedrock run playsound minecraft:block.anvil.place hostile @e[distance=..20,type=player] ~ ~ ~ 1 2
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand] at @s if block ~ ~5 ~ minecraft:bedrock run playsound minecraft:block.anvil.place hostile @e[distance=..20,type=player] ~ ~ ~ 1 2

execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand] at @e[type=minecraft:wither,limit=1,sort=nearest] run particle lava ~ ~ ~ 0.2 0.2 0.2 1 50
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand] at @e[type=minecraft:wither,limit=1,sort=nearest] run particle squid_ink ~ ~ ~ 1.5 2 1.5 0.1 20 normal
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand] at @e[type=minecraft:wither,limit=1,sort=nearest] run summon area_effect_cloud ~ ~ ~ {Particle:{type:"smoke"},ReapplicationDelay:2,Radius:3f,RadiusPerTick:-.005f,RadiusOnUse:-.05f,Duration:80,potion_contents:{custom_effects:[{id:"minecraft:wither",amplifier:2,duration:80}]}}
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand] at @s unless block ^ ^ ^1 minecraft:bedrock unless block ^ ^ ^2 minecraft:bedrock unless block ^ ^ ^3 minecraft:bedrock unless block ~ ~-1 ~ minecraft:bedrock unless block ~ ~-2 ~ minecraft:bedrock unless block ~ ~1 ~ minecraft:bedrock unless block ~ ~2 ~ minecraft:bedrock unless block ~ ~3 ~ minecraft:bedrock unless block ~ ~4 ~ minecraft:bedrock unless block ~ ~5 ~ minecraft:bedrock run tp @s ^ ^ ^1.4
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand] at @s if data storage wither:options {toggledestruction:1} unless block ^ ^ ^1 air run summon creeper ~ ~ ~ {Silent:1b,CustomNameVisible:0b,ExplosionRadius:4b,Fuse:0,ignited:1b,CustomName:'{"text":"The Wither\'s Charged Attack"}',attributes:[{id:"minecraft:scale",base:0.0625}]}
