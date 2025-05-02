execute at @e[type=minecraft:wither,limit=1,sort=nearest] run particle minecraft:dust_plume ~ ~ ~ 7 0.2 7 0.0000001 2000 force @e[distance=..20,type=player]
execute at @e[type=minecraft:wither,limit=1,sort=nearest] run playsound minecraft:block.stone.break block @e[distance=..20,type=player] ~ ~ ~ 1 0.5

execute at @e[type=minecraft:wither,limit=1,sort=nearest] as @e[type=minecraft:player,distance=3.6..7] at @s run summon wind_charge ~ ~ ~ {acceleration_power:1.5d,Motion:[0.0,-10.0,0.0]} 

schedule function wither:wither/midpoint/particles/down5 1t