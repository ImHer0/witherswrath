
# Checks for alive wither every tick
execute as @e[type=minecraft:wither,tag=!theWither,limit=1] at @s run tag @s add justSummoned
execute as @e[type=minecraft:wither,tag=justSummoned,limit=1] at @s run function wither:wither/fight_once


# CHECKS HEALTH EVERY TICK
execute at @p as @e[type=minecraft:wither,limit=1,sort=nearest] store result score @s checkHealth run data get entity @s Health
execute at @p as @e[type=minecraft:wither,limit=1,sort=furthest] store result score @s checkHealth run data get entity @s Health
execute as @e[type=wither,limit=1,sort=nearest] store result score @s Health run data get entity @s Health


# WITHER CHECK
execute unless entity @e[type=minecraft:wither] run schedule clear wither:wither/phase2/charge/chargepre
execute unless entity @e[type=minecraft:wither] run schedule clear wither:wither/phase1/homing/homingpre
execute unless entity @e[type=minecraft:wither] run schedule clear wither:wither/passive/spawn


# WITHER HEALTH NEVER ABOVE HALF AFTER HITTING IT

execute as @e[type=wither,tag=!Wither] if score @s Health matches 298.. run data modify entity @s Health set value 298.0f
execute as @e[type=wither,tag=!Dash] if score @s Health matches 100.. run data modify entity @s Health set value 98.0f
