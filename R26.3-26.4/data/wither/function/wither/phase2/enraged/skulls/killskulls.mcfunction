# Detonates the ring skulls 8 per tick instead of 24 explosions in one tick
execute as @e[type=minecraft:wither_skull,tag=deathtag,limit=8] at @s run function wither:wither/phase2/enraged/skulls/explode
execute if entity @e[type=minecraft:wither_skull,tag=deathtag,limit=1] run return run schedule function wither:wither/phase2/enraged/skulls/killskulls 1t

execute if score witherCount witherCount matches 1.. if score enraged wenraged matches 1 run schedule function wither:wither/phase2/enraged/skulls/skulls 5s
