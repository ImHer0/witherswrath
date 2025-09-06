# Triggerred by midpointtick when wither is on the floor

data merge entity @e[type=minecraft:wither,limit=1,sort=nearest] {Invulnerable:0b,NoAI:0b,Invulnerable:0b}
kill @e[type=minecraft:armor_stand,tag=midpointpos]

schedule function wither:wither/midpoint/particles/down1 1t
schedule function wither:wither/midpoint/midpoint2.5 5t

scoreboard players set midpoint stages 0

schedule clear wither:wither/midpoint/midpointtick