# Zombie variants to Piglins
execute at @e[type=wither,limit=1,sort=nearest] as @e[type=zombie,limit=1,sort=random,distance=..40] unless data entity @s CustomName run data merge entity @s {Tags:["zMarked"]}
execute at @e[type=wither,limit=1,sort=nearest] as @e[type=husk,limit=1,sort=random,distance=..40] unless data entity @s CustomName run data merge entity @s {Tags:["zMarked"]}

execute at @e[type=wither,limit=1,sort=nearest] as @e[limit=1,sort=random,nbt={Tags:["zMarked"]}] at @s run summon zombified_piglin ~ ~.01 ~ {DeathLootTable: "wither:entities/withermobs", Tags: ["wSkel"], Attributes: [{Name: "generic.max_health", Base: 10}], AngerTime:1000000, Health: 10}

execute at @e[type=wither,limit=1,sort=nearest] as @e[limit=1,sort=random,nbt={Tags:["zMarked"]}] run tp @s ~ ~-200 ~

execute at @e[type=wither,limit=1,sort=nearest] as @e[limit=1,sort=random,nbt={Tags:["zMarked"]}] run kill @s


# Skeleton variants to Wither Skeletons
execute at @e[type=wither,limit=1,sort=nearest] as @e[type=skeleton,limit=1,sort=random,distance=..40] unless data entity @s CustomName run data merge entity @s {Tags:["sMarked"]}
execute at @e[type=wither,limit=1,sort=nearest] as @e[type=bogged,limit=1,sort=random,distance=..40] unless data entity @s CustomName run data merge entity @s {Tags:["sMarked"]}
execute at @e[type=wither,limit=1,sort=nearest] as @e[type=stray,limit=1,sort=random,distance=..40] unless data entity @s CustomName run data merge entity @s {Tags:["sMarked"]}

execute at @e[type=wither,limit=1,sort=nearest] as @e[limit=1,sort=random,nbt={Tags:["sMarked"]}] at @s run summon wither_skeleton ~ ~.01 ~ {DeathLootTable: "wither:entities/withermobs", Tags: ["wSkel"], Attributes: [{Name: "generic.max_health", Base: 15}], Health: 15}

execute at @e[type=wither,limit=1,sort=nearest] as @e[limit=1,sort=random,nbt={Tags:["sMarked"]}] run tp @s ~ ~-200 ~

execute at @e[type=wither,limit=1,sort=nearest] as @e[limit=1,sort=random,nbt={Tags:["sMarked"]}] run kill @s

execute if entity @e[type=wither,limit=1,sort=nearest] run schedule function wither:wither/wither_convert 15t
