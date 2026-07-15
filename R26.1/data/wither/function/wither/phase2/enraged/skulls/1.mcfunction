execute as @e[type=wither_skull,tag=deathtag] at @p run playsound minecraft:entity.experience_orb.pickup player @p ~ ~ ~ 0.08 1.2 0.00001

execute as @e[type=wither_skull,tag=deathtag] at @s run tp @s ~ ~ ~ facing entity @p eyes
execute as @e[type=wither_skull,tag=deathtag] at @s run tp @s ~ ~ ~ ~180 ~


schedule function wither:wither/phase2/enraged/skulls/rotation 10t
