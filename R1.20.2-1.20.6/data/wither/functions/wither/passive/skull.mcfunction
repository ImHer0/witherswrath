# SKULL BUFF
execute as @e[type=minecraft:wither_skull,nbt={dangerous:0b}] at @s anchored eyes positioned ^ ^ ^ unless block ^ ^ ^1 air unless block ^ ^ ^1 water run data merge entity @s {Tags:["buff"]}
execute as @e[type=minecraft:wither_skull,tag=buff,limit=1,tag=buff] run data merge entity @e[type=minecraft:wither,limit=1] {active_effects:[{id:"minecraft:resistance",amplifier:2,duration:1,show_particles:0b}]}
execute at @e[type=minecraft:wither_skull,nbt={dangerous:0b},tag=buff,limit=1] run summon creeper ~ ~-.1 ~ {Team:"Wither",ExplosionRadius:2b,Fuse:0,Tags:["boom"],CustomName:'{"text":"wither skull"}',active_effects:[{id:"minecraft:wither",amplifier:1,duration:4}],Attributes:[{Name:generic.scale,Base:0.0625}]}
execute as @e[type=minecraft:wither_skull,nbt={dangerous:0b},tag=buff,limit=1] at @s run particle minecraft:smoke ~ ~ ~ 2 2 2 0.01 1000 force
execute as @e[type=minecraft:wither_skull,nbt={dangerous:0b},tag=buff,limit=1] at @s anchored eyes positioned ^ ^ ^ unless block ^ ^ ^1 air unless block ^ ^ ^1 water run kill @s
execute as @e[type=minecraft:wither_skull,tag=buff,limit=1,tag=buff] run kill @s 

# DANGEROUS SKULL BUFF
execute as @e[type=minecraft:wither_skull,nbt={dangerous:1b}] at @s anchored eyes positioned ^ ^ ^ unless block ^ ^ ^-1.5 air unless block ^ ^ ^-1.5 water run data merge entity @s {Tags:["buff"]}
execute as @e[type=minecraft:wither_skull,nbt={dangerous:1b},limit=1,tag=buff] run data merge entity @e[type=minecraft:wither,limit=1] {active_effects:[{id:"minecraft:resistance",amplifier:3,duration:1,show_particles:0b}]}
execute at @e[type=minecraft:wither_skull,nbt={dangerous:1b},tag=buff,limit=1] run summon creeper ~ ~-0.1 ~ {Team:"Wither",ExplosionRadius:3b,Fuse:0,Tags:["bigboom"],CustomName:'{"text":"wither nuke"}',active_effects:[{id:"minecraft:wither",amplifier:3,duration:4}],Attributes:[{Name:generic.scale,Base:0.0625}]}
execute as @e[type=minecraft:wither_skull,nbt={dangerous:1b},tag=buff,limit=1] at @s run particle minecraft:explosion ~ ~ ~ 1.5 1.5 1.5 0 50
execute as @e[type=minecraft:wither_skull,nbt={dangerous:1b},tag=buff,limit=1] at @s run particle minecraft:campfire_signal_smoke ~ ~ ~ 1 1.5 1 0 200
execute as @e[type=minecraft:wither_skull,nbt={dangerous:1b},tag=buff,limit=1] at @s anchored eyes positioned ^ ^ ^ unless block ^ ^ ^1 air unless block ^ ^ ^1 water run kill @s
execute as @e[type=minecraft:wither_skull,nbt={dangerous:1b},limit=1,tag=buff] run kill @s 

execute if entity @e[type=minecraft:wither] run schedule function wither:wither/passive/skull 1t


