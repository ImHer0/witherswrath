# Ran by midpoint 2 after 10 ticks

execute as @e[type=minecraft:wither] at @s run summon minecraft:creeper ~ ~1 ~ {CustomName:"The Wither's Instability", ExplosionRadius: 10, Invulnerable: 1b, Fuse: 0, ignited: 1b, Silent: 1b, attributes:[{id:"minecraft:scale",base:0.0625}]}
data merge entity @e[type=minecraft:wither,limit=1,sort=nearest] {CustomName:{color:"#D7BFFF","shadow_color":-12910431,"text":"Wither"} , CustomNameVisible: 0b, NoAI: 0b}
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run summon minecraft:lightning_bolt ~ ~ ~

execute at @e[type=wither,limit=1,sort=nearest] as @e[type=player,distance=..100] run playsound minecraft:entity.wither.spawn hostile @e[type=player,distance=..100] ~ ~ ~ 1 .6
execute at @e[type=wither,limit=1,sort=nearest] run particle minecraft:flash ~ ~.5 ~ 0.2 0.2 0.2 1 100 normal
execute at @e[type=wither,limit=1,sort=nearest] run particle electric_spark ~ ~0.8 ~ 0.3 0.5 0.3 8 400 normal
execute at @e[type=wither,limit=1,sort=nearest] run particle minecraft:end_rod ~ ~2 ~ 0 0 0 0.15 150 normal