$execute as @s at @s run data merge entity @s {Motion: [$(x)d, $(y)d, $(z)d]}

execute at @s run playsound minecraft:entity.wither.shoot player @e[type=player,distance=..50] ~ ~ ~ 0.25 1.2

execute as @s at @s run tag @s remove skulllaunch
