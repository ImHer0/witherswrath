# /function wither:spawn/hexbinder
# Spawns The Withered Magus (Hexbinder) 4 blocks in front of you (works outside a fight)
function wither:wither/team
execute if entity @s at @s rotated ~ 0 positioned ^ ^ ^4 run return run function wither:wither/passive/variants/hexbinder
function wither:wither/passive/variants/hexbinder
