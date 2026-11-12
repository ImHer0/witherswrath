# Ran as a dangerous (blue) skull about to hit a block
data merge entity @e[type=minecraft:wither,limit=1] {active_effects:[{id:"minecraft:resistance",amplifier:3,duration:1,show_particles:0b}]}
execute at @s run summon creeper ~ ~-0.1 ~ {Team:"Wither",ExplosionRadius:3b,Fuse:0,Tags:["bigboom"],CustomName:'wither nuke',active_effects:[{id:"minecraft:wither",amplifier:3,duration:4}],attributes:[{id:"minecraft:scale",base:0.0625}]}
execute at @s run particle minecraft:explosion ~ ~ ~ 1.5 1.5 1.5 0 12 normal
execute at @s run particle minecraft:campfire_signal_smoke ~ ~ ~ 1 1.5 1 0 30 normal
kill @s
