# /function wither:spawn/random - one random variant, like the Wither's spawns
function wither:wither/team
execute if entity @s at @s rotated ~ 0 positioned ^ ^ ^4 run return run function wither:wither/passive/variants/pick
function wither:wither/passive/variants/pick
