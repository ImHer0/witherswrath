# TIME
time add 1000t
gamerule doDaylightCycle true
weather clear

# ONE-TIME ONLY: Removing this tag will stop the adv from triggering
tag @s remove Wither

# FUNCTIONS
execute if data storage wither:options {toggleanimation:0} run schedule function wither:wither/midpoint/midpoint2 2s
execute if data storage wither:options {toggleanimation:0} run schedule function wither:wither/midpoint/midpoint3 5s
execute if data storage wither:options {toggleanimation:0} run schedule function wither:wither/midpoint/midpointtick 1t
execute if data storage wither:options {toggleanimation:0} run schedule function wither:wither/midpoint/midpointparttick 4t

# BEDROCK
execute if data storage wither:options {toggleanimation:2} as @e[type=wither,limit=1,sort=nearest] run data merge entity @e[type=wither,limit=1,sort=nearest] {Motion:[0.0,-10.0,0.0]}
execute if data storage wither:options {toggleanimation:2} as @e[type=wither,limit=1,sort=nearest] run schedule function wither:wither/midpoint/midpointbedrock 10t

# GO UP GO DOWN 
execute if data storage wither:options {toggleanimation:0} at @e[type=wither,limit=1,sort=nearest] run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["midpointpos"],attributes:[{id:"minecraft:scale",base:2}]}

# BREAK BOX + SFX
execute as @e[type=minecraft:wither,limit=1,sort=nearest] if data storage wither:options {toggleanimation:0} if data storage wither:options {toggledestruction:1} run fill ~-1 ~ ~-1 ~1 ~3 ~1 air replace
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run playsound minecraft:entity.wither.break_block block @a[distance=..30] ~ ~ ~ 0.5 .1
execute at @e[type=minecraft:wither,limit=1,sort=nearest] if data storage wither:options {toggleanimation:0} run playsound minecraft:entity.wither_skeleton.hurt hostile @a[distance=..30] ~ ~ ~ 0.5 0.1

# SUMMON BLAZES
execute if data storage wither:options {toggleanimation:0} run schedule function wither:wither/midpoint/spawns/blaze1 5t
execute if data storage wither:options {toggleanimation:0} run schedule function wither:wither/midpoint/spawns/blaze4 8t
execute if data storage wither:options {toggleanimation:0} run schedule function wither:wither/midpoint/spawns/blaze8 11t
execute if data storage wither:options {toggleanimation:0} run schedule function wither:wither/midpoint/spawns/blaze2 14t
execute if data storage wither:options {toggleanimation:0} run schedule function wither:wither/midpoint/spawns/blaze5 17t
execute if data storage wither:options {toggleanimation:0} run schedule function wither:wither/midpoint/spawns/blaze6 20t
execute if data storage wither:options {toggleanimation:0} run schedule function wither:wither/midpoint/spawns/blaze9 23t
execute if data storage wither:options {toggleanimation:0} run schedule function wither:wither/midpoint/spawns/blaze3 26t
execute if data storage wither:options {toggleanimation:0} run schedule function wither:wither/midpoint/spawns/blaze7 29t
execute if data storage wither:options {toggleanimation:0} run schedule function wither:wither/midpoint/spawns/blaze10 31t

# SPECIAL FX
execute if data storage wither:options {toggleanimation:0} at @e[type=minecraft:wither,limit=1,sort=nearest] at @s run playsound minecraft:entity.wither.spawn hostile @a[distance=..30] ~ ~ ~ 2 .8
schedule clear wither:wither/musicphase1
execute as @a run stopsound @a record minecraft:wither.phase1
function wither:wither/musicphase2
effect give @e[type=wither_skeleton,distance=..20] resistance 3 10
execute if data storage wither:options {toggleanimation:0} run data merge entity @e[type=minecraft:wither,limit=1,sort=nearest] {Invulnerable:1b,NoAI:1b,NoGravity:1b,active_effects:[{id:"minecraft:resistance",amplifier:255,duration:5}]}



