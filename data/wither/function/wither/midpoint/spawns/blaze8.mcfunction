execute as @e[type=wither,limit=1,sort=nearest] at @s run summon blaze ~ ~3 ~ {DeathLootTable: "wither:entities/withermobs", Motion: [1.3d, 2.25d, -1.2d], Tags: ["wArcher"], Health:60f,Passengers:[{id:"minecraft:wither_skeleton", Tags: ["wArcher"],DeathLootTable: "wither:entities/withermobs",Health:55f,HandDropChances:[-327.670F,0.085F],equipment:{mainhand:{id:"minecraft:bow",count:1},chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:trim":{material:"minecraft:resin",pattern:"minecraft:silence",show_in_tooltip:false},"minecraft:unbreakable":{show_in_tooltip:false}}}},ArmorDropChances:[0.085F,0.085F,-327.670F,0.085F],active_effects:[{id:"minecraft:fire_resistance",amplifier:1,duration:-1,show_particles:0b,show_icon:0b}],attributes:[{id:"minecraft:max_health",base:55},{id:"minecraft:safe_fall_distance",base:100},{id:"minecraft:scale",base:1.25}]}],attributes:[{id:"minecraft:max_health",base:60},{id:"minecraft:scale",base:0.8}]}
execute at @e[type=wither,limit=1,sort=nearest] run playsound minecraft:entity.firework_rocket.launch hostile @a ~ ~ ~ 1 2