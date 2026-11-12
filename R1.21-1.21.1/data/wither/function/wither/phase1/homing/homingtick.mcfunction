# Moves the homing skull one step (all the per-skull work happens in homing_step)
execute as @e[type=minecraft:item_display,tag=hStand,limit=1] at @s run function wither:wither/phase1/homing/homing_step

execute as @e[type=minecraft:creeper,tag=hboom] at @s run particle minecraft:lava ~ ~-.5 ~ 1 1 1 0.01 30 normal
execute as @e[type=minecraft:creeper,tag=hboom] at @s run playsound minecraft:entity.generic.explode hostile @a[distance=..5] ~ ~ ~ 2 1.7 1
execute if entity @e[type=minecraft:item_display,tag=hStand,limit=1] run schedule function wither:wither/phase1/homing/homingtick 1t
