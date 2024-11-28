# Ran by midpoint after 2 seconds
team empty phantom_team
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run summon armor_stand ~ ~ ~ {Invisible: 1b, Invulnerable: 1b, NoGravity: 1b, Tags: ["poswi"]}
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run particle minecraft:explosion_emitter ~ ~ ~ 2 2 2 2 3 force
execute as @e[type=minecraft:wither] at @s run summon minecraft:creeper ~ ~1 ~ {CustomName: '"The Wither\'s Instability"', ExplosionRadius: 10, Invulnerable: 1b, Fuse: 0, ignited: 1b, Silent: 1b, attributes:[{id:"minecraft:scale",base:0.09}]}
data merge entity @e[type=minecraft:wither,limit=1,sort=nearest] {CustomName: '{"color":"#d7bfff","text":"Wither"}', CustomNameVisible: 0b, NoAI: 0b}
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run tp @s ~ ~ ~
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run summon minecraft:lightning_bolt ~ ~ ~
execute at @e[type=wither,limit=1,sort=nearest] run particle minecraft:flash ~ ~.5 ~ 0.2 0.2 0.2 1 100 normal
execute at @e[type=wither,limit=1,sort=nearest] run particle minecraft:end_rod ~ ~2 ~ 0 0 0 0.15 150 normal


schedule function wither:wither/midpoint/midpoint2.5 10t

scoreboard players set @e[type=minecraft:wither,limit=1,sort=nearest] wtime 2