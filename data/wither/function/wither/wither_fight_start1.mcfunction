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
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run playsound minecraft:music.nether.basalt_deltas music @a[distance=..100] ~ ~-2 ~ 2
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run playsound entity.parrot.imitate.wither hostile @a ~ ~ ~ 2 0.1

# CHEESING: breaks every block in area above and sides not below to avoid the void
execute as @e[type=minecraft:wither,limit=1,sort=nearest] if block ~ ~1 ~ bedrock run tp ~ ~8 ~
execute as @e[type=minecraft:wither,limit=1,sort=nearest] if block ~ ~2 ~ bedrock run tp ~ ~10 ~
execute at @e[type=minecraft:wither,limit=1,sort=nearest] run fill ~-2 ~1 ~-2 ~2 ~5 ~2 air destroy

# ASCEND
execute at @e[type=minecraft:wither,limit=1,sort=nearest] if entity @e[type=player,distance=..30] at @e[type=player] run summon area_effect_cloud ~ ~ ~ {Radius: 2f, Duration: 10, RadiusOnUse: -0.01f, RadiusPerTick: -0.0002f, ReapplicationDelay: 10, Effects: [{Duration: 125, Id: 25, Amplifier: 2b}, {Duration: 400, Id: 28, Amplifier: 1b}]}
execute as @e[type=minecraft:wither,limit=1,sort=nearest] run data merge entity @e[type=wither,limit=1,sort=nearest] {active_effects:[{id:"minecraft:levitation",amplifier:3,duration:140},{id:"minecraft:slow_falling",amplifier:20,duration:400}]}
execute as @e[type=minecraft:wither,limit=1,sort=nearest] run team join Wither @s

# MODIFICATIONS
execute at @e[type=minecraft:wither,limit=1,sort=nearest] run effect give @e[type=player,distance=..100] minecraft:darkness 8 1
execute at @e[type=minecraft:wither,limit=1,sort=nearest] run effect give @e[type=!player,type=!wither,distance=..100] minecraft:weakness 600 5
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run data merge entity @e[type=wither,limit=1,sort=nearest] {Health:600f,Tags:["Charge","Wither"],ArmorItems:[{id:"minecraft:diamond_boots",count:1,components:{"minecraft:unbreakable":{},"minecraft:fire_resistant":{},"minecraft:enchantments":{levels:{"minecraft:blast_protection":255}}}},{},{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"minecraft:blast_protection":255}},"minecraft:attribute_modifiers":[{id:"armor",type:"generic.armor",amount:1.25,operation:"add_multiplied_base"}]}},{}],ArmorDropChances:[0.000F,0.085F,0.000F,0.085F],attributes:[{id:"minecraft:generic.follow_range",base:1256},{id:"minecraft:generic.knockback_resistance",base:0.5},{id:"minecraft:generic.max_health",base:600},{id:"minecraft:generic.movement_speed",base:2},{id:"minecraft:generic.step_height",base:2},{id:"minecraft:generic.explosion_knockback_resistance",base:0.5}]}
execute as @e[type=player,distance=..100] run attribute @s minecraft:generic.gravity modifier add 1 0.05 add_value


