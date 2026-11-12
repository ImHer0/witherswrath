# /function wither:spawn/death_rider
# Spawns Harbinger of Ash on Nightmare (Death Rider) 4 blocks in front of you (works outside a fight)
function wither:wither/team
execute if entity @s at @s rotated ~ 0 positioned ^ ^ ^4 run return run function wither:wither/passive/variants/death_rider
function wither:wither/passive/variants/death_rider
