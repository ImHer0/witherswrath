# Ran as the Magus, positioned in front of its eyes and rotated towards the target
summon minecraft:small_fireball ~ ~ ~ {Tags:["wFire","wFireNew"]}
function wither:wither/passive/variants/aim_vector {speed:"0.6"}
data modify entity @e[type=minecraft:small_fireball,tag=wFireNew,limit=1] Motion set from storage wither:aim motion
data modify entity @e[type=minecraft:small_fireball,tag=wFireNew,limit=1] Owner set from entity @s UUID
tag @e[type=minecraft:small_fireball,tag=wFireNew] remove wFireNew
particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.03 6 normal
