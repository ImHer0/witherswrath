execute at @e[type=minecraft:item_display,tag=hStand,limit=1] run particle minecraft:lava ^ ^ ^-0.5 0.3 0.3 0.3 1 5 normal
execute at @e[type=minecraft:item_display,tag=hStand,limit=1] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 2 0.5
execute if entity @e[type=minecraft:item_display,tag=hStand,limit=1] run schedule function wither:wither/phase1/homing/homing5tick 5t
