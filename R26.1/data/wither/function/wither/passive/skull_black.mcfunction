# Ran as a normal skull about to hit a block
data merge entity @e[type=minecraft:wither,limit=1] {active_effects:[{id:"minecraft:resistance",amplifier:2,duration:1,show_particles:0b}]}
execute at @s run summon creeper ~ ~-.1 ~ {Team:"Wither",ExplosionRadius:2b,Fuse:0,Tags:["boom"],CustomName:'wither skull',active_effects:[{id:"minecraft:wither",amplifier:1,duration:4}],attributes:[{id:"minecraft:scale",base:0.0625}]}
execute at @s run particle minecraft:smoke ~ ~ ~ 2 2 2 0.01 80 normal
kill @s
