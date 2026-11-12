# Ran as/at the homing skull: flies at the nearest player's head and turns to face them
particle minecraft:smoke ^ ^ ^-0.5 0.2 0.2 0.2 0 4 normal
execute unless score enraged wenraged matches 1 facing entity @p eyes run tp @s ^ ^ ^0.35 ~ ~
execute if score enraged wenraged matches 1 facing entity @p eyes run tp @s ^ ^ ^0.6 ~ ~
execute at @s run playsound minecraft:entity.experience_orb.pickup hostile @a[distance=..7] ~ ~ ~ 1 2 0

# Homing Explosion: next to a player's head, or about to hit a block
execute at @s positioned ~ ~-1.62 ~ if entity @a[distance=..0.5] run return run function wither:wither/phase1/homing/homing_boom
execute at @s facing entity @p eyes unless block ^ ^ ^1 air run function wither:wither/phase1/homing/homing_boom
