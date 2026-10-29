# The first 4 blocks tear out of the ground together, the skull halo appears
function wither:wither/fight_start/showcase/add_block
function wither:wither/fight_start/showcase/add_block
function wither:wither/fight_start/showcase/add_block
function wither:wither/fight_start/showcase/add_block
execute as @e[type=minecraft:item_display,tag=oH] run data merge entity @s {start_interpolation:0,interpolation_duration:14,transformation:{scale:[0.9f,0.9f,0.9f]}}
execute at @e[type=minecraft:marker,tag=wIntroCenter,limit=1] run function wither:wither/fight_start/showcase/ring {r:"3.5"}
execute at @e[type=minecraft:marker,tag=wIntroCenter,limit=1] run function wither:wither/fight_start/showcase/ring {r:"5.5"}
execute at @e[type=minecraft:marker,tag=wIntroCenter,limit=1] run function wither:wither/fight_start/showcase/ring {r:"7.5"}
execute at @e[type=minecraft:marker,tag=wIntroCenter,limit=1] run playsound minecraft:block.basalt.break hostile @a[distance=..64] ~ ~ ~ 2 0.5
execute at @e[type=minecraft:marker,tag=wIntroCenter,limit=1] run playsound minecraft:entity.generic.explode hostile @a[distance=..64] ~ ~ ~ 0.6 0.5
