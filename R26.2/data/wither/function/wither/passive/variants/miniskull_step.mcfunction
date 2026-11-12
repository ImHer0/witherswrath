# Ran as/at a small skull: ~22 block range, bursts next to a player or a wall
scoreboard players add @s wither.variant 1
execute if entity @s[tag=wMiniFast] if score @s wither.variant matches 40.. run return run kill @s
execute if score @s wither.variant matches 75.. run return run kill @s
particle minecraft:smoke ~ ~ ~ 0 0 0 0 1 normal
execute positioned ~ ~-1 ~ if entity @a[distance=..1.3,gamemode=!spectator] run return run function wither:wither/passive/variants/miniskull_burst
execute unless block ~0.6 ~ ~ #wither:passable run return run function wither:wither/passive/variants/miniskull_burst
execute unless block ~-0.6 ~ ~ #wither:passable run return run function wither:wither/passive/variants/miniskull_burst
execute unless block ~ ~ ~0.6 #wither:passable run return run function wither:wither/passive/variants/miniskull_burst
execute unless block ~ ~ ~-0.6 #wither:passable run return run function wither:wither/passive/variants/miniskull_burst
execute unless block ~ ~0.6 ~ #wither:passable run return run function wither:wither/passive/variants/miniskull_burst
execute unless block ~ ~-0.6 ~ #wither:passable run return run function wither:wither/passive/variants/miniskull_burst
