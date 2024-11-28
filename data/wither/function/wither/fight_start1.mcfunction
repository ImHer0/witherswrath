# stuff for the rest of the datapack to work
scoreboard objectives add Health dummy
scoreboard objectives add Health1 dummy
scoreboard objectives add wcharge1 dummy
scoreboard objectives add wtime dummy
scoreboard objectives add smoke dummy
scoreboard objectives add spawn dummy


team add Wither
team modify Wither nametagVisibility never


scoreboard players set @e[type=minecraft:wither,limit=1,sort=nearest] smoke 1
scoreboard players set @e[type=minecraft:wither,limit=1,sort=nearest] wtime 2


# ASTHETICS
weather thunder
gamerule doFireTick false
gamerule doDaylightCycle false
execute if data storage wither:options {toggledestruction:0} run gamerule mobGriefing false
time set 22000t
stopsound @a music
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run playsound minecraft:music.nether.basalt_deltas music @a[distance=..100] ~ ~-2 ~ 2
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @e[type=player,distance=..100] run playsound minecraft:entity.parrot.imitate.wither hostile @a ~ ~ ~ 2 0.1

# CHEESING: breaks every block in area above and sides not below to avoid the void
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~ ~1 ~ minecraft:bedrock run tp ~ ~-8 ~
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~ ~2 ~ minecraft:bedrock run tp ~ ~-8 ~
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~ ~3 ~ minecraft:bedrock run tp ~ ~-8 ~
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~ ~4 ~ minecraft:bedrock run tp ~ ~-8 ~
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~ ~-1 ~ minecraft:bedrock run tp ~ ~8 ~
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~ ~-2 ~ minecraft:bedrock run tp ~ ~8 ~
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~ ~-3 ~ minecraft:bedrock run tp ~ ~8 ~
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~ ~-4 ~ minecraft:bedrock run tp ~ ~8 ~
execute at @e[type=minecraft:wither,limit=1,sort=nearest] unless block ^ ^ ^1 minecraft:bedrock unless block ^ ^ ^2 minecraft:bedrock unless block ^ ^ ^3 minecraft:bedrock unless block ~ ~-1 ~ minecraft:bedrock unless block ~ ~-2 ~ minecraft:bedrock unless block ~ ~1 ~ minecraft:bedrock unless block ~ ~2 ~ minecraft:bedrock unless block ~ ~3 ~ minecraft:bedrock unless block ~ ~4 ~ minecraft:bedrock unless block ~ ~5 ~ minecraft:bedrock run fill ~-2 ~1 ~-2 ~2 ~5 ~2 air destroy

# ASCEND
execute at @e[type=minecraft:wither,limit=1,sort=nearest] if entity @e[type=player,distance=..30] as @s at @s run particle sculk_soul ~ ~1 ~ 0.5 .35 0.5 0.1 50 normal
execute at @e[type=minecraft:wither,limit=1,sort=nearest] run particle minecraft:sculk_soul ~ ~ ~ 15 0 15 0.000000000000000000001 1000 normal
execute at @e[type=minecraft:wither,limit=1,sort=nearest] run particle dust_color_transition{from_color:[0.169,0.169,0.169],scale:4,to_color:[0.941,0.941,0.902]} ~ ~.8 ~ 0.9 1.2 0.9 0.001 100 normal
execute as @e[type=minecraft:wither,limit=1,sort=nearest] unless block ^ ^ ^1 minecraft:bedrock unless block ^ ^ ^2 minecraft:bedrock unless block ^ ^ ^3 minecraft:bedrock unless block ~ ~-1 ~ minecraft:bedrock unless block ~ ~-2 ~ minecraft:bedrock unless block ~ ~1 ~ minecraft:bedrock unless block ~ ~2 ~ minecraft:bedrock unless block ~ ~3 ~ minecraft:bedrock unless block ~ ~4 ~ minecraft:bedrock unless block ~ ~5 ~ minecraft:bedrock run data merge entity @e[type=wither,limit=1,sort=nearest] {active_effects:[{id:"minecraft:levitation",amplifier:3,duration:140,show_particles:0b},{id:"minecraft:slow_falling",amplifier:20,duration:400,show_particles:0b}]}
execute as @e[type=minecraft:wither,limit=1,sort=nearest] run team join Wither @s

# MODIFICATIONS
execute at @e[type=minecraft:wither,limit=1,sort=nearest] run effect give @e[type=player,distance=..100] minecraft:darkness 8 1 true
execute at @e[type=minecraft:wither,limit=1,sort=nearest] run effect give @e[type=!player,type=!wither,distance=..100] minecraft:weakness 600 5 true
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run data merge entity @e[type=wither,limit=1,sort=nearest] {Health:600f,Tags:["Charge","Wither"],ArmorItems:[{id:"minecraft:diamond_boots",count:1,components:{"minecraft:unbreakable":{},"minecraft:fire_resistant":{},"minecraft:enchantments":{levels:{"minecraft:blast_protection":255}}}},{},{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"minecraft:blast_protection":255}},attributes:[{id:"armor",type:"armor",amount:1.25,operation:"add_multiplied_base"}]}},{}],ArmorDropChances:[0.000F,0.085F,0.000F,0.085F],attributes:[{id:"minecraft:follow_range",base:1256},{id:"minecraft:knockback_resistance",base:0.5},{id:"minecraft:max_health",base:600},{id:"minecraft:movement_speed",base:2},{id:"minecraft:step_height",base:2},{id:"minecraft:explosion_knockback_resistance",base:0.5},{id:"minecraft:flying_speed",base:10}]}
execute as @e[type=player,distance=..100] run attribute @s minecraft:gravity modifier add 1 0.05 add_value

function wither:wither/convert
