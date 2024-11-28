# spawn Purge

execute as @e[type=minecraft:wither] at @s run summon creeper ~ ~ ~ {Silent:1b,Invulnerable:1b,CustomNameVisible:0b,ExplosionRadius:13b,Fuse:1,ignited:1b,CustomName:'{"text":"The Wither\'s Wrath"}'}
execute as @e[type=minecraft:wither] at @s run particle minecraft:explosion_emitter ~ ~ ~ 0 1 0 0.6 6 force
execute as @e[type=minecraft:wither] at @s run particle minecraft:campfire_signal_smoke ~ ~ ~ 0 1 0 0.6 300 force
execute as @e[type=minecraft:wither] at @s run particle minecraft:lava ~ ~ ~ 3 3 3 0.1 200 force
scoreboard players set wspawn spawn 0
execute as @e[type=player] run attribute @s minecraft:gravity modifier remove 1
schedule clear wither:wither/fight_startpart