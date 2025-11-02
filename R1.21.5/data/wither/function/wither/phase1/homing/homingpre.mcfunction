execute if entity @e[type=wither,scores={Health=..450}] unless entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=hStand] if data storage wither:options {toggletrophy:Enabled} run function wither:wither/phase1/homing/homing

execute unless score enraged wenraged matches 1 run schedule function wither:wither/phase1/homing/homingpre 20s
execute if score enraged wenraged matches 1 run schedule function wither:wither/phase1/homing/homingpre 10s
