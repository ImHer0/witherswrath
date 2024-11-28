
# GETS HEALTH EVERY TICK
execute at @p as @e[type=minecraft:wither,limit=1,sort=nearest] store result score @s checkHealth run data get entity @s Health
execute at @p as @e[type=minecraft:wither,limit=1,sort=furthest] store result score @s checkHealth run data get entity @s Health
execute as @e[type=wither,limit=1,sort=nearest] store result score @s Health run data get entity @s Health


# WITHER CHECK
execute unless entity @e[type=minecraft:wither] run schedule clear wither:wither/charge/chargepre
execute unless entity @e[type=minecraft:wither] run schedule clear wither:wither/homing/homingpre
execute unless entity @e[type=minecraft:wither] run schedule clear wither:wither/spawn

