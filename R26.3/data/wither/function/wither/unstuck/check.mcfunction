execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run function wither:wither/unstuck/push

execute if score witherCount witherCount matches 1.. run schedule function wither:wither/unstuck/check 2s
