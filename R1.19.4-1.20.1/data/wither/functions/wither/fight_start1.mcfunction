# stuff for the rest of the datapack to work
scoreboard objectives add Health dummy
scoreboard objectives add wcharge1 dummy
scoreboard objectives add spawn dummy
scoreboard objectives add wticktime dummy
scoreboard objectives add wchargereset dummy
scoreboard objectives add wenraged dummy
scoreboard objectives add witherCheck dummy

team add Wither
team modify Wither nametagVisibility never

function wither:wither/fight_startparttrail

# ASTHETICS
execute if data storage wither:options {toggleanimation:Default} if data storage wither:options {toggleweather:Enabled} run weather thunder
gamerule doFireTick false
execute if data storage wither:options {toggleweather:Enabled} run gamerule doDaylightCycle false
execute if data storage wither:options {toggledestruction:Disabled} run gamerule mobGriefing false

# TIME SET NIGHT Without the day reset ;)

execute store result score wticktime wticktime run time query daytime
execute if data storage wither:options {toggleweather:Enabled} if score wticktime wticktime matches 1..1000 run time add 21000
execute if data storage wither:options {toggleweather:Enabled} if score wticktime wticktime matches 1001..2000 run time add 20000
execute if data storage wither:options {toggleweather:Enabled} if score wticktime wticktime matches 2001..3000 run time add 19000
execute if data storage wither:options {toggleweather:Enabled} if score wticktime wticktime matches 3001..4000 run time add 18000
execute if data storage wither:options {toggleweather:Enabled} if score wticktime wticktime matches 4001..5000 run time add 17000
execute if data storage wither:options {toggleweather:Enabled} if score wticktime wticktime matches 5001..6000 run time add 16000
execute if data storage wither:options {toggleweather:Enabled} if score wticktime wticktime matches 6001..7000 run time add 15000
execute if data storage wither:options {toggleweather:Enabled} if score wticktime wticktime matches 7001..8000 run time add 14000
execute if data storage wither:options {toggleweather:Enabled} if score wticktime wticktime matches 8001..9000 run time add 13000
execute if data storage wither:options {toggleweather:Enabled} if score wticktime wticktime matches 9001..10000 run time add 12000
execute if data storage wither:options {toggleweather:Enabled} if score wticktime wticktime matches 10001..11000 run time add 11000
execute if data storage wither:options {toggleweather:Enabled} if score wticktime wticktime matches 11001..12000 run time add 10000
execute if data storage wither:options {toggleweather:Enabled} if score wticktime wticktime matches 12001..13000 run time add 9000
execute if data storage wither:options {toggleweather:Enabled} if score wticktime wticktime matches 13001..14000 run time add 8000
execute if data storage wither:options {toggleweather:Enabled} if score wticktime wticktime matches 14001..15000 run time add 7000
execute if data storage wither:options {toggleweather:Enabled} if score wticktime wticktime matches 15001..16000 run time add 6000
execute if data storage wither:options {toggleweather:Enabled} if score wticktime wticktime matches 16001..17000 run time add 5000
execute if data storage wither:options {toggleweather:Enabled} if score wticktime wticktime matches 17001..18000 run time add 4000
execute if data storage wither:options {toggleweather:Enabled} if score wticktime wticktime matches 18001..19000 run time add 3000
execute if data storage wither:options {toggleweather:Enabled} if score wticktime wticktime matches 19001..20000 run time add 2000
execute if data storage wither:options {toggleweather:Enabled} if score wticktime wticktime matches 20001..21000 run time add 1000
execute if data storage wither:options {toggleweather:Enabled} if score wticktime wticktime matches 21001..22000 run time add 1000
execute if data storage wither:options {toggleweather:Enabled} if score wticktime wticktime matches 23001..24000 run time add 22500


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
execute at @e[type=minecraft:wither,limit=1,sort=nearest] if data storage wither:options {toggleanimation:Default} if entity @e[type=player,distance=..30] as @s at @s run particle sculk_soul ~ ~1 ~ 0.5 .35 0.5 0.1 50 normal
execute at @e[type=minecraft:wither,limit=1,sort=nearest] if data storage wither:options {toggleanimation:Default} run particle minecraft:sculk_soul ~ ~ ~ 15 0 15 0.000000000000000000001 1000 normal
execute at @e[type=minecraft:wither,limit=1,sort=nearest] if data storage wither:options {toggleanimation:Default} run particle minecraft:cloud ~ ~.8 ~ 0.9 1.2 0.9 0.001 100 normal
execute as @e[type=minecraft:wither,limit=1,sort=nearest] if data storage wither:options {toggleanimation:Default} unless block ^ ^ ^1 minecraft:bedrock unless block ^ ^ ^2 minecraft:bedrock unless block ^ ^ ^3 minecraft:bedrock unless block ~ ~-1 ~ minecraft:bedrock unless block ~ ~-2 ~ minecraft:bedrock unless block ~ ~1 ~ minecraft:bedrock unless block ~ ~2 ~ minecraft:bedrock unless block ~ ~3 ~ minecraft:bedrock unless block ~ ~4 ~ minecraft:bedrock unless block ~ ~5 ~ minecraft:bedrock run data merge entity @e[type=wither,limit=1,sort=nearest] {ActiveEffects:[{Id:25,Amplifier:3b,Duration:140,ShowParticles:0b},{Id:28,Amplifier:20b,Duration:400,ShowParticles:0b}]}
execute as @e[type=minecraft:wither,limit=1,sort=nearest] run team join Wither @s

# MODIFICATIONS
execute at @e[type=minecraft:wither,limit=1,sort=nearest] if data storage wither:options {toggleanimation:Default} run effect give @e[type=player,distance=..100] minecraft:darkness 8 1 true
execute at @e[type=minecraft:wither,limit=1,sort=nearest] if data storage wither:options {toggleanimation:Default} run effect give @e[type=!player,type=!wither,distance=..100] minecraft:weakness 600 5 true
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run data merge entity @e[type=wither,limit=1,sort=nearest] {Health:600f,Tags:["Bedrock","Charge","Wither","Dash"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,components:{"minecraft:enchantments":{levels:{"minecraft:blast_protection":255}},"minecraft:unbreakable":{}}},{id:"minecraft:iron_leggings",Count:1b,components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"minecraft:blast_protection":255}}}},{id:"minecraft:iron_chestplate",Count:1b,components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"minecraft:blast_protection":255}}}},{id:"minecraft:leather_helmet",Count:1b,components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"minecraft:blast_protection":255}}}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:"minecraft:generic.follow_range",Base:69},{Name:"minecraft:generic.knockback_resistance",Base:0.5},{Name:"minecraft:generic.max_health",Base:600},{Name:"minecraft:generic.movement_speed",Base:2},{Name:"minecraft:generic.step_height",Base:2},{Name:"minecraft:generic.flying_speed",Base:5}]}


function wither:wither/convert
