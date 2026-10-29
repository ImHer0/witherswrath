# wither skeleton spawns
# How many spawn at once (1, or 1 per 2 nearby players when scaling is on, max 4)
scoreboard players set #spawns wither.scale 1
execute if data storage wither:options {togglescaling:Enabled} at @e[type=minecraft:wither,limit=1,sort=nearest] store result score #spawns wither.scale if entity @a[distance=..64,gamemode=!spectator]
scoreboard players add #spawns wither.scale 1
scoreboard players operation #spawns wither.scale /= #2 wither.scale
execute if score #spawns wither.scale matches ..0 run scoreboard players set #spawns wither.scale 1
execute if score #spawns wither.scale matches 5.. run scoreboard players set #spawns wither.scale 4
# Performance cap: no wave while 8 + 4 per wave-size of the Wither's skeletons are still alive nearby (12 solo, 24 max)
scoreboard players set #4 wither.scale 4
scoreboard players operation #cap wither.scale = #spawns wither.scale
scoreboard players operation #cap wither.scale *= #4 wither.scale
scoreboard players add #cap wither.scale 8
execute at @e[type=minecraft:wither,limit=1,sort=nearest] store result score #alive wither.scale if entity @e[type=minecraft:wither_skeleton,tag=wSkel,distance=..64]
execute if score #alive wither.scale >= #cap wither.scale run scoreboard players set #spawns wither.scale 0
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s unless entity @e[type=wither_skeleton,distance=..10] as @s at @s run particle minecraft:squid_ink ~ ~-0.3 ~ 0 0.5 0 0.07 30 normal
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s unless entity @e[type=wither_skeleton,distance=..10] as @s at @s run particle minecraft:smoke ~ ~-0.3 ~ 1 0.5 1 0.1 112 normal

# Each one is a random variant (textures come from the resource pack)
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s unless entity @e[type=wither_skeleton,distance=..10] run function wither:wither/passive/variants/spawn_loop

execute if score enraged wenraged matches 1 run schedule function wither:wither/passive/spawn 5s
execute unless score enraged wenraged matches 1 run schedule function wither:wither/passive/spawn 10s

