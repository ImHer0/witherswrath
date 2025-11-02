execute as @e[type=wither_skull,tag=deathtag] at @p run playsound minecraft:entity.experience_orb.pickup player @e[type=player,distance=..50] ~ ~ ~ 0.3 .6

execute as @e[type=wither_skull,tag=deathtag] at @s run tp @s ~ ~ ~ facing entity @p eyes
execute as @e[type=wither_skull,tag=deathtag] at @s run tp @s ~ ~ ~ ~180 ~

schedule function wither:wither/phase2/enraged/skulls/1 10t