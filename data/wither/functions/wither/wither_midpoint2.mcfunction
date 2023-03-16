# Ran by wither_midpoint after 2 seconds
team empty phantom_team
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run summon armor_stand ~ ~ ~ {Invisible: 1b, Invulnerable: 1b, NoGravity: 1b, Tags: ["poswi"]}
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run particle minecraft:explosion_emitter ~ ~ ~ 2 2 2 2 3 force
execute as @e[type=minecraft:wither] at @s run summon minecraft:creeper ~ ~1 ~ {CustomName: '"The Wither\'s Instability"', ExplosionRadius: 10, Invulnerable: 1, Fuse: 0, ignited: 1, Silent: 1}
data merge entity @e[type=minecraft:wither,limit=1,sort=nearest] {CustomName: '"\\u00A7lWither\\u00A7r"', CustomNameVisible: 0b, NoAI: 0}
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run tp @s ~ ~ ~
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run summon minecraft:lightning_bolt ~ ~ ~

schedule function wither:wither/wither_midpoint2.5 10t

scoreboard players set @e[type=minecraft:wither,limit=1,sort=nearest] wtime 2