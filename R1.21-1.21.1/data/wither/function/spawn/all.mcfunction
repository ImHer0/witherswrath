# /function wither:spawn/all - all six variants in a row 6 blocks in front of you
function wither:wither/team
execute if entity @s at @s rotated ~ 0 positioned ^5 ^ ^6 run function wither:wither/passive/variants/bone_knight
execute if entity @s at @s rotated ~ 0 positioned ^3 ^ ^6 run function wither:wither/passive/variants/soul_archer
execute if entity @s at @s rotated ~ 0 positioned ^1 ^ ^6 run function wither:wither/passive/variants/triskull
execute if entity @s at @s rotated ~ 0 positioned ^-1 ^ ^6 run function wither:wither/passive/variants/hexbinder
execute if entity @s at @s rotated ~ 0 positioned ^-3 ^ ^6 run function wither:wither/passive/variants/shade_reaper
execute if entity @s at @s rotated ~ 0 positioned ^-5 ^ ^6 run function wither:wither/passive/variants/death_rider
