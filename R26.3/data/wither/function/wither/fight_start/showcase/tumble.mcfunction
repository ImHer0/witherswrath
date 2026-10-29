# Macro: a (radians). Each ring tumbles around its own axis; blocks out of the ground start crumbling
tag @e[type=minecraft:item_display,tag=wOrbit,tag=!wRise] add wCrumb
$execute as @e[type=minecraft:item_display,tag=axA] run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{left_rotation:{axis:[0.707f,0.707f,0f],angle:$(a)f}}}
$execute as @e[type=minecraft:item_display,tag=axB] run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{left_rotation:{axis:[0f,0.707f,0.707f],angle:$(a)f}}}
$execute as @e[type=minecraft:item_display,tag=axC] run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{left_rotation:{axis:[0.577f,0.577f,0.577f],angle:$(a)f}}}
