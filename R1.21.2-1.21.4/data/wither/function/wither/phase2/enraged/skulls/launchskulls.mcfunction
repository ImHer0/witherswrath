$execute as @s at @s run data merge entity @s {Motion: [$(x)d, $(y)d, $(z)d]}

execute as @e[type=minecraft:wither] at @s run playsound minecraft:entity.wither.shoot player @e[type=player,distance=..50] ~ ~ ~ 0.3 1.2

execute as @s at @s run tag @s remove skulllaunch