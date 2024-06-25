# Zombie variants to Piglins
execute as @e[type=wither,limit=1,sort=nearest] at @s if entity @e[type=zombie,distance=..40,limit=1,sort=nearest] at @e[type=zombie,distance=..40,limit=1,sort=nearest] run summon zombified_piglin ~ ~.01 ~ {DeathLootTable: "wither:entities/wskeleton", Tags: ["wSkel"], Attributes: [{Name: "generic.max_health", Base: 10}], AngerTime:1000000, Health: 10}
execute as @e[type=wither,limit=1,sort=nearest] at @s if entity @e[type=husk,distance=..40,limit=1,sort=nearest] at @e[type=husk,distance=..40,limit=1,sort=nearest] run summon zombified_piglin ~ ~.01 ~ {DeathLootTable: "wither:entities/wskeleton", Tags: ["wSkel"], Attributes: [{Name: "generic.max_health", Base: 10}], AngerTime:1000000, Health: 10}

execute as @e[type=wither,limit=1,sort=nearest] at @s if entity @e[type=zombie,distance=..40,limit=1,sort=nearest] run tp @e[type=zombie,limit=1,sort=nearest] ~ ~-200 ~
execute as @e[type=wither,limit=1,sort=nearest] at @s if entity @e[type=husk,distance=..40,limit=1,sort=nearest] run tp @e[type=husk,limit=1,sort=nearest] ~ ~-200 ~

execute as @e[type=wither,limit=1,sort=nearest] at @s if entity @e[type=zombie,distance=..40,limit=1,sort=nearest] run kill @e[type=zombie,limit=1,sort=nearest]
execute as @e[type=wither,limit=1,sort=nearest] at @s if entity @e[type=husk,distance=..40,limit=1,sort=nearest] run kill @e[type=husk,limit=1,sort=nearest]

# Skeleton variants to Wither Skeletons
execute as @e[type=wither,limit=1,sort=nearest] at @s if entity @e[type=skeleton,distance=..40,limit=1,sort=nearest] at @e[type=skeleton,distance=..40,limit=1,sort=nearest] run summon wither_skeleton ~ ~.01 ~ {DeathLootTable: "wither:entities/wskeleton", Tags: ["wSkel"], Attributes: [{Name: "generic.max_health", Base: 15}], Health: 15}
execute as @e[type=wither,limit=1,sort=nearest] at @s if entity @e[type=bogged,distance=..40,limit=1,sort=nearest] at @e[type=bogged,distance=..40,limit=1,sort=nearest] run summon wither_skeleton ~ ~.01 ~ {DeathLootTable: "wither:entities/wskeleton", HandItems:[{id:"minecraft:stone_sword",count:1},{}], Tags: ["wSkel"], Attributes: [{Name: "generic.max_health", Base: 15}], Health: 15}
execute as @e[type=wither,limit=1,sort=nearest] at @s if entity @e[type=stray,distance=..40,limit=1,sort=nearest] at @e[type=stray,distance=..40,limit=1,sort=nearest] run summon wither_skeleton ~ ~.01 ~ {DeathLootTable: "wither:entities/wskeleton", HandItems:[{id:"minecraft:bow",count:1},{}], Tags: ["wSkel"], Attributes: [{Name: "generic.max_health", Base: 15}], Health: 15}

execute as @e[type=wither,limit=1,sort=nearest] at @s if entity @e[type=skeleton,distance=..40,limit=1,sort=nearest] run tp @e[type=skeleton,limit=1,sort=nearest] ~ ~-200 ~
execute as @e[type=wither,limit=1,sort=nearest] at @s if entity @e[type=bogged,distance=..40,limit=1,sort=nearest] run tp @e[type=bogged,limit=1,sort=nearest] ~ ~-200 ~
execute as @e[type=wither,limit=1,sort=nearest] at @s if entity @e[type=stray,distance=..40,limit=1,sort=nearest] run tp @e[type=stray,limit=1,sort=nearest] ~ ~-200 ~

execute as @e[type=wither,limit=1,sort=nearest] at @s if entity @e[type=skeleton,distance=..40,limit=1,sort=nearest] run kill @e[type=skeleton,limit=1,sort=nearest]
execute as @e[type=wither,limit=1,sort=nearest] at @s if entity @e[type=bogged,distance=..40,limit=1,sort=nearest] run kill @e[type=bogged,limit=1,sort=nearest]
execute as @e[type=wither,limit=1,sort=nearest] at @s if entity @e[type=stray,distance=..40,limit=1,sort=nearest] run kill @e[type=stray,limit=1,sort=nearest]