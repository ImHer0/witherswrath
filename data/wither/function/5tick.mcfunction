


# PREVENTS MORE THAN 1 WITHER ALIVE
execute unless score witherCount witherCount matches 1 unless score witherCount witherCount matches 0 run function wither:wither/check
execute unless score witherCount witherCount matches 0 unless score witherCount witherCount matches 1 unless score witherCount witherCount matches 2 run scoreboard players set witherCount witherCount 0

execute as @e[type=wither_skeleton,nbt={Tags: ["wArcher"]}] at @s at @e[type=blaze,nbt={Tags: ["wArcher"]},sort=nearest] unless block ~ ~-.1 ~ air run ride @e[type=wither_skeleton,nbt={Tags: ["wArcher"]},sort=nearest,limit=1] dismount

#execute if entity @e[type=blaze,nbt={Tags: ["wArcher"]}] unless data entity @e[type=blaze,limit=1] {Passengers: [{}]} run kill @e[type=blaze,limit=1]
#execute as @e[type=blaze,nbt={Tags: ["wArcher"]},sort=random,limit=1] unless data entity @s {Passengers: [{}]} run kill @s
execute unless entity @e[type=player] run kill @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=hStand]

# EFFECT NEARBY PLAYER "HELPERS"
execute at @e[type=minecraft:wither,limit=1,sort=nearest] as @e[type=!player,type=!#minecraft:wither_friends,type=!#can_breathe_under_water,type=!blaze,type=!zombified_piglin,type=!villager,distance=..20,limit=1,sort=random] unless data entity @s CustomName run data merge entity @s {active_effects:[{id:"minecraft:wither",amplifier:3,duration:80,show_particles:1b},{id:"minecraft:weakness",amplifier:1,duration:80,show_particles:0b}]}

# SPECIAL FX FOR SPAWNED MOBS
execute at @e[tag=wSkel] run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 .03 10 force

# PREVENT BOTH BLAZES AND WITHERS FROM TARGETING WITHER AND THE VICE VERSA
execute at @e[type=minecraft:wither,limit=1,sort=nearest] as @e[type=minecraft:zombified_piglin,distance=..40] run team join Wither
execute at @e[type=minecraft:wither,limit=1,sort=nearest] as @e[type=minecraft:wither_skeleton,distance=..40] run team join Wither
execute at @e[type=minecraft:wither,limit=1,sort=nearest] as @e[type=minecraft:blaze,distance=..40] run team join Wither
    # This one is for mobs in water (basically any sea creature)
execute at @e[type=minecraft:wither,limit=1,sort=nearest] as @e[type=!player,distance=..200] if block ~ ~ ~ minecraft:water run team join Wither

schedule function wither:5tick 5t