# stuff for the rest of the datapack to work
scoreboard objectives add Health dummy
scoreboard objectives add Health1 dummy
scoreboard objectives add wcharge1 dummy
scoreboard objectives add wtime dummy
scoreboard objectives add smoke dummy
team add Wither
team modify Wither nametagVisibility never
scoreboard players set @e[type=minecraft:wither,limit=1,sort=nearest] smoke 1
scoreboard players set @e[type=minecraft:wither,limit=1,sort=nearest] wtime 2

# ASTHETICS
weather thunder
gamerule doFireTick false
gamerule doDaylightCycle false
execute if score destroy wdestroy matches 2 run gamerule mobGriefing false
time set 22000t
stopsound @a music
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run playsound minecraft:music.nether.basalt_deltas music @a
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run playsound entity.parrot.imitate.wither hostile @a ~ ~ ~ 1 0.1

# CHEESING: breaks every block in area above and sides not below to avoid the void
execute as @e[type=minecraft:wither,limit=1,sort=nearest] if block ~ ~1 ~ bedrock run tp ~ ~8 ~
execute as @e[type=minecraft:wither,limit=1,sort=nearest] if block ~ ~2 ~ bedrock run tp ~ ~10 ~
execute at @e[type=minecraft:wither,limit=1,sort=nearest] run fill ~-2 ~1 ~-2 ~2 ~5 ~2 air destroy

# ASCEND
execute at @e[type=minecraft:wither,limit=1,sort=nearest] if entity @e[type=player,distance=..30] at @e[type=player] run summon area_effect_cloud ~ ~ ~ {Radius: 2f, Duration: 10, RadiusOnUse: -0.01f, RadiusPerTick: -0.0002f, ReapplicationDelay: 10, Effects: [{Duration: 125, Id: 25, Amplifier: 2b}, {Duration: 400, Id: 28, Amplifier: 1b}]}
execute as @e[type=minecraft:wither,limit=1,sort=nearest] run data merge entity @e[type=minecraft:wither,limit=1,sort=nearest] {ActiveEffects: [{Id: 28, Duration: 400, Amplifier: 20}, {Id: 25, Duration: 140, Amplifier: 3}]}
execute as @e[type=minecraft:wither,limit=1,sort=nearest] run team join Wither @s

# MODIFICATIONS
execute at @e[type=minecraft:wither,limit=1,sort=nearest] run effect give @e[type=player,distance=..100] minecraft:darkness 8 1
execute at @e[type=minecraft:wither,limit=1,sort=nearest] run effect give @e[type=!player,type=!wither,distance=..100] minecraft:weakness 600 5
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run data merge entity @s {Tags: ["Charge", "Wither"], ArmorItems: [{Count: 1, id: "leather_boots", tag: {Enchantments: [{id: "blast_protection", lvl: 255}]}}, {Count: 1, id: "leather_leggings", tag: {Enchantments: [{id: "blast_protection", lvl: 255}]}}, {Count: 1, id: "leather_chestplate", tag: {Enchantments: [{id: "blast_protection", lvl: 100}]}}, {Count: 1, id: "leather_helmet", tag: {Enchantments: [{id: "blast_protection", lvl: 255}]}}], ArmorDropChances: [0.0f, 0.0f, 0.0f, 0.0f], Attributes: [{Name: "generic.knockback_resistance", Base: 0.2d}, {Base: 1256.0d, Name: "generic.follow_range"}, {Name: "generic.movement_speed", Base: 2}, {Name: "generic.max_health", Base: 600}], Health: 600}

