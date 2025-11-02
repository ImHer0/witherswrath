execute if data storage wither:options {toggleanimation:Default} as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run particle dust_color_transition{from_color:[0.600,0.600,0.600],scale:3,to_color:[1.000,1.000,1.000]} ~ ~1 ~ 0.9 1.2 0.9 0.001 100 normal

execute if data storage wither:options {toggleanimation:Default} as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 1 0.5

execute if data storage wither:options {toggleanimation:Bedrock} as @e[type=minecraft:wither,limit=1,sort=nearest] run playsound minecraft:entity.wither.spawn hostile @e[type=player,distance=..50] ~ ~ ~ 1 1

execute if entity @e[type=minecraft:wither] run schedule function wither:wither/fight_start/part 1s