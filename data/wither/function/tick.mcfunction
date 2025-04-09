
function wither:wither/skull

# CHECKS HEALTH EVERY TICK
execute at @p as @e[type=minecraft:wither,limit=1,sort=nearest] store result score @s checkHealth run data get entity @s Health
execute at @p as @e[type=minecraft:wither,limit=1,sort=furthest] store result score @s checkHealth run data get entity @s Health
execute as @e[type=wither,limit=1,sort=nearest] store result score @s Health run data get entity @s Health


# WITHER CHECK
execute unless entity @e[type=minecraft:wither] run schedule clear wither:wither/charge/chargepre
execute unless entity @e[type=minecraft:wither] run schedule clear wither:wither/homing/homingpre
execute unless entity @e[type=minecraft:wither] run schedule clear wither:wither/spawn

# /summon minecraft:cow ~ ~ ~ {DeathLootTable:"wither:entities/wither"}

execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{WitherFix:1b}}}}] at @s run tellraw @e[type=player,distance=..50] ["",{"text":"The Wither has been killed by something...","italic":true,color:"yellow"}]
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{WitherFix:1b}}}}] at @s run function wither:wither/fix
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{WitherFix:1b}}}}]

# WITHER HEALTH NEVER ABOVE HALF AFTER HITTING IT

execute as @e[type=wither,tag=!Wither] if score @s Health matches 298.. run data modify entity @s Health set value 298.0f