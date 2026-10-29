# Ran as the fight Wither: #chance = 20 + 80 * (600 - HP) / 550, capped at 100 (100% from 50 HP down)
scoreboard players set #lost wither.variant 600
scoreboard players operation #lost wither.variant -= @s Health
execute if score #lost wither.variant matches ..-1 run scoreboard players set #lost wither.variant 0
scoreboard players set #k wither.variant 80
scoreboard players operation #lost wither.variant *= #k wither.variant
scoreboard players set #k wither.variant 550
scoreboard players operation #lost wither.variant /= #k wither.variant
scoreboard players operation #chance wither.variant += #lost wither.variant
execute if score #chance wither.variant matches 101.. run scoreboard players set #chance wither.variant 100
