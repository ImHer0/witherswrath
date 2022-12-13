# Ran by advancements for hitting the wither with a sword before half hp
advancement revoke @s only wither:wither/prehit_wither

execute if entity @e[type=wither,scores={Health=310..600}] as @e[type=minecraft:wither] at @s run effect give @e[distance=..1] resistance 1 10 true
execute if entity @e[type=wither,scores={Health=310..600}] as @e[type=minecraft:wither] at @s run summon minecraft:creeper ~ ~-1 ~ {ExplosionRadius:4,Invulnerable:1,Fuse:1,ignited:1,Silent:1}
execute if entity @e[type=wither,scores={Health=310..600}] as @e[type=minecraft:wither] at @s run tp ~ ~7 ~

