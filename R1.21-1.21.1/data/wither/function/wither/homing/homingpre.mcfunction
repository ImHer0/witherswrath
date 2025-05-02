execute if entity @e[type=wither,scores={Health=..450}] unless entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=hStand] if data storage wither:options {toggletrophy:1} run function wither:wither/homing/homing

schedule function wither:wither/homing/homingpre 20s