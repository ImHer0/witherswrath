# Moves along every small skull; only scheduled while some are flying
execute as @e[type=minecraft:snowball,tag=wMiniSkull] at @s run function wither:wither/passive/variants/miniskull_step
execute if entity @e[type=minecraft:snowball,tag=wMiniSkull,limit=1] run schedule function wither:wither/passive/variants/miniskull_tick 1t
