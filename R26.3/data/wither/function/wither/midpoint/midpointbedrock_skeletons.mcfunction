# Bedrock Edition: 3 Wither Skeletons join at half health on Normal and Hard
execute store result score #diff wither.stats run difficulty
execute if score #diff wither.stats matches 2.. at @e[type=minecraft:wither,tag=Bedrock,limit=1] run summon minecraft:wither_skeleton ~1 ~ ~ {Team:"Wither"}
execute if score #diff wither.stats matches 2.. at @e[type=minecraft:wither,tag=Bedrock,limit=1] run summon minecraft:wither_skeleton ~-1 ~ ~1 {Team:"Wither"}
execute if score #diff wither.stats matches 2.. at @e[type=minecraft:wither,tag=Bedrock,limit=1] run summon minecraft:wither_skeleton ~ ~ ~-1 {Team:"Wither"}
