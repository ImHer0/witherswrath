# Every 2 ticks during the intro; #intro counts ticks
scoreboard players add #intro wither.stats 2
execute unless entity @e[type=minecraft:wither,tag=Bedrock,limit=1] run return run function wither:wither/fight_start/showcase/finale
execute if score #intro wither.stats matches 216.. run return run function wither:wither/fight_start/showcase/finale

# HALO: the skulls spin around the Wither as it rises
execute as @e[type=minecraft:item_display,tag=oH] rotated as @s positioned as @e[type=minecraft:wither,tag=Bedrock,limit=1,sort=nearest] run tp @s ~ ~ ~ ~-12 0

# QUAKE: a soul fire shockwave races out across the ground
execute if score #intro wither.stats matches ..20 store result storage wither:intro q.r double 0.45 run scoreboard players get #intro wither.stats
execute if score #intro wither.stats matches ..20 at @e[type=minecraft:marker,tag=wIntroCenter,limit=1] run function wither:wither/fight_start/showcase/ring with storage wither:intro q

# TEAR: blocks spawned last loop rise to their orbit; 4 rip out at once, then one more every 6 ticks
execute as @e[type=minecraft:item_display,tag=wRise] run function wither:wither/fight_start/showcase/rise_one
execute if score #intro wither.stats matches 6 run function wither:wither/fight_start/showcase/rise
scoreboard players operation #m wither.stats = #intro wither.stats
scoreboard players operation #m wither.stats %= #6 wither.stats
execute if score #m wither.stats matches 0 if score #intro wither.stats matches 12..174 run function wither:wither/fight_start/showcase/add_block
# BLACK HOLE: every block follows its spiralling disk, crumbs fall off them, the core pulls everything in
execute store result storage wither:intro f.k int 0.5 run scoreboard players get #intro wither.stats
execute positioned as @e[type=minecraft:wither,tag=Bedrock,limit=1,sort=nearest] run function wither:wither/fight_start/showcase/frame with storage wither:intro f
scoreboard players operation #m wither.stats = #intro wither.stats
scoreboard players operation #m wither.stats %= #4 wither.stats
execute if score #m wither.stats matches 0 as @e[type=minecraft:item_display,tag=wCrumb] at @s run function wither:wither/fight_start/showcase/crumb with entity @s item
data modify storage wither:intro w set from entity @e[type=minecraft:wither,tag=Bedrock,limit=1,sort=nearest] Pos
execute if score #intro wither.stats matches 6..206 at @e[type=minecraft:wither,tag=Bedrock,limit=1,sort=nearest] run function wither:wither/fight_start/showcase/bh/fx

# ASCENT: a helix of light and soul fire around the Wither, and a ring at its height every second
execute as @e[type=minecraft:marker,tag=wIntroHelix,limit=1] rotated as @s positioned as @e[type=minecraft:wither,tag=Bedrock,limit=1,sort=nearest] run tp @s ~ ~ ~ ~24 0
execute at @e[type=minecraft:marker,tag=wIntroHelix,limit=1] rotated as @e[type=minecraft:marker,tag=wIntroHelix,limit=1] positioned ^ ^1.4 ^2.6 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 normal
execute at @e[type=minecraft:marker,tag=wIntroHelix,limit=1] rotated as @e[type=minecraft:marker,tag=wIntroHelix,limit=1] rotated ~180 0 positioned ^ ^1.4 ^2.6 run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0 1 normal
scoreboard players operation #m wither.stats = #intro wither.stats
scoreboard players operation #m wither.stats %= #10 wither.stats
execute if score #m wither.stats matches 0 at @e[type=minecraft:wither,tag=Bedrock,limit=1,sort=nearest] run function wither:wither/fight_start/showcase/altitude_ring

# TUMBLE every second
scoreboard players operation #m wither.stats = #intro wither.stats
scoreboard players operation #m wither.stats %= #20 wither.stats
execute if score #m wither.stats matches 0 if score #intro wither.stats matches 20..180 store result storage wither:intro t.a double 0.11 run scoreboard players get #intro wither.stats
execute if score #m wither.stats matches 0 if score #intro wither.stats matches 20..180 run function wither:wither/fight_start/showcase/tumble with storage wither:intro t

# ERUPTIONS of soul sand around the arena every half second
scoreboard players operation #m wither.stats = #intro wither.stats
scoreboard players operation #m wither.stats %= #10 wither.stats
execute if score #m wither.stats matches 0 if score #intro wither.stats matches 20..190 run function wither:wither/fight_start/showcase/erupt

# SOUL FLAME PILLARS circling the arena
scoreboard players operation #m wither.stats = #intro wither.stats
scoreboard players operation #m wither.stats %= #4 wither.stats
execute if score #m wither.stats matches 0 if score #intro wither.stats matches 24..196 run function wither:wither/fight_start/showcase/pillars

# HUM
scoreboard players operation #m wither.stats = #intro wither.stats
scoreboard players operation #m wither.stats %= #30 wither.stats
execute if score #m wither.stats matches 0 at @e[type=minecraft:wither,tag=Bedrock,limit=1,sort=nearest] run playsound minecraft:block.beacon.ambient hostile @a[distance=..64] ~ ~ ~ 2 0.5

# COLLAPSE into the Wither just before it explodes
execute if score #intro wither.stats matches 196 run function wither:wither/fight_start/showcase/implode

schedule function wither:wither/fight_start/showcase/loop 2t
