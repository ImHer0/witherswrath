scoreboard players add count burstcount 1
execute as @e[type=minecraft:wither,limit=1] at @s run rotate @s facing entity @p eyes
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run summon minecraft:wither_skull ^ ^3 ^2 {Tags:["burstlaunch"],Motion:[0.05,0.09,0.05],Fire:200,CustomName:"burst wither skulls"}

# Aim at the nearest player
function wither:wither/skull/cache_players
execute as @e[type=minecraft:wither_skull,tag=burstlaunch] at @s run function wither:wither/skull/aim_launch
