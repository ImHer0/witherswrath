execute as @e[type=wither_skull,tag=deathtag] at @s run data merge entity @s {Motion:[0.0d,0.0d,0.0d],Glowing:1b}
execute as @e[type=wither_skull,tag=deathtag] at @s run team join Wither @s
execute as @e[type=wither_skull,tag=deathtag] at @s run tp @s ~ ~ ~ facing entity @p eyes
execute as @e[type=wither_skull,tag=deathtag] at @s run tp @s ~ ~ ~ ~180 ~
execute as @e[type=wither_skull,tag=deathtag] at @s run playsound minecraft:item.flintandsteel.use hostile @p ~ ~ ~ 0.8 .1 0.01
execute as @e[type=wither_skull,tag=deathtag] at @s run playsound minecraft:item.flintandsteel.use hostile @p ~ ~ ~ 0.8 .7 0.01

schedule function wither:wither/phase2/enraged/skulls/3 10t
