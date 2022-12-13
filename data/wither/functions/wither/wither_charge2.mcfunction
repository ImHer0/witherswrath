execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand] run scoreboard players set @e[scores={wcharge=1..}] wcharge 0
kill @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand]
data merge entity @e[type=minecraft:wither,limit=1,sort=nearest] {NoAI:0b}

execute if score wCharge wcharge1 matches 2 run schedule function wither:wither/wither_chargepre 20s
