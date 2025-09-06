kill @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand]
data merge entity @e[type=minecraft:wither,limit=1,sort=nearest] {NoAI: 0b}
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if data storage wither:options {toggledestruction:Disabled} run tp @s @e[type=armor_stand,limit=1,tag=chargew]
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run kill @e[type=armor_stand,tag=chargew]
kill @e[type=armor_stand,tag=midpointpos]
data merge entity @e[type=minecraft:wither,limit=1,sort=nearest] {Glowing:0b}

execute if score enraged wenraged matches 1 run scoreboard players add reset wchargereset 1

execute unless score enraged wenraged matches 1 if score wCharge wcharge1 matches 2 run schedule function wither:wither/charge/chargepre 20s
execute if score enraged wenraged matches 1 if score wCharge wcharge1 matches 2 unless score reset wchargereset matches 3.. run schedule function wither:wither/charge/chargepre 4t
execute if score enraged wenraged matches 1 if score wCharge wcharge1 matches 2 if score reset wchargereset matches 3.. run function wither:wither/charge/chargereset