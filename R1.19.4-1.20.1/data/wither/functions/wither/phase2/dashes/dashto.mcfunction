execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run tp @s ^ ^ ^1.8
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run particle poof ^ ^.75 ^-2.5 0.8 1 0.8 0.2 40 normal
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run playsound minecraft:entity.breeze.wind_burst hostile @a ~ ~ ~ 1 0.1

schedule function wither:wither/phase2/dashes/dashto 1t