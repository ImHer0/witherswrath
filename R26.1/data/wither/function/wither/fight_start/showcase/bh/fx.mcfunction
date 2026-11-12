# Ran at the Wither every 2 ticks during the intro: the black hole (core, photon ring, streaks pulled in, pulses)
particle minecraft:dust{color:[0.0,0.0,0.0],scale:2.5} ~ ~1.7 ~ 0.18 0.18 0.18 0 8 normal
execute store result storage wither:intro c.x double 0.001 run data get storage wither:intro w[0] 1000
execute store result score #cy wither.stats run data get storage wither:intro w[1] 1000
scoreboard players add #cy wither.stats 1700
execute store result storage wither:intro c.y double 0.001 run scoreboard players get #cy wither.stats
execute store result storage wither:intro c.z double 0.001 run data get storage wither:intro w[2] 1000
scoreboard players operation #m wither.stats = #intro wither.stats
scoreboard players operation #m wither.stats %= #24 wither.stats
execute if score #m wither.stats matches 0 run function wither:wither/fight_start/showcase/bh/swirl0 with storage wither:intro c
execute if score #m wither.stats matches 2 run function wither:wither/fight_start/showcase/bh/swirl1 with storage wither:intro c
execute if score #m wither.stats matches 4 run function wither:wither/fight_start/showcase/bh/swirl2 with storage wither:intro c
execute if score #m wither.stats matches 6 run function wither:wither/fight_start/showcase/bh/swirl3 with storage wither:intro c
execute if score #m wither.stats matches 8 run function wither:wither/fight_start/showcase/bh/swirl4 with storage wither:intro c
execute if score #m wither.stats matches 10 run function wither:wither/fight_start/showcase/bh/swirl5 with storage wither:intro c
execute if score #m wither.stats matches 12 run function wither:wither/fight_start/showcase/bh/swirl6 with storage wither:intro c
execute if score #m wither.stats matches 14 run function wither:wither/fight_start/showcase/bh/swirl7 with storage wither:intro c
execute if score #m wither.stats matches 16 run function wither:wither/fight_start/showcase/bh/swirl8 with storage wither:intro c
execute if score #m wither.stats matches 18 run function wither:wither/fight_start/showcase/bh/swirl9 with storage wither:intro c
execute if score #m wither.stats matches 20 run function wither:wither/fight_start/showcase/bh/swirl10 with storage wither:intro c
execute if score #m wither.stats matches 22 run function wither:wither/fight_start/showcase/bh/swirl11 with storage wither:intro c
scoreboard players operation #m wither.stats = #intro wither.stats
scoreboard players operation #m wither.stats %= #6 wither.stats
execute if score #m wither.stats matches 0 run function wither:wither/fight_start/showcase/bh/ring0
execute if score #m wither.stats matches 2 run function wither:wither/fight_start/showcase/bh/ring1
execute if score #m wither.stats matches 4 run function wither:wither/fight_start/showcase/bh/ring2
# Pulses: alternating white and black flashes every 0.6s
scoreboard players operation #m wither.stats = #intro wither.stats
scoreboard players operation #m wither.stats %= #24 wither.stats
scoreboard players operation #n wither.stats = #intro wither.stats
scoreboard players operation #n wither.stats %= #48 wither.stats
execute if score #m wither.stats matches 0 if score #n wither.stats matches 0 if score #intro wither.stats matches 24..192 run function wither:wither/fight_start/showcase/bh/flash_white
execute if score #m wither.stats matches 0 if score #n wither.stats matches 24 if score #intro wither.stats matches 24..192 run function wither:wither/fight_start/showcase/bh/flash_black
