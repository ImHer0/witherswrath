execute at @p as @e[type=minecraft:wither,limit=1,sort=nearest] if score @s checkHealth < @e[type=minecraft:wither,limit=1,sort=furthest] checkHealth run function wither:wither/check1
execute at @p as @e[type=minecraft:wither,limit=1,sort=furthest] if score @s checkHealth < @e[type=minecraft:wither,limit=1,sort=nearest] checkHealth run function wither:wither/check1




function wither:wither/check1