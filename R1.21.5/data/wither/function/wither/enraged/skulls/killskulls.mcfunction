execute as @e[type=minecraft:wither_skull,tag=deathtag] at @s run summon tnt ~ ~ ~ {fuse:0,explosion_power:1,block_state:{Name:"minecraft:soul_sand"}}
kill @e[type=minecraft:wither_skull,tag=deathtag]