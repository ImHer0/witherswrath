# Ran as/at a Magus every 5 ticks
# Like a blaze: catches fire for 3s, fires 3 fireballs a quarter second apart, then rests
execute unless entity @a[distance=..20,gamemode=!spectator] run return run function wither:wither/passive/variants/magus_calm
scoreboard players add @s wither.variant 1
execute if score @s wither.variant matches 4 run function wither:wither/passive/variants/magus_ignite
execute if entity @s[tag=wCharging] run particle minecraft:flame ~ ~1.2 ~ 0.35 0.7 0.35 0.03 12 normal
execute if entity @s[tag=wCharging] run particle minecraft:small_flame ~ ~1.2 ~ 0.4 0.7 0.4 0.02 6 normal
execute if entity @s[tag=wCharging] run particle minecraft:lava ~ ~1.4 ~ 0.3 0.5 0.3 0 1 normal
execute if score @s wither.variant matches 16..18 run function wither:wither/passive/variants/magus_fire
execute if score @s wither.variant matches 18.. run function wither:wither/passive/variants/magus_extinguish
