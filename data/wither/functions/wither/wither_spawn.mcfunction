# wither skeleton spawns
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s unless entity @e[type=wither_skeleton,distance=..10] at @s run summon wither_skeleton ~ ~ ~ {DeathLootTable: "wither:entities/wskeleton", Tags: ["wSkel"], Attributes: [{Name: "generic.max_health", Base: 50}], Health: 50}
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s unless entity @e[type=wither_skeleton,distance=..10] as @s at @s run particle minecraft:squid_ink ~ ~-0.3 ~ 0 0.5 0 0.07 120 force
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s unless entity @e[type=wither_skeleton,distance=..10] as @s at @s run particle minecraft:smoke ~ ~-0.3 ~ 1 0.5 1 0.1 450 force

schedule function wither:wither/wither_spawn 10s