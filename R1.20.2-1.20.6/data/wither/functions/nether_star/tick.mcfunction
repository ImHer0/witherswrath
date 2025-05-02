

execute if entity @e[type=item,tag=nether_star] as @e[type=item,sort=nearest,tag=nether_star,limit=1] at @s run tp @s ~ ~ ~ ~10 ~

execute at @e[type=item,sort=nearest,tag=nether_star,limit=1] run particle end_rod ^0 ^0.3 ^0.75 0 0 0 0 2 normal
execute at @e[type=item,sort=nearest,tag=nether_star,limit=1] run particle electric_spark ~ ~0.8 ~ 0.01 0 0.01 1 2 normal
execute at @e[type=item,sort=nearest,tag=nether_star,limit=1] run particle end_rod ^0 ^1.4 ^0.75 0 0 0 0 2 normal

execute as @e[type=item_display,tag=nether_star,limit=1] at @s run tp @s ~ ~ ~ ~4 ~
execute as @e[type=item_display,tag=nether_star,limit=1] at @s run tp @s @e[type=item,sort=nearest,tag=nether_star,limit=1]
execute unless entity @e[type=item,nbt={Item:{id:"minecraft:nether_star"}}] run kill @e[type=item_display,tag=nether_star,limit=1]

schedule function wither:nether_star/tick 1t

