execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run function wither:wither/unstuck1

execute if entity @e[type=wither] run schedule function wither:wither/unstuck 2s
