execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run tp @s ^ ^ ^1.8
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run particle poof ^ ^.75 ^-2.5 0.8 1 0.8 0.2 40 normal
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run playsound minecraft:entity.breeze.wind_burst hostile @a ~ ~ ~ 1 0.1
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run summon wind_charge ~ ~ ~ {Tags:["wither_dash"],acceleration_power:2d,Motion:[0.0,-10.0,0.0]}

schedule function wither:wither/dashes/dashto 1t