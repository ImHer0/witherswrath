# stuff for the rest of the datapack to work
scoreboard objectives add Health dummy
scoreboard objectives add wcharge1 dummy
scoreboard objectives add spawn dummy
scoreboard objectives add wticktime dummy

team add Wither
team modify Wither nametagVisibility never

function wither:wither/fight_startparttrail

# ASTHETICS
execute if data storage wither:options {toggleanimation:0} run weather thunder
gamerule doFireTick false
gamerule doDaylightCycle false
execute if data storage wither:options {toggledestruction:0} run gamerule mobGriefing false

# TIME SET NIGHT Without the day reset ;)

execute store result score wticktime wticktime run time query daytime
execute if score wticktime wticktime matches 1..1000 run time add 21000
execute if score wticktime wticktime matches 1001..2000 run time add 20000
execute if score wticktime wticktime matches 2001..3000 run time add 19000
execute if score wticktime wticktime matches 3001..4000 run time add 18000
execute if score wticktime wticktime matches 4001..5000 run time add 17000
execute if score wticktime wticktime matches 5001..6000 run time add 16000
execute if score wticktime wticktime matches 6001..7000 run time add 15000
execute if score wticktime wticktime matches 7001..8000 run time add 14000
execute if score wticktime wticktime matches 8001..9000 run time add 13000
execute if score wticktime wticktime matches 9001..10000 run time add 12000
execute if score wticktime wticktime matches 10001..11000 run time add 11000
execute if score wticktime wticktime matches 11001..12000 run time add 10000
execute if score wticktime wticktime matches 12001..13000 run time add 9000
execute if score wticktime wticktime matches 13001..14000 run time add 8000
execute if score wticktime wticktime matches 14001..15000 run time add 7000
execute if score wticktime wticktime matches 15001..16000 run time add 6000
execute if score wticktime wticktime matches 16001..17000 run time add 5000
execute if score wticktime wticktime matches 17001..18000 run time add 4000
execute if score wticktime wticktime matches 18001..19000 run time add 3000
execute if score wticktime wticktime matches 19001..20000 run time add 2000
execute if score wticktime wticktime matches 20001..21000 run time add 1000
execute if score wticktime wticktime matches 21001..22000 run time add 1000
execute if score wticktime wticktime matches 23001..24000 run time add 22500


stopsound @a music
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run playsound minecraft:wither.10sec record @a[distance=..100] ~ ~ ~ 1 1
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
execute at @e[type=minecraft:wither,limit=1,sort=nearest] if data storage wither:options {toggleanimation:0} if entity @e[type=player,distance=..30] as @s at @s run particle sculk_soul ~ ~1 ~ 0.5 .35 0.5 0.1 50 normal
execute at @e[type=minecraft:wither,limit=1,sort=nearest] if data storage wither:options {toggleanimation:0} run particle minecraft:sculk_soul ~ ~ ~ 15 0 15 0.000000000000000000001 1000 normal
execute at @e[type=minecraft:wither,limit=1,sort=nearest] if data storage wither:options {toggleanimation:0} run particle dust_color_transition{from_color:[0.169,0.169,0.169],scale:4,to_color:[0.941,0.941,0.902]} ~ ~.8 ~ 0.9 1.2 0.9 0.001 100 normal
execute as @e[type=minecraft:wither,limit=1,sort=nearest] if data storage wither:options {toggleanimation:0} unless block ^ ^ ^1 minecraft:bedrock unless block ^ ^ ^2 minecraft:bedrock unless block ^ ^ ^3 minecraft:bedrock unless block ~ ~-1 ~ minecraft:bedrock unless block ~ ~-2 ~ minecraft:bedrock unless block ~ ~1 ~ minecraft:bedrock unless block ~ ~2 ~ minecraft:bedrock unless block ~ ~3 ~ minecraft:bedrock unless block ~ ~4 ~ minecraft:bedrock unless block ~ ~5 ~ minecraft:bedrock run data merge entity @e[type=wither,limit=1,sort=nearest] {active_effects:[{id:"minecraft:levitation",amplifier:3,duration:140,show_particles:0b},{id:"minecraft:slow_falling",amplifier:20,duration:400,show_particles:0b}]}
execute as @e[type=minecraft:wither,limit=1,sort=nearest] run team join Wither @s

# MODIFICATIONS
execute at @e[type=minecraft:wither,limit=1,sort=nearest] if data storage wither:options {toggleanimation:0} run effect give @e[type=player,distance=..100] minecraft:darkness 8 1 true
execute at @e[type=minecraft:wither,limit=1,sort=nearest] if data storage wither:options {toggleanimation:0} run effect give @e[type=!player,type=!wither,distance=..100] minecraft:weakness 600 5 true
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run data merge entity @e[type=wither,limit=1,sort=nearest] {DeathLootTable:"wither:entities/wither",Health:600f,Tags:["Bedrock","Charge","Wither","Dash"],equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:enchantments":{"minecraft:blast_protection":255}},"minecraft:unbreakable":{}}},legs:{id:"minecraft:iron_leggings",count:1,components:{"minecraft:unbreakable":{},"minecraft:enchantments":{"minecraft:blast_protection":255}}},chest:{id:"minecraft:iron_chestplate",count:1,components:{"minecraft:unbreakable":{},"minecraft:enchantments":{"minecraft:blast_protection":255}}},head:{id:"minecraft:leather_helmet",count:1,components:{"minecraft:unbreakable":{},"minecraft:enchantments":{"minecraft:blast_protection":255}}},ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],attributes:[{id:"minecraft:follow_range",base:69},{id:"minecraft:knockback_resistance",base:0.5},{id:"minecraft:max_health",base:600},{id:"minecraft:movement_speed",base:2},{id:"minecraft:step_height",base:2},{id:"minecraft:explosion_knockback_resistance",base:0.9},{id:"minecraft:flying_speed",base:5}]}
execute at @e[type=minecraft:wither,limit=1,sort=nearest] if data storage wither:options {toggleanimation:0} as @e[type=player,distance=..100] run attribute @s minecraft:gravity modifier add 1 0.05 add_value

function wither:wither/convert
