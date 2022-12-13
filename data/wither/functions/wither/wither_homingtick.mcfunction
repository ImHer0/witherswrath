# TP/EFFECT
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=hStand] at @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=hStand] run particle minecraft:smoke ~ ~ ~ 0.2 0.2 0.2 0 4 normal
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=hStand] at @s run tp @s ^ ^.1 ^.35
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=hStand] at @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=hStand] run tp @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=hStand] ^ ^ ^ facing entity @p feet

# Homing Explosion
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=hStand] at @s if entity @e[type=player,distance=..0.45] run summon creeper ~ ~ ~ {Tags:["hboom"],CustomName:'"Homing Skull"',Fuse:0,ExplosionRadius:2,Silent:1}
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=hStand] at @s if entity @e[type=player,distance=..0.45] run kill @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=hStand]
execute as @e[type=minecraft:creeper,tag=hboom] at @s run particle minecraft:lava ~ ~-.5 ~ 1 1 1 0.01 100 force
execute as @e[type=minecraft:creeper,tag=hboom] at @s run playsound minecraft:entity.generic.explode hostile @s ~ ~ ~ 1 1.7 1



execute if entity @e[type=minecraft:armor_stand,tag=hStand] run schedule function wither:wither/wither_homingtick 1t