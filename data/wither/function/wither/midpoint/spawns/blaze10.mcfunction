execute as @e[type=wither,limit=1,sort=nearest] at @s run summon blaze ~ ~3 ~ {DeathLootTable: "wither:entities/withermobs", Motion: [-1.2d, 2d, 1.7d], Invulnerable: 1b, Tags: ["wArcher"], Health:60f,Passengers:[{id:"minecraft:wither_skeleton", Tags: ["wArcher"],DeathLootTable: "wither:entities/withermobs",Health:55f,HandItems:[{id:"minecraft:bow",count:1},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{id:"minecraft:chainmail_chestplate",count:1},{}],ArmorDropChances:[0.085F,0.085F,0.000F,0.085F],attributes:[{id:"minecraft:max_health",base:55},{id:"minecraft:safe_fall_distance",base:100},{id:"minecraft:scale",base:1.25}]}],attributes:[{id:"minecraft:max_health",base:60},{id:"minecraft:scale",base:0.8}]}
execute at @e[type=wither,limit=1,sort=nearest] run playsound minecraft:entity.firework_rocket.launch hostile @a ~ ~ ~ 1 2

schedule clear wither:wither/midpoint/midpointtick