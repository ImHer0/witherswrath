# No player in range: stop charging
scoreboard players set @s wither.variant 0
execute if entity @s[tag=wCharging] run data merge entity @s {HasVisualFire:0b}
tag @s remove wCharging
