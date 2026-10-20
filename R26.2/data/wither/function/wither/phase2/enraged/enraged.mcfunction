
scoreboard players set enraged wenraged 1
execute as @e[type=wither,limit=1] run attribute @s minecraft:gravity base set 100
execute as @e[type=wither,limit=1] at @s run playsound entity.wither.death hostile @a[distance=..50] ~ ~ ~ 1 .3
execute as @e[type=wither,limit=1] at @s run playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..50] ~ ~ ~ 1 2
execute as @e[type=wither,limit=1] at @s run data merge entity @s {attributes:[{id:"minecraft:armor",base:10},{id:"minecraft:armor_toughness",base:10}]}
team modify Wither color dark_red

# No healing from here on unless it goes 5s without being hit (enforced by no_heal in tick)
execute as @e[type=wither,limit=1] store result score @s wither.healCap run data get entity @s Health 100
execute as @e[type=wither,limit=1] run scoreboard players set @s wither.noHit 0

function wither:wither/phase2/enraged/skulls/skulls
