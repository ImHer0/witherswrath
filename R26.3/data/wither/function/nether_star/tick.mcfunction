execute as @e[type=minecraft:item,tag=nether_star,limit=1] at @s run function wither:nether_star/tick_star
# Star picked up or gone: remove the display and stop looping
execute unless entity @e[type=minecraft:item,tag=nether_star,limit=1] run return run kill @e[type=minecraft:item_display,tag=nether_star]
schedule function wither:nether_star/tick 1t
