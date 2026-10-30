# Charge-up loop for the death blast (1 tick per run)
scoreboard players add #timer wither.blast 1

# WARNING
execute if score #timer wither.blast matches 1 at @e[type=marker,tag=death_blast,limit=1] run playsound minecraft:entity.warden.sonic_charge hostile @a[distance=..80] ~ ~ ~ 4 0.5
execute if score #timer wither.blast matches 1 at @e[type=marker,tag=death_blast,limit=1] run playsound minecraft:entity.wither.spawn hostile @a[distance=..80] ~ ~ ~ 4 0.3
execute if score #timer wither.blast matches 1 at @e[type=marker,tag=death_blast,limit=1] run tellraw @a[distance=..80] {"text":"The Wither's core is going critical... RUN!","color":"dark_red","bold":true}
execute if score #timer wither.blast matches 1..100 at @e[type=marker,tag=death_blast,limit=1] run title @a[distance=..60] actionbar {"text":"☠ RUN ☠","color":"dark_red","bold":true}

# RISING CHARGE SOUNDS
execute if score #timer wither.blast matches 20 at @e[type=marker,tag=death_blast,limit=1] run playsound minecraft:block.respawn_anchor.charge hostile @a[distance=..80] ~ ~ ~ 4 0.6
execute if score #timer wither.blast matches 40 at @e[type=marker,tag=death_blast,limit=1] run playsound minecraft:block.respawn_anchor.charge hostile @a[distance=..80] ~ ~ ~ 4 0.8
execute if score #timer wither.blast matches 60 at @e[type=marker,tag=death_blast,limit=1] run playsound minecraft:block.respawn_anchor.charge hostile @a[distance=..80] ~ ~ ~ 4 1.0
execute if score #timer wither.blast matches 80 at @e[type=marker,tag=death_blast,limit=1] run playsound minecraft:block.respawn_anchor.charge hostile @a[distance=..80] ~ ~ ~ 4 1.3
execute if score #timer wither.blast matches 70 at @e[type=marker,tag=death_blast,limit=1] run playsound minecraft:entity.warden.sonic_charge hostile @a[distance=..80] ~ ~ ~ 4 1.2

# CHARGE PARTICLES (energy getting pulled in, grows over time)
execute if score #timer wither.blast matches 1..49 at @e[type=marker,tag=death_blast,limit=1] run particle minecraft:portal ~ ~0.5 ~ 3 3 3 1 40 normal
execute if score #timer wither.blast matches 50..100 at @e[type=marker,tag=death_blast,limit=1] run particle minecraft:portal ~ ~0.5 ~ 6 6 6 2 120 normal
execute if score #timer wither.blast matches 1..100 at @e[type=marker,tag=death_blast,limit=1] run particle minecraft:soul_fire_flame ~ ~0.5 ~ 0.4 0.4 0.4 0.02 8 normal
execute if score #timer wither.blast matches 50..100 at @e[type=marker,tag=death_blast,limit=1] run particle minecraft:squid_ink ~ ~0.5 ~ 0.6 0.6 0.6 0.05 15 normal
execute if score #timer wither.blast matches 85..100 at @e[type=marker,tag=death_blast,limit=1] run particle minecraft:electric_spark ~ ~0.5 ~ 1.5 1.5 1.5 0.5 40 force

# DETONATE OR LOOP
execute if score #timer wither.blast matches 100.. run return run function wither:wither/lifecycle/death_blast/explode
execute if entity @e[type=marker,tag=death_blast] run schedule function wither:wither/lifecycle/death_blast/tick 1t
