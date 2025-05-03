execute at @e[type=minecraft:wither,limit=1,sort=nearest] run particle minecraft:cloud ~ ~ ~ 1 0.2 1 0.0000001 500 force @e[distance=..20,type=player]
execute at @e[type=minecraft:wither,limit=1,sort=nearest] run playsound minecraft:block.stone.break block @e[distance=..20,type=player] ~ ~ ~ 1 0.5


schedule function wither:wither/midpoint/particles/down3 1t