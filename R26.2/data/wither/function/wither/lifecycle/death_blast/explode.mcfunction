# The death blast itself

# Protect the loot: items can't be destroyed, and remember where the Nether Star was (the blast pushes items)
execute at @e[type=marker,tag=death_blast,limit=1] as @e[type=item,distance=..130] run data merge entity @s {Invulnerable:1b}
execute at @e[type=item,sort=nearest,tag=nether_star,limit=1] run summon marker ~ ~ ~ {Tags:["death_blast_star"]}

# Respect the destruction toggle (cleanup already turned mob_griefing back on)
execute if data storage wither:options {toggledestruction:Disabled} run gamerule mob_griefing false

# BOOM (powered creeper = radius x2, so 30 -> 60)
execute at @e[type=marker,tag=death_blast,limit=1] run summon creeper ~ ~ ~ {Fuse:0,ignited:1b,ExplosionRadius:30b,powered:1b,Silent:1b,Invulnerable:1b,CustomName:"Wither's Last Breath",attributes:[{id:"minecraft:scale",base:0.0625}]}

# SFX
execute at @e[type=marker,tag=death_blast,limit=1] run particle minecraft:explosion_emitter ~ ~ ~ 5 5 5 0 25 force
execute at @e[type=marker,tag=death_blast,limit=1] run particle minecraft:campfire_signal_smoke ~ ~ ~ 4 4 4 0.1 400 force
execute at @e[type=marker,tag=death_blast,limit=1] run particle minecraft:soul ~ ~ ~ 3 3 3 0.3 300 force
execute at @e[type=marker,tag=death_blast,limit=1] run playsound minecraft:entity.generic.explode hostile @a[distance=..150] ~ ~ ~ 8 0.5
execute at @e[type=marker,tag=death_blast,limit=1] run playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..150] ~ ~ ~ 8 0.5
execute at @e[type=marker,tag=death_blast,limit=1] run playsound minecraft:entity.lightning_bolt.thunder weather @a[distance=..150] ~ ~ ~ 8 0.6

schedule function wither:wither/lifecycle/death_blast/end 2t
