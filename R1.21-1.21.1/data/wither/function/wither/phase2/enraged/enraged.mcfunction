
scoreboard players set enraged wenraged 1
execute as @e[type=wither,limit=1] run attribute @s minecraft:generic.gravity base set 100
execute as @e[type=wither,limit=1] at @s run playsound entity.wither.death hostile @a[distance=..50] ~ ~ ~ 1 .3
execute as @e[type=wither,limit=1] at @s run playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..50] ~ ~ ~ 1 2
execute as @e[type=wither,limit=1] at @s run data merge entity @s {attributes:[{id:"minecraft:generic.armor",base:10},{id:"minecraft:generic.armor_toughness",base:10}]}
team modify Wither color dark_red

function wither:wither/phase2/enraged/skulls/skulls
