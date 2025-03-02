# "Glow" effect from bedrock we don't have full glow or even a way to change textures without mods or other means
execute as @e[type=minecraft:wither,limit=1,sort=nearest] run data merge entity @e[type=wither,limit=1] {Glowing:1b}

# Spin from bedrock in start
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run summon armor_stand ~ ~ ~ {Tags:["wither_spin"],Invisible:1b,Invulnerable:1b,Marker:1b,CustomName:'"wither spin"'}




function wither:wither/fight_start_bedrock1t