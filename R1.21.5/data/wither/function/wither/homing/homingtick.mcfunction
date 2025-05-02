# TP/EFFECT
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=hStand] at @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=hStand] run particle minecraft:smoke ^ ^1.5 ^-0.5 0.2 0.2 0.2 0 4 normal
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=hStand] at @s run tp @s ^ ^.1 ^.35
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=hStand] at @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=hStand] run tp @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=hStand] ^ ^ ^ facing entity @p feet
data modify storage temp Head set value [0f, 0f, 0f]
data modify storage temp Head[0] set from entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=hStand] Rotation[1]
data modify entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=hStand] Pose.Head set from storage temp Head
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=hStand] at @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=hStand] run playsound minecraft:entity.experience_orb.pickup hostile @e[type=minecraft:player,distance=..7] ~ ~ ~ 1 2 0

# Homing Explosion
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=hStand] at @s if entity @e[type=player,distance=..0.45] run summon creeper ~ ~ ~ {Tags: ["hboom"], CustomName: "Homing Skull", Fuse: 0, ExplosionRadius: 2, Silent: 1b, attributes:[{id:"minecraft:scale",base:0.0625}]}
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=hStand] at @s if entity @e[type=player,distance=..0.45] run kill @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=hStand]
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=hStand] at @s anchored eyes positioned ^ ^ ^ unless block ^ ^ ^1 air run summon creeper ~ ~ ~ {Tags: ["hboom"], CustomName: "Homing Skull", Fuse: 0, ExplosionRadius: 2, Silent: 1b, attributes:[{id:"minecraft:scale",base:0.0625}]}
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=hStand] at @s anchored eyes positioned ^ ^ ^ unless block ^ ^ ^1 air run kill @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=hStand]
execute as @e[type=minecraft:creeper,tag=hboom] at @s run particle minecraft:lava ~ ~-.5 ~ 1 1 1 0.01 100 force
execute as @e[type=minecraft:creeper,tag=hboom] at @s run playsound minecraft:entity.generic.explode hostile @a[distance=..5] ~ ~ ~ 2 1.7 1





execute if entity @e[type=minecraft:armor_stand,tag=hStand] run schedule function wither:wither/homing/homingtick 1t