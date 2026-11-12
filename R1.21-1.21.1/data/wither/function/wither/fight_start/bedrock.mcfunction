
# Bedrock spawn sound (from the resource pack)
execute at @e[type=minecraft:wither,limit=1,sort=nearest] run playsound minecraft:wither.bedrock_spawn hostile @a[distance=..100] ~ ~ ~ 2 1

# Spin from bedrock in start
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run summon armor_stand ~ ~ ~ {Team:"Wither",Tags:["wither_spin"],Invisible:1b,Invulnerable:1b,Marker:1b,CustomName:'"wither spin"'}




function wither:wither/fight_start/bedrock_1t

