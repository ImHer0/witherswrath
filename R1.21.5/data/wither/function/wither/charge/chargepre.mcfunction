# PREVENTS FROM BREAKING
tag @s remove Charge

# DASH PREP
data merge entity @e[type=minecraft:wither,limit=1,sort=nearest] {NoAI: 1b}
execute at @e[type=minecraft:wither,limit=1,sort=nearest] run summon armor_stand ~ ~ ~ {Invisible: 1b, Invulnerable: 1b, NoGravity: 1b, Tags: ["chargew"]}
execute at @e[type=minecraft:wither,limit=1,sort=nearest] run tp @e[type=minecraft:wither,limit=1,sort=nearest] ^ ^ ^ facing entity @p feet
execute at @e[type=minecraft:wither,limit=1,sort=nearest] run playsound minecraft:entity.breeze.inhale hostile @a ~ ~ ~ 1 0.1
execute at @e[type=minecraft:wither,limit=1,sort=nearest] as @e[type=minecraft:player,distance=..30] at @s run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1 .7
execute at @e[type=minecraft:wither,limit=1,sort=nearest] as @e[type=minecraft:player,distance=..30] at @s run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1 .6
execute at @e[type=minecraft:wither,limit=1,sort=nearest] run playsound minecraft:entity.wither.death hostile @e[distance=..32,type=player] ~ ~ ~ 0.8 2
execute as @e[type=minecraft:wither,limit=1,sort=nearest] run data merge entity @s {active_effects:[{id:"minecraft:resistance",amplifier:255,duration:60,show_particles:0b}]}
data merge entity @e[type=minecraft:wither,limit=1,sort=nearest] {Glowing:1b}

# PREVENT 1 SHOTTING PLAYERS
effect give @e[type=player] minecraft:resistance 5 0

schedule function wither:wither/charge/charge 30t
schedule function wither:wither/charge/chargetick 30t