
function wither:wither/skull
execute as @e[type=minecraft:wither_skull,tag=buff,limit=1,tag=buff] run kill @s 
execute as @e[type=minecraft:wither_skull,tag=buff,limit=1,tag=buff] run kill @s 

# CHECKS HEALTH EVERY TICK
execute at @p as @e[type=minecraft:wither,limit=1,sort=nearest] store result score @s checkHealth run data get entity @s Health
execute at @p as @e[type=minecraft:wither,limit=1,sort=furthest] store result score @s checkHealth run data get entity @s Health
execute as @e[type=wither,limit=1,sort=nearest] store result score @s Health run data get entity @s Health


# WITHER CHECK
execute unless entity @e[type=minecraft:wither] run schedule clear wither:wither/charge/chargepre
execute unless entity @e[type=minecraft:wither] run schedule clear wither:wither/homing/homingpre
execute unless entity @e[type=minecraft:wither] run schedule clear wither:wither/spawn

# WITHER HEALTH NEVER ABOVE HALF AFTER HITTING IT

execute as @e[type=wither,tag=!Wither] if score @s Health matches 298.. run data modify entity @s Health set value 298.0f
execute as @e[type=wither,tag=!Dash] if score @s Health matches 100.. run data modify entity @s Health set value 98.0f
