# SKULL BUFF
execute as @e[type=minecraft:wither_skull] at @s anchored eyes positioned ^ ^ ^ unless block ^ ^ ^1 air unless block ^ ^ ^1 water run data merge entity @s {Tags:["buff"]}
execute at @e[type=minecraft:wither_skull,tag=buff,limit=1] run summon creeper ~ ~-1 ~ {ExplosionRadius:2b,Fuse:0,Tags:["boom"],CustomName:'"wither skull"',active_effects:[{id:"minecraft:wither",amplifier:1,duration:4}],}
execute as @e[type=minecraft:wither_skull,tag=buff,limit=1] at @s anchored eyes positioned ^ ^ ^ unless block ^ ^ ^1 air unless block ^ ^ ^1 water run kill @s
execute as @e[type=minecraft:wither_skull,tag=buff,limit=1,tag=buff] run kill @s 
execute as @e[type=creeper,tag=boom] at @s run particle minecraft:smoke ~ ~ ~ 2 2 2 0.01 1000 force

