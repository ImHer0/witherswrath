execute at @e[type=armor_stand,tag=starxp] run summon minecraft:experience_orb ~ ~ ~ {Value:145,Motion:[0.2d,0.7d,-0.3d]}
execute at @e[type=armor_stand,tag=starxp] run playsound minecraft:entity.experience_bottle.throw neutral @a[distance=..20] ~ ~ ~ 1 2
kill @e[type=armor_stand,tag=starxp]