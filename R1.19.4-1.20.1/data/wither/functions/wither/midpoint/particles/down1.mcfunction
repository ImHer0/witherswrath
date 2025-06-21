execute at @e[type=minecraft:wither,limit=1,sort=nearest] run particle minecraft:cloud ~ ~ ~ .5 0.2 .5 0.0000001 500 force @e[distance=..20,type=player]
execute at @e[type=minecraft:wither,limit=1,sort=nearest] run playsound minecraft:block.anvil.land block @e[distance=..20,type=player] ~ ~ ~ 0.2 0.2


schedule function wither:wither/midpoint/particles/down2 1t