# Ran by advancements for summoning the Wither
advancement revoke @s only wither:wither/summoned_wither

# Keeps count of how many withers are alive
execute at @e[type=minecraft:player,limit=1,sort=random] as @s run scoreboard players add witherCount witherCount 1

# FUNCTIONS
execute if score witherCount witherCount matches 1 run schedule function wither:wither/wither_fight_start1 1t
execute if score witherCount witherCount matches 1 run schedule function wither:wither/wither_skull 10s
schedule function wither:wither/wither_gravity 10s
execute if score witherCount witherCount matches 1 run schedule function wither:wither/wither_homingpre 10s
execute if score witherCount witherCount matches 1 run schedule function wither:wither/wither_spawn 15s
execute if score witherCount witherCount matches 1 run schedule function wither:wither/wither_start1 219t
execute if score witherCount witherCount matches 1 run schedule function wither:wither/wither_unstuck 15s

