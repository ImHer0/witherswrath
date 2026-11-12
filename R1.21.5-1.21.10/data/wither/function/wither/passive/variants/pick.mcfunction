# Picks what the Wither spawns: the original wither skeleton or one of the six special variants
# Variant chance: 20% at full health, rising to 100% when the Wither is at 50 HP (20% outside a fight)
scoreboard players set #chance wither.variant 20
execute as @e[type=minecraft:wither,tag=Bedrock,limit=1,sort=nearest] if score @s Health matches ..600 run function wither:wither/passive/variants/chance
# Only one special variant at a time within 96 blocks (Nightmare counts with its rider)
execute if entity @e[tag=wVariant,distance=..96,limit=1] run return run function wither:wither/passive/variants/plain
execute store result score #roll wither.variant run random value 1..100
execute if score #roll wither.variant > #chance wither.variant run return run function wither:wither/passive/variants/plain

# 1 Bone Knight  2 Soul Archer  3 Triskull  4 Hexbinder  5 Shade Reaper  6 Death Rider
execute store result score #variant wither.variant run random value 1..6
execute if score #variant wither.variant matches 1 run function wither:wither/passive/variants/bone_knight
execute if score #variant wither.variant matches 2 run function wither:wither/passive/variants/soul_archer
execute if score #variant wither.variant matches 3 run function wither:wither/passive/variants/triskull
execute if score #variant wither.variant matches 4 run function wither:wither/passive/variants/hexbinder
execute if score #variant wither.variant matches 5 run function wither:wither/passive/variants/shade_reaper
execute if score #variant wither.variant matches 6 run function wither:wither/passive/variants/death_rider
