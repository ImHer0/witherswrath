# Zombie variants to Piglins
execute at @e[type=minecraft:wither,tag=Bedrock,limit=1] as @e[type=#minecraft:zombies,distance=..20,tag=] unless data entity @s CustomName at @s run function wither:wither/passive/convert_zombie

# Skeleton variants to Wither Skeletons
execute at @e[type=minecraft:wither,tag=Bedrock,limit=1] as @e[type=#minecraft:skeletons,distance=..20,tag=] unless data entity @s CustomName at @s run function wither:wither/passive/convert_skeleton

execute if score witherCount witherCount matches 1.. run schedule function wither:wither/passive/convert 2s
