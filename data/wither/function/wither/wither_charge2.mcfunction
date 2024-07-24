execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand] run scoreboard players set @e[scores={wcharge=1..}] wcharge 0
kill @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand]
data merge entity @e[type=minecraft:wither,limit=1,sort=nearest] {NoAI: 0b}
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if data storage wither:options {toggledestruction:0} run tp @s @e[type=armor_stand,limit=1,tag=chargew]
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run kill @e[type=armor_stand,tag=chargew]

execute if score wCharge wcharge1 matches 2 run schedule function wither:wither/wither_chargepre 20s
