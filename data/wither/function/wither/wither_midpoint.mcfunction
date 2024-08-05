# TIME
time add 100t
gamerule doDaylightCycle true
weather clear

# ONE-TIME ONLY: Removing this tag will stop the adv from triggering
tag @s remove Wither

# BREAK
team join phantom_team @e[distance=..20]
schedule function wither:wither/wither_midpoint2 2s
schedule function wither:wither/wither_midpoint3 5s

# SUMMON WITHER SKELETONS
execute at @e[type=player,distance=..50] run summon wither_skeleton ^ ^5 ^.5 {DeathLootTable: "wither:entities/withermobs", attributes:[{id:"minecraft:generic.max_health",base:80}], Health: 80f}
execute as @e[type=wither,limit=1,sort=nearest] run summon wither_skeleton ~ ~ ~ {DeathLootTable: "wither:entities/withermobs", Health:100f,HandItems:[{id:"minecraft:bow",count:1},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{id:"minecraft:chainmail_chestplate",count:1},{}],ArmorDropChances:[0.085F,0.085F,0.000F,0.085F],attributes:[{id:"minecraft:generic.max_health",base:100}]}
execute as @e[type=wither,limit=1,sort=nearest] run summon wither_skeleton ~ ~ ~ {DeathLootTable: "wither:entities/withermobs", Health:100f,HandItems:[{id:"minecraft:bow",count:1},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{id:"minecraft:chainmail_chestplate",count:1},{}],ArmorDropChances:[0.085F,0.085F,0.000F,0.085F],attributes:[{id:"minecraft:generic.max_health",base:100}]}
execute as @e[type=wither,limit=1,sort=nearest] at @s run summon blaze ~ ~3 ~ {DeathLootTable: "wither:entities/withermobs", Motion: [1.8d, 2d, 0d], Invulnerable: 1b, Tags: ["wArcher"], Health:60f,Passengers:[{id:"minecraft:wither_skeleton",Health:55f,HandItems:[{id:"minecraft:bow",count:1},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{id:"minecraft:chainmail_chestplate",count:1},{}],ArmorDropChances:[0.085F,0.085F,0.000F,0.085F],attributes:[{id:"minecraft:generic.max_health",base:55},{id:"minecraft:generic.safe_fall_distance",base:100},{id:"minecraft:generic.scale",base:1.25}]}],attributes:[{id:"minecraft:generic.max_health",base:60},{id:"minecraft:generic.scale",base:0.8}]}
execute as @e[type=wither,limit=1,sort=nearest] at @s run summon blaze ~ ~3 ~ {DeathLootTable: "wither:entities/withermobs", Motion: [0d, 2d, 1.8d], Invulnerable: 1b, Tags: ["wArcher"], Health:60f,Passengers:[{id:"minecraft:wither_skeleton",Health:55f,HandItems:[{id:"minecraft:bow",count:1},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{id:"minecraft:chainmail_chestplate",count:1},{}],ArmorDropChances:[0.085F,0.085F,0.000F,0.085F],attributes:[{id:"minecraft:generic.max_health",base:55},{id:"minecraft:generic.safe_fall_distance",base:100},{id:"minecraft:generic.scale",base:1.25}]}],attributes:[{id:"minecraft:generic.max_health",base:60},{id:"minecraft:generic.scale",base:0.8}]}
execute as @e[type=wither,limit=1,sort=nearest] at @s run summon blaze ~ ~3 ~ {DeathLootTable: "wither:entities/withermobs", Motion: [-1.8d, 2d, 0d], Invulnerable: 1b, Tags: ["wArcher"], Health:60f,Passengers:[{id:"minecraft:wither_skeleton",Health:55f,HandItems:[{id:"minecraft:bow",count:1},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{id:"minecraft:chainmail_chestplate",count:1},{}],ArmorDropChances:[0.085F,0.085F,0.000F,0.085F],attributes:[{id:"minecraft:generic.max_health",base:55},{id:"minecraft:generic.safe_fall_distance",base:100},{id:"minecraft:generic.scale",base:1.25}]}],attributes:[{id:"minecraft:generic.max_health",base:60},{id:"minecraft:generic.scale",base:0.8}]}
execute as @e[type=wither,limit=1,sort=nearest] at @s run summon blaze ~ ~3 ~ {DeathLootTable: "wither:entities/withermobs", Motion: [0d, 2d, -1.8d], Invulnerable: 1b, Tags: ["wArcher"], Health:60f,Passengers:[{id:"minecraft:wither_skeleton",Health:55f,HandItems:[{id:"minecraft:bow",count:1},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{id:"minecraft:chainmail_chestplate",count:1},{}],ArmorDropChances:[0.085F,0.085F,0.000F,0.085F],attributes:[{id:"minecraft:generic.max_health",base:55},{id:"minecraft:generic.safe_fall_distance",base:100},{id:"minecraft:generic.scale",base:1.25}]}],attributes:[{id:"minecraft:generic.max_health",base:60},{id:"minecraft:generic.scale",base:0.8}]}
execute as @e[type=wither,limit=1,sort=nearest] at @e[type=player,distance=..20] run summon area_effect_cloud ~ ~ ~ {Particle:{type:"smoke"},ReapplicationDelay:2,Radius:3f,RadiusPerTick:-.005f,RadiusOnUse:-.05f,Duration:200,potion_contents:{custom_effects:[{id:"minecraft:wither",amplifier:2,duration:80},{id:"minecraft:nausea",amplifier:1,duration:40,show_particles:0b}]}}
effect give @e[type=minecraft:wither_skeleton,distance=..50] minecraft:speed infinite 4

# EXPLOSION PURGE
execute as @e[type=minecraft:wither] at @s run effect give @e[type=minecraft:wither] resistance 1 100 true

# SPECIAL FX
scoreboard players set @e[type=minecraft:wither,limit=1,sort=nearest] smoke 1
scoreboard players set @e[type=minecraft:wither,limit=1,sort=nearest] wtime 3
effect give @e[type=wither_skeleton,distance=..20] resistance 3 10
data merge entity @e[type=minecraft:wither,limit=1,sort=nearest] {NoAI: 1b, Invulnerable: 1b, active_effects:[{id:"minecraft:resistance",amplifier:255,duration:5}]}


# EFFECTS
execute at @e[type=wither,limit=1,sort=nearest] run playsound minecraft:ambient.basalt_deltas.mood hostile @e[type=player,distance=..100]
execute at @e[type=wither,limit=1,sort=nearest] run playsound minecraft:ambient.nether_wastes.additions ambient @e[type=player,distance=..100]
execute at @e[type=wither,limit=1,sort=nearest] run playsound minecraft:ambient.nether_wastes.additions ambient @e[type=player,distance=..100]
execute at @e[type=wither,limit=1,sort=nearest] run playsound minecraft:ambient.nether_wastes.additions ambient @e[type=player,distance=..100]
execute at @e[type=wither,limit=1,sort=nearest] run playsound minecraft:ambient.nether_wastes.additions ambient @e[type=player,distance=..100]
execute at @e[type=wither,limit=1,sort=nearest] run playsound minecraft:ambient.nether_wastes.additions ambient @e[type=player,distance=..100]
execute at @e[type=wither,limit=1,sort=nearest] run playsound minecraft:ambient.nether_wastes.additions ambient @e[type=player,distance=..100]
execute at @e[type=wither,limit=1,sort=nearest] run playsound minecraft:ambient.nether_wastes.additions ambient @e[type=player,distance=..100]
execute at @e[type=wither,limit=1,sort=nearest] run playsound minecraft:ambient.nether_wastes.additions ambient @e[type=player,distance=..100]

