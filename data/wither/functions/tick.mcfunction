function wither:wither/wither_skull
function wither:wither/wither_charge1
function wither:wither/wither_convert
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if entity @e[type=wither,distance=4..] run function wither:wither/wither_check

execute as @e[type=wither,limit=1,sort=nearest] store result score @s Health run data get entity @s Health
execute as @e[type=minecraft:wither,limit=1,sort=nearest] if score @e[type=minecraft:wither,limit=1,sort=nearest] wtime matches 3 run function wither:wither/wither_midpoint1
execute if entity @e[type=blaze,nbt={Tags:["wArcher"]}] unless data entity @e[type=blaze,limit=1] {Passengers:[{}]} run kill @e[type=blaze,limit=1]
execute as @e[type=blaze,nbt={Tags:["smoke"]}] if score @e[type=minecraft:wither,limit=1,sort=nearest] smoke matches 1 if entity @e[type=blaze,nbt={Tags:["smoke"]}] run tp @s @e[type=wither,sort=nearest,limit=1]
execute as @e[type=blaze,nbt={Tags:["wArcher"]},sort=random,limit=1] unless data entity @s {Passengers:[{}]} run kill @s
execute unless entity @e[type=player] run kill @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=hStand]

# EFFECT NEARBY PLAYER "HELPERS"
execute at @e[type=minecraft:wither,limit=1,sort=nearest] run data merge entity @e[type=!player,type=!wither,type=!wither_skeleton,type=!blaze,distance=..10,limit=1,sort=random] {ActiveEffects:[{Id:20,Duration:100,Amplifier:3},{Id:18,Duration:100,Amplifier:100}]}

# PREVENT BOTH BLAZES AND WSKELETONS FROM TARGETING WITHER AND THE OPPOSITE
execute at @e[type=minecraft:wither,limit=1,sort=nearest] as @e[type=minecraft:wither_skeleton,distance=..40] run team join Wither
execute at @e[type=minecraft:wither,limit=1,sort=nearest] as @e[type=minecraft:blaze,distance=..40] run team join Wither

# WITHER CHECK
execute unless entity @e[type=minecraft:wither] run schedule clear wither:wither/wither_chargepre
execute unless entity @e[type=minecraft:wither] run schedule clear wither:wither/wither_homingpre
execute unless entity @e[type=minecraft:wither] run schedule clear wither:wither/wither_spawn