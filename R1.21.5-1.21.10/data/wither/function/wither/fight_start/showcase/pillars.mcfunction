# Four soul flame pillars 7 blocks out, slowly circling (the ground marker is the pivot)
execute as @e[type=minecraft:marker,tag=wIntroCenter,limit=1] at @s run rotate @s ~12 0
execute as @e[type=minecraft:marker,tag=wIntroCenter,limit=1] at @s rotated as @s positioned ^ ^ ^7 run function wither:wither/fight_start/showcase/pillar_fx
execute as @e[type=minecraft:marker,tag=wIntroCenter,limit=1] at @s rotated as @s rotated ~90 0 positioned ^ ^ ^7 run function wither:wither/fight_start/showcase/pillar_fx
execute as @e[type=minecraft:marker,tag=wIntroCenter,limit=1] at @s rotated as @s rotated ~180 0 positioned ^ ^ ^7 run function wither:wither/fight_start/showcase/pillar_fx
execute as @e[type=minecraft:marker,tag=wIntroCenter,limit=1] at @s rotated as @s rotated ~270 0 positioned ^ ^ ^7 run function wither:wither/fight_start/showcase/pillar_fx
