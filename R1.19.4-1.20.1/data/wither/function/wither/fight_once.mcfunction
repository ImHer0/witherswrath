# Removes Tag

execute as @e[type=minecraft:wither,tag=justSummoned] at @s run tag @s add theWither
execute as @e[type=minecraft:wither,tag=justSummoned] at @s run data merge entity @s {Invul:220}
execute as @e[type=minecraft:wither,tag=justSummoned] at @s run tag @s remove justSummoned



# Keeps count of how many withers are alive
execute as @s run scoreboard players add witherCount witherCount 1

execute if score witherCount witherCount matches 1 run function wither:wither/fight_start

