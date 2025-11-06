# wither skeleton spawns
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s unless entity @e[type=wither_skeleton,distance=..10] at @s run summon wither_skeleton ~ ~ ~ {Team:"Wither",DeathLootTable: "wither:entities/withermobs", Tags: ["wSkel"], attributes:[{id:"minecraft:generic.max_health",base:50},{id:"minecraft:generic.scale",base:1.1},{id:"minecraft:generic.safe_fall_distance",base:100}], ArmorItems:[{id:"minecraft:netherite_boots",count:1,components:{"minecraft:unbreakable":{show_in_tooltip:false},"minecraft:trim":{material:"minecraft:diamond",pattern:"minecraft:silence",show_in_tooltip:false}}},{},{},{}],ArmorDropChances:[-327.670F,0.085F,0.085F,0.085F], Health: 50}
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s unless entity @e[type=wither_skeleton,distance=..10] as @s at @s run particle minecraft:squid_ink ~ ~-0.3 ~ 0 0.5 0 0.07 120 force
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s unless entity @e[type=wither_skeleton,distance=..10] as @s at @s run particle minecraft:smoke ~ ~-0.3 ~ 1 0.5 1 0.1 450 force


execute if score enraged wenraged matches 1 run schedule function wither:wither/passive/spawn 5s
execute unless score enraged wenraged matches 1 run schedule function wither:wither/passive/spawn 10s
