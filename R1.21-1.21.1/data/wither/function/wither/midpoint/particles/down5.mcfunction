execute at @e[type=minecraft:wither,limit=1,sort=nearest] run particle minecraft:dust_plume ~ ~ ~ 14 0.2 14 0.0000001 5000 force @e[distance=..50,type=player]
execute at @e[type=minecraft:wither,limit=1,sort=nearest] run playsound minecraft:block.stone.break block @e[distance=..50,type=player] ~ ~ ~ 1 0.5

execute at @e[type=minecraft:wither,limit=1,sort=nearest] as @e[type=minecraft:player,distance=7.1..14] at @s run effect give @s levitation 1 20 true

schedule function wither:wither/midpoint/particles/clearlev 5t