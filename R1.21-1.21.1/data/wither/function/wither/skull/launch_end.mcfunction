execute as @s run tag @s remove skulllaunch

execute unless score enraged wenraged matches 1 if entity @e[type=wither] run schedule function wither:wither/skull/launch 4s
execute if score enraged wenraged matches 1 if entity @e[type=wither] run schedule function wither:wither/skull/launch 2s
