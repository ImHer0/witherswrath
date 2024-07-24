function wither:wither/wither_skull
function wither:wither/wither_charge1
function wither:wither/wither_convert

execute at @p as @e[type=minecraft:wither,limit=1,sort=nearest] store result score @s checkHealth run data get entity @s Health
execute at @p as @e[type=minecraft:wither,limit=1,sort=furthest] store result score @s checkHealth run data get entity @s Health

execute unless score witherCount witherCount matches 1 unless score witherCount witherCount matches 0 run schedule function wither:wither/wither_check 1t

execute as @e[type=wither,limit=1,sort=nearest] store result score @s Health run data get entity @s Health
execute as @e[type=minecraft:wither,limit=1,sort=nearest] if score @e[type=minecraft:wither,limit=1,sort=nearest] wtime matches 3 run function wither:wither/wither_midpoint1
execute if entity @e[type=blaze,nbt={Tags: ["wArcher"]}] unless data entity @e[type=blaze,limit=1] {Passengers: [{}]} run kill @e[type=blaze,limit=1]
execute as @e[type=blaze,nbt={Tags: ["smoke"]}] if score @e[type=minecraft:wither,limit=1,sort=nearest] smoke matches 1 if entity @e[type=blaze,nbt={Tags: ["smoke"]}] run tp @s @e[type=wither,sort=nearest,limit=1]
execute as @e[type=blaze,nbt={Tags: ["wArcher"]},sort=random,limit=1] unless data entity @s {Passengers: [{}]} run kill @s
execute unless entity @e[type=player] run kill @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=hStand]



# EFFECT NEARBY PLAYER "HELPERS"
execute at @e[type=minecraft:wither,limit=1,sort=nearest] as @e[type=!player,type=!wither,type=!wither_skeleton,type=!blaze,type=!zombified_piglin,distance=..20,limit=1,sort=random] unless data entity @s CustomName run data merge entity @s {active_effects:[{id:"minecraft:wither",amplifier:3,duration:80,show_particles:1b},{id:"minecraft:weakness",amplifier:1,duration:80,show_particles:0b}]}



# PREVENT BOTH BLAZES AND WITHERS FROM TARGETING WITHER AND THE OPPOSITE
execute at @e[type=minecraft:wither,limit=1,sort=nearest] as @e[type=minecraft:wither_skeleton,distance=..40] run team join Wither
execute at @e[type=minecraft:wither,limit=1,sort=nearest] as @e[type=minecraft:blaze,distance=..40] run team join Wither

# SPECIAL FX FOR SPAWNED MOBS
execute at @e[tag=wSkel] run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 .03 2 force

# WITHER CHECK
execute unless entity @e[type=minecraft:wither] run schedule clear wither:wither/wither_chargepre
execute unless entity @e[type=minecraft:wither] run schedule clear wither:wither/wither_homingpre
execute unless entity @e[type=minecraft:wither] run schedule clear wither:wither/wither_spawn

