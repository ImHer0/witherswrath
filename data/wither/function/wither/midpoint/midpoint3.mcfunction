# Ran by midpoint after 5 seconds
data merge entity @e[type=minecraft:wither,limit=1,sort=nearest] {Invulnerable: 0b}
scoreboard players set @e[type=minecraft:wither,limit=1,sort=nearest] smoke 2
schedule clear wither:wither/midpoint/midpointtick