execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run function wither:wither/unstuck/push

execute if entity @e[type=wither] run schedule function wither:wither/unstuck/check 2s
