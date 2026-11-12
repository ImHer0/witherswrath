# Checks for newly summoned withers every tick
execute as @e[type=minecraft:wither,tag=!theWither,limit=1] at @s run tag @s add justSummoned
execute as @e[type=minecraft:wither,tag=justSummoned,limit=1] at @s run function wither:wither/fight_once

# Soulpiercer multishot (only while one exists)
execute if entity @e[type=minecraft:wither_skeleton,tag=wArcherV,limit=1] run function wither:wither/passive/variants/archer_arrows

# Fight logic only runs while a fight is active
execute if score witherCount witherCount matches 1.. run return run function wither:tick_fight

# No fight: clear leftover attack loops once instead of every tick
execute unless score #idle wither.stats matches 1 run function wither:tick_idle
