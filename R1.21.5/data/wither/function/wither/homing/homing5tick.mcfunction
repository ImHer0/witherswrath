execute at @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=hStand] run particle minecraft:lava ^ ^1.5 ^-0.5 0.3 0.3 0.3 1 5 normal
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=hStand] at @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=hStand] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 2 0.5


execute if entity @e[type=minecraft:armor_stand,tag=hStand] run schedule function wither:wither/homing/homing5tick 5t