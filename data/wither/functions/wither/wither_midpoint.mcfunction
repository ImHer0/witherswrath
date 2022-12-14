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
execute at @e[type=player,distance=..50] run summon wither_skeleton ~ ~5 ~ {DeathLootTable: "wither:entities/wskeleton", Attributes: [{Name: "generic.max_health", Base: 80}], Health: 80}
execute as @e[type=wither,limit=1,sort=nearest] run summon wither_skeleton ~ ~ ~ {DeathLootTable: "wither:entities/wskeleton", Attributes: [{Name: "generic.max_health", Base: 80}], Health: 100, HandItems: [{Count: 1, id: "bow"}], ArmorItems: [{}, {}, {Count: 1, id: "chainmail_chestplate"}]}
execute as @e[type=wither,limit=1,sort=nearest] run summon wither_skeleton ~ ~ ~ {DeathLootTable: "wither:entities/wskeleton", Attributes: [{Name: "generic.max_health", Base: 80}], Health: 100, HandItems: [{Count: 1, id: "bow"}], ArmorItems: [{}, {}, {Count: 1, id: "chainmail_chestplate"}]}
execute as @e[type=wither,limit=1,sort=nearest] at @s run summon blaze ~ ~3 ~ {DeathLootTable: "wither:entities/wskeleton", Motion: [1.8d, 2d, 0d], Invulnerable: 1, Tags: ["wArcher"], Attributes: [{Name: "generic.max_health", Base: 60}], Health: 60, Passengers: [{id: "wither_skeleton", Attributes: [{Name: "generic.max_health", Base: 51}], Health: 51, HandItems: [{Count: 1, id: "bow"}], ArmorItems: [{}, {}, {Count: 1, id: "chainmail_chestplate"}]}]}
execute as @e[type=wither,limit=1,sort=nearest] at @s run summon blaze ~ ~3 ~ {DeathLootTable: "wither:entities/wskeleton", Motion: [0d, 2d, 1.8d], Invulnerable: 1, Tags: ["wArcher"], Attributes: [{Name: "generic.max_health", Base: 60}], Health: 60, Passengers: [{id: "wither_skeleton", Attributes: [{Name: "generic.max_health", Base: 51}], Health: 51, HandItems: [{Count: 1, id: "bow"}], ArmorItems: [{}, {}, {Count: 1, id: "chainmail_chestplate"}]}]}
execute as @e[type=wither,limit=1,sort=nearest] at @s run summon blaze ~ ~3 ~ {DeathLootTable: "wither:entities/wskeleton", Motion: [-1.8d, 2d, 0d], Invulnerable: 1, Tags: ["wArcher"], Attributes: [{Name: "generic.max_health", Base: 60}], Health: 60, Passengers: [{id: "wither_skeleton", Attributes: [{Name: "generic.max_health", Base: 51}], Health: 51, HandItems: [{Count: 1, id: "bow"}], ArmorItems: [{}, {}, {Count: 1, id: "chainmail_chestplate"}]}]}
execute as @e[type=wither,limit=1,sort=nearest] at @s run summon blaze ~ ~3 ~ {DeathLootTable: "wither:entities/wskeleton", Motion: [0d, 2d, -1.8d], Invulnerable: 1, Tags: ["wArcher"], Attributes: [{Name: "generic.max_health", Base: 60}], Health: 60, Passengers: [{id: "wither_skeleton", Attributes: [{Name: "generic.max_health", Base: 51}], Health: 51, HandItems: [{Count: 1, id: "bow"}], ArmorItems: [{}, {}, {Count: 1, id: "chainmail_chestplate"}]}]}
execute as @e[type=wither,limit=1,sort=nearest] at @e[type=player,distance=..20] run summon area_effect_cloud ~ ~ ~ {CustomName: '', CustomNameVisible: 1, Radius: 3f, Duration: 200, RadiusOnUse: -0.01f, RadiusPerTick: -0.0002f, ReapplicationDelay: 40, Effects: [{Duration: 200, Id: 20, Amplifier: 4b}, {Duration: 40, Id: 9, Amplifier: 1b}]}
effect give @e[type=minecraft:wither_skeleton,distance=..50] minecraft:speed 99999 4

# PREVENT SUFFOCATION FROM WITHER SKELETONS
execute as @e[type=minecraft:blaze,limit=5,sort=nearest] at @s run fill ~-1 ~ ~-1 ~1 ~4 ~1 air destroy

# EXPLOSION PURGE
execute as @e[type=minecraft:wither] at @s run effect give @e[type=minecraft:wither] resistance 1 100 true

# CRAZY EFFECT: particles thunder etc
scoreboard players set @e[type=minecraft:wither,limit=1,sort=nearest] smoke 1
scoreboard players set @e[type=minecraft:wither,limit=1,sort=nearest] wtime 3
effect give @e[type=wither_skeleton] resistance 3 10
data merge entity @e[type=minecraft:wither,limit=1,sort=nearest] {NoAI: 1, Invulnerable: 1}

# EFFECTS
execute at @e[type=wither,limit=1,sort=nearest] run playsound minecraft:ambient.basalt_deltas.mood hostile @a[distance=..100]
execute at @e[type=wither,limit=1,sort=nearest] run playsound minecraft:ambient.nether_wastes.additions ambient @a[distance=..100]
particle minecraft:flash ~ ~2 ~ 0 0 0 0.1 1 normal
particle minecraft:end_rod ~ ~2 ~ 0.3 0.3 0.3 0.1 120 normal