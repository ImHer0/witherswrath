# Ran by advancements for summoning the Wither
advancement revoke @s only wither:wither/summoned_wither

# Keeps count of how many withers are alive
execute at @e[type=minecraft:player,limit=1,sort=random] as @s run scoreboard players add witherCount witherCount 1

# FUNCTIONS
execute if score witherCount witherCount matches 1 run schedule function wither:wither_check 5t
execute if score witherCount witherCount matches 1 run schedule function wither:wither/fight_start1 1t
execute if score witherCount witherCount matches 1 run schedule function wither:wither/skull 10s
execute if score witherCount witherCount matches 1 run schedule function wither:wither/launchskull 20s
execute if score witherCount witherCount matches 1 run schedule function wither:wither/fight_startpart 1t
execute if score witherCount witherCount matches 1 if data storage wither:options {togglehoming:Enabled} run schedule function wither:wither/homing/homingpre 10s
execute if score witherCount witherCount matches 1 if data storage wither:options {togglespawns:Enabled} run schedule function wither:wither/spawn 15s
execute if score witherCount witherCount matches 1 run schedule function wither:wither/start1 219t
execute if score witherCount witherCount matches 1 run schedule function wither:wither/unstuck 15s
execute if score witherCount witherCount matches 1 if data storage wither:options {toggleanimation:Default} run schedule function wither:wither/fight_starttick 1t
execute if score witherCount witherCount matches 1 if data storage wither:options {toggleanimation:Bedrock} run schedule function wither:wither/fight_start_bedrock 1t
