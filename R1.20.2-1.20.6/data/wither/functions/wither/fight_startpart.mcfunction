execute if data storage wither:options {toggleanimation:Default} at @e[type=minecraft:wither,limit=1,sort=nearest] at @s run particle minecraft:cloud ~ ~1 ~ 0.9 1.2 0.9 0.001 100 normal

execute if data storage wither:options {toggleanimation:Default} at @e[type=minecraft:wither,limit=1,sort=nearest] at @s run playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 1 0.5

execute if data storage wither:options {toggleanimation:Bedrock} at @e[type=minecraft:wither,limit=1,sort=nearest] run playsound minecraft:entity.wither.spawn hostile @e[type=player,distance=..50] ~ ~ ~ 1 1

schedule function wither:wither/fight_startpart 1s