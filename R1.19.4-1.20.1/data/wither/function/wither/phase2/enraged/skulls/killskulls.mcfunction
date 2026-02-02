execute as @e[type=minecraft:wither_skull,tag=deathtag] at @s run summon tnt ~ ~ ~ {fuse:0}
kill @e[type=minecraft:wither_skull,tag=deathtag]

execute if score witherCount witherCount matches 1.. if score enraged wenraged matches 1 run schedule function wither:wither/phase2/enraged/skulls/skulls 5s


