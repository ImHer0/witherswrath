scoreboard players add count burstcount 1

execute as @e[type=minecraft:wither,limit=1] at @s run rotate @s facing entity @p eyes
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run summon minecraft:wither_skull ^ ^3 ^2 {Tags:["burstlaunch"],Motion:[0.05,0.09,0.05],Fire:200,CustomName:"burst wither skulls"}

# Store the Target's position in storage
execute as @e[type=minecraft:wither_skull,tag=burstlaunch] at @s store result score @s skullposX run data get entity @s Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=burstlaunch] at @s store result score @s skullposY run data get entity @s Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=burstlaunch] at @s store result score @s skullposZ run data get entity @s Pos[2] 1000

# Store the Player's position in scoreboard (add eye height to Y)
execute as @e[type=minecraft:wither_skull,tag=burstlaunch] at @s store result score @s playerposX run data get entity @p Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=burstlaunch] at @s store result score @s playerposY run data get entity @p Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=burstlaunch] at @s run scoreboard players add @s playerposY 1320
execute as @e[type=minecraft:wither_skull,tag=burstlaunch] at @s store result score @s playerposZ run data get entity @p Pos[2] 1000

# X - Calculate direction and scale appropriately
execute as @e[type=minecraft:wither_skull,tag=burstlaunch] at @s run scoreboard players operation @s skulllaunchmotX = @s playerposX
execute as @e[type=minecraft:wither_skull,tag=burstlaunch] at @s run scoreboard players operation @s skulllaunchmotX -= @s skullposX


# Y - Calculate direction and scale appropriately (less aggressive Y motion)
execute as @e[type=minecraft:wither_skull,tag=burstlaunch] at @s run scoreboard players operation @s skulllaunchmotY = @s playerposY
execute as @e[type=minecraft:wither_skull,tag=burstlaunch] at @s run scoreboard players operation @s skulllaunchmotY -= @s skullposY


# Z - Calculate direction and scale appropriately
execute as @e[type=minecraft:wither_skull,tag=burstlaunch] at @s run scoreboard players operation @s skulllaunchmotZ = @s playerposZ
execute as @e[type=minecraft:wither_skull,tag=burstlaunch] at @s run scoreboard players operation @s skulllaunchmotZ -= @s skullposZ

execute store result storage withers:launch skulllaunchmot.x double 0.0001 run scoreboard players get @e[type=wither_skull,tag=burstlaunch,limit=1] skulllaunchmotX
execute store result storage withers:launch skulllaunchmot.y double 0.0001 run scoreboard players get @e[type=wither_skull,tag=burstlaunch,limit=1] skulllaunchmotY
execute store result storage withers:launch skulllaunchmot.z double 0.0001 run scoreboard players get @e[type=wither_skull,tag=burstlaunch,limit=1] skulllaunchmotZ

execute as @e[type=minecraft:wither_skull,tag=burstlaunch,sort=nearest] at @s run function wither:wither/phase2/enraged/skulls/launchskulls with storage withers:launch skulllaunchmot


execute as @e[type=minecraft:wither_skull,tag=burstlaunch] run function wither:wither/skull/burst/launch_burst_remove
