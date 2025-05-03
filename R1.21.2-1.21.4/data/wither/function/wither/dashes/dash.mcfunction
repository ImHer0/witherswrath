tag @s remove Dash

execute unless entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=chargew] unless entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand] run data merge entity @e[type=minecraft:wither,limit=1,sort=nearest] {NoAI: 1b}
execute unless entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=chargew] unless entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand] run execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ facing entity @e[type=player,limit=1,sort=nearest] feet

execute unless entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=chargew] unless entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand] run function wither:wither/dashes/dashto

schedule function wither:wither/dashes/endloop 5t

execute if entity @e[type=minecraft:wither,limit=1,sort=nearest] run schedule function wither:wither/dashes/dash 3s