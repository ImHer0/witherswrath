# spawn Purge

execute as @e[type=minecraft:wither] at @s run summon minecraft:creeper ~ ~ ~ {CustomName:'"The Wither\'s Wrath"',ExplosionRadius:13,Invulnerable:1,Fuse:1,ignited:1,Silent:1}
execute as @e[type=minecraft:wither] at @s run particle minecraft:explosion_emitter ~ ~ ~ 0 1 0 0.6 6 force
execute as @e[type=minecraft:wither] at @s run particle minecraft:campfire_signal_smoke ~ ~ ~ 0 1 0 0.6 300 force
execute as @e[type=minecraft:wither] at @s run particle minecraft:lava ~ ~ ~ 3 3 3 0.1 200 force
scoreboard players set wspawn spawn 0