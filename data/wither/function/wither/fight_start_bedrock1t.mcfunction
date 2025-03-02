
# Spin
execute as @e[type=armor_stand,tag=wither_spin,limit=1] at @s run rotate @s ~20 ~
execute as @e[type=minecraft:wither,limit=1,sort=nearest] run tp @s @e[type=armor_stand,tag=wither_spin,limit=1]


schedule function wither:wither/fight_start_bedrock1t 1t