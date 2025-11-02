execute as @e[type=minecraft:wither_skull,tag=skulllaunch] run kill @s

execute unless score enraged wenraged matches 1 if entity @e[type=wither] run schedule function wither:wither/skull/launch 8s