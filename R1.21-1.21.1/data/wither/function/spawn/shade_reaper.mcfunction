# /function wither:spawn/shade_reaper
# Spawns The Grave Shade (Shade Reaper) 4 blocks in front of you (works outside a fight)
function wither:wither/team
execute if entity @s at @s rotated ~ 0 positioned ^ ^ ^4 run return run function wither:wither/passive/variants/shade_reaper
function wither:wither/passive/variants/shade_reaper
