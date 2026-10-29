# /function wither:spawn/bone_knight
# Spawns Hollow Bulwark (Bone Knight) 4 blocks in front of you (works outside a fight)
function wither:wither/team
execute if entity @s at @s rotated ~ 0 positioned ^ ^ ^4 run return run function wither:wither/passive/variants/bone_knight
function wither:wither/passive/variants/bone_knight
