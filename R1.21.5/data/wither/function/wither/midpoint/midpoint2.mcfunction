# Ran by midpoint after 2 seconds

execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=midpointpos] at @s run data merge entity @s {Motion:[0.0,-10.0,0.0]}

schedule function wither:wither/midpoint/particles/down1 5t
schedule function wither:wither/midpoint/midpoint2.5 10t


