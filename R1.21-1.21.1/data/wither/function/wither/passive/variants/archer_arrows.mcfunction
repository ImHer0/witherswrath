# Ran every tick while a Soulpiercer exists: finds arrows it just fired
# (skeletons ignore Multishot on their bow, so the extra arrows are added here)
execute at @e[type=minecraft:wither_skeleton,tag=wArcherV] as @e[type=minecraft:arrow,distance=..4,tag=!wArrowSeen] at @s run function wither:wither/passive/variants/archer_arrow_check
