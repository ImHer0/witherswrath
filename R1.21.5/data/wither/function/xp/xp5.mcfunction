execute at @e[type=armor_stand,tag=starxp] run summon minecraft:experience_orb ~ ~ ~ {Value:145,Motion:[0.4d,0.4d,-0.3d]}
execute at @e[type=armor_stand,tag=starxp] run playsound minecraft:entity.experience_bottle.throw neutral @a[distance=..20] ~ ~ ~ 1 2
execute at @e[type=armor_stand,tag=starxp] as @e[type=experience_orb,distance=..15] at @s run particle happy_villager ~ ~ ~ ~ ~ ~ 0 0 normal
