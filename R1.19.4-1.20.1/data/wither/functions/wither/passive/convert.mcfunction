# Zombie variants to Piglins
execute at @e[type=wither,limit=1,sort=nearest] as @e[type=minecraft:zombie,distance=..20,tag=] unless data entity @s CustomName run tag @s add zMarked
execute at @e[type=wither,limit=1,sort=nearest] as @e[type=minecraft:zombie_villager,distance=..20,tag=] unless data entity @s CustomName run tag @s add zMarked
execute at @e[type=wither,limit=1,sort=nearest] as @e[type=minecraft:husk,distance=..20,tag=] unless data entity @s CustomName run tag @s add zMarked
execute at @e[type=wither,limit=1,sort=nearest] as @e[type=minecraft:drowned,distance=..20,tag=] unless data entity @s CustomName run tag @s add zMarked

execute at @e[type=wither,limit=1,sort=nearest] as @e[sort=random,nbt={Tags:["zMarked"]}] at @s run summon zombified_piglin ~ ~.01 ~ {Team:"Wither",DeathLootTable: "wither:entities/withermobs", Tags: ["wSkel"], Attributes: [{Name: "generic.max_health", Base: 10}], AngerTime:1000000, Health: 10}

execute at @e[type=wither,limit=1,sort=nearest] as @e[sort=random,nbt={Tags:["zMarked"]}] run tp @s ~ ~-200 ~

execute at @e[type=wither,limit=1,sort=nearest] as @e[sort=random,nbt={Tags:["zMarked"]}] run kill @s


# Skeleton variants to Wither Skeletons
execute at @e[type=wither,limit=1,sort=nearest] as @e[type=#minecraft:skeletons,distance=..20,tag=] unless data entity @s CustomName run tag @s add sMarked

execute at @e[type=wither,limit=1,sort=nearest] as @e[sort=random,nbt={Tags:["sMarked"]}] at @s run summon wither_skeleton ~ ~.01 ~ {Team:"Wither",DeathLootTable: "wither:entities/withermobs", Tags: ["wSkel"], Attributes: [{Name: "generic.max_health", Base: 15}], Health: 15, HandItems:[{id:"minecraft:bow",Count:1b},{}],HandDropChances:[0.000F,0.085F], ArmorItems:[{id:"minecraft:netherite_boots",Count:1b},{},{},{}],ArmorDropChances:[-327.670F,0.085F,0.085F,0.085F]}

execute at @e[type=wither,limit=1,sort=nearest] as @e[sort=random,nbt={Tags:["sMarked"]}] run tp @s ~ ~-200 ~

execute at @e[type=wither,limit=1,sort=nearest] as @e[sort=random,nbt={Tags:["sMarked"]}] run kill @s

execute if entity @e[type=wither,limit=1,sort=nearest] run schedule function wither:wither/passive/convert 15t
