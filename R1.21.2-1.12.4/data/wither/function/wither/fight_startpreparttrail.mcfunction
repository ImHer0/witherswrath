data modify storage wither:wither_position input set value {"x":0,"y":0,"z":0}

execute as @e[type=minecraft:wither,limit=1,sort=nearest] store result storage wither:wither_position input.x int 1 run data get entity @s Pos[0]
execute as @e[type=minecraft:wither,limit=1,sort=nearest] store result storage wither:wither_position input.y int 1.04 run data get entity @s Pos[1]
execute as @e[type=minecraft:wither,limit=1,sort=nearest] store result storage wither:wither_position input.z int 1 run data get entity @s Pos[2]

function wither:wither/fight_startparttrail with storage wither:wither_position input
