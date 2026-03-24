execute if entity @e[type=wither,scores={Health=..450}] unless entity @e[limit=1,sort=nearest,tag=hStand,type=minecraft:armor_stand] if data storage wither:options {togglehoming:Enabled} run function wither:wither/phase1/homing/homing
execute if entity @e[type=wither,scores={Health=..450}] if entity @e[limit=1,sort=nearest,tag=hStand,type=minecraft:armor_stand] if data storage wither:options {togglehoming:Enabled} run schedule function wither:wither/phase1/homing/homingtick 1t

execute unless score enraged wenraged matches 1 run schedule function wither:wither/phase1/homing/homingpre 20s
execute if score enraged wenraged matches 1 run schedule function wither:wither/phase1/homing/homingpre 10s
