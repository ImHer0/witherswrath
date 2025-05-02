execute at @e[type=minecraft:wither,limit=1,sort=nearest] run particle minecraft:dust_plume ~ ~ ~ .5 0.2 .5 0.0000001 500 force @e[distance=..20,type=player]
execute at @e[type=minecraft:wither,limit=1,sort=nearest] run playsound minecraft:block.anvil.land block @e[distance=..20,type=player] ~ ~ ~ 0.2 0.2

execute at @e[type=minecraft:wither,limit=1,sort=nearest] as @e[type=minecraft:player,distance=..0.8] at @s run summon wind_charge ~ ~ ~ {acceleration_power:2d,Motion:[0.0,-10.0,0.0]}
execute at @e[type=minecraft:wither,limit=1,sort=nearest] as @e[type=minecraft:player,distance=..0.8] at @s run summon wind_charge ~ ~ ~ {acceleration_power:2d,Motion:[0.0,-10.0,0.0]}
execute at @e[type=minecraft:wither,limit=1,sort=nearest] as @e[type=minecraft:player,distance=..0.8] at @s run summon wind_charge ~ ~ ~ {acceleration_power:2d,Motion:[0.0,-10.0,0.0]}
execute at @e[type=minecraft:wither,limit=1,sort=nearest] as @e[type=minecraft:player,distance=..0.8] at @s run summon wind_charge ~ ~ ~ {acceleration_power:2d,Motion:[0.0,-10.0,0.0]}
execute at @e[type=minecraft:wither,limit=1,sort=nearest] as @e[type=minecraft:player,distance=..0.8] at @s run summon wind_charge ~ ~ ~ {acceleration_power:2d,Motion:[0.0,-10.0,0.0]}

schedule function wither:wither/midpoint/particles/down2 1t