# Ran by midpoint after 2 seconds

execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=midpointpos] at @s run data merge entity @s {Motion:[0.0,-6.9,0.0]}

scoreboard players set midpoint stages 1

