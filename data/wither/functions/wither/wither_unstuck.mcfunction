execute as @e[type=minecraft:wither, limit=1, sort=nearest] at @s rotated ~ 0 if block ~ ~-0.2 ~ water run tp ~ ~6 ~
execute as @e[type=minecraft:wither, limit=1, sort=nearest] at @s rotated ~ 0 if block ~ ~0.2 ~ water run tp ~ ~7 ~
execute as @e[type=minecraft:wither, limit=1, sort=nearest] at @s run fill ~-1 ~ ~-1 ~1 ~3 ~1 air destroy

execute run schedule function wither:wither/wither_unstuck 1s