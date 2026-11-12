# Ran as/at the dropped nether star
tp @s ~ ~ ~ ~10 ~
particle end_rod ^0 ^0.3 ^0.75 0 0 0 0 2 normal
particle electric_spark ~ ~0.8 ~ 0.01 0 0.01 1 2 normal
particle end_rod ^0 ^1.4 ^0.75 0 0 0 0 2 normal
execute if block ^ ^-1 ^ #air run tp @s ~ ~-.005 ~
tp @e[type=minecraft:item_display,tag=nether_star,limit=1] @s
