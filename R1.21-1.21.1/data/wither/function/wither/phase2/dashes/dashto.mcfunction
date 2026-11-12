# Only into open space: never into or through bedrock, or out of the world (the Wither is 3.5 blocks tall)
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s positioned ^ ^ ^1.8 unless block ~ ~-1 ~ #wither:dash_blockers unless block ~ ~ ~ #wither:dash_blockers unless block ~ ~1 ~ #wither:dash_blockers unless block ~ ~2 ~ #wither:dash_blockers unless block ~ ~3 ~ #wither:dash_blockers run tp @s ~ ~ ~
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run particle poof ^ ^.75 ^-2.5 0.8 1 0.8 0.2 40 normal
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run playsound minecraft:entity.breeze.wind_burst hostile @a ~ ~ ~ 1 0.1
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run summon wind_charge ~ ~ ~ {Team:"Wither",Tags:["wither_dash"],acceleration_power:2d,Motion:[0.0,-10.0,0.0]}

schedule function wither:wither/phase2/dashes/dashto 1t

