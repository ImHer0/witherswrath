# Ran as the Triskull, positioned at a head and rotated towards the target
# Macro: speed (blocks/tick), item (skull shown), kind (wMiniFast / wMiniSlow)
$summon minecraft:snowball ~ ~ ~ {Tags:["wSkel","wMiniSkull","$(kind)","wMiniNew"],NoGravity:1b,Item:{id:"$(item)",count:1}}
$function wither:wither/passive/variants/aim_vector {speed:"$(speed)"}
data modify entity @e[type=minecraft:snowball,tag=wMiniNew,limit=1] Motion set from storage wither:aim motion
data modify entity @e[type=minecraft:snowball,tag=wMiniNew,limit=1] Owner set from entity @s UUID
tag @e[type=minecraft:snowball,tag=wMiniNew] remove wMiniNew
particle minecraft:smoke ~ ~ ~ 0.05 0.05 0.05 0.01 4 normal

schedule function wither:wither/passive/variants/miniskull_tick 1t
