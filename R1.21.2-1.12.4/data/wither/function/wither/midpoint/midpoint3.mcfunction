# Ran by midpoint after 5 seconds

data merge entity @e[type=minecraft:wither,limit=1,sort=nearest] {Invulnerable:0b,NoAI:0b,Invulnerable:0b}
kill @e[type=minecraft:armor_stand,tag=midpointpos]



schedule clear wither:wither/midpoint/midpointparttick
