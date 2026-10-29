execute as @e[type=minecraft:wither,limit=1] at @s run rotate @s facing entity @p eyes
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run summon minecraft:wither_skull ^ ^3 ^ {Tags:["skulllaunch"],Motion:[0.05,0.09,0.05],dangerous:1b,Fire:200,CustomName:'"Wither Missile"'}

# Aim at the nearest player
function wither:wither/skull/cache_players
execute as @e[type=minecraft:wither_skull,tag=skulllaunch] at @s run function wither:wither/skull/aim_launch

schedule function wither:wither/skull/launch_end 4s
