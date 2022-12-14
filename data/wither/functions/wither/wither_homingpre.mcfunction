execute if entity @e[type=wither,scores={Health=..450}] unless entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=hStand] if score wHoming whoming matches 1 run function wither:wither/wither_homing

schedule function wither:wither/wither_homingpre 20s