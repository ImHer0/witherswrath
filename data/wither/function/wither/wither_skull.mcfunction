# SKULL BUFF
execute as @e[type=minecraft:wither_skull] at @s anchored eyes positioned ^ ^ ^ unless block ^ ^ ^1 air unless block ^ ^ ^1 water run summon creeper ~ ~-1 ~ {Tags: ["boom"], CustomName: '"wither skull"', Fuse: 0, ExplosionRadius: 2, ActiveEffects: [{Id: 20, Amplifier: 1, Duration: 2}], attributes:[{id:"minecraft:generic.scale",base:0.09}]}
execute as @e[type=minecraft:wither_skull] at @s anchored eyes positioned ^ ^ ^ unless block ^ ^ ^1 air unless block ^ ^ ^1 water run kill @e[type=minecraft:wither_skull,limit=1,sort=nearest]
execute as @e[type=creeper,tag=boom] at @s run particle minecraft:smoke ~ ~ ~ 2 2 2 0.01 2000 force
