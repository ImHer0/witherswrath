execute at @e[type=minecraft:wither,limit=1,sort=nearest] run particle minecraft:dust_plume ~ ~ ~ .5 0.2 .5 0.0000001 200 force @e[distance=..20,type=player]
execute at @e[type=minecraft:wither,limit=1,sort=nearest] run particle minecraft:soul_fire_flame ~ ~ ~ .5 0.2 .5 0.0000001 200 force @e[distance=..50,type=player]
execute at @e[type=minecraft:wither,limit=1,sort=nearest] run particle minecraft:large_smoke ~ ~ ~ .5 0.2 .5 0.0000001 300 force @e[distance=..50,type=player]
execute at @e[type=minecraft:wither,limit=1,sort=nearest] run playsound minecraft:block.anvil.land block @e[distance=..50,type=player] ~ ~ ~ 1 0.2

execute at @e[type=minecraft:wither,limit=1,sort=nearest] as @e[type=minecraft:player,distance=..0.8] at @s run effect give @s levitation 1 150 true

schedule function wither:wither/midpoint/particles/down2 1t