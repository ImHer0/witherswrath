# Motion-based wither escape system
# Makes the wither move away from the nearest player using motion instead of teleportation

# Store player position and wither position for calculations
execute as @e[type=minecraft:wither,sort=nearest,limit=1] at @s store result score @s wither.temp.x run data get entity @s Pos[0] 1000
execute as @e[type=minecraft:wither,sort=nearest,limit=1] at @s store result score @s wither.temp.y run data get entity @s Pos[1] 1000
execute as @e[type=minecraft:wither,sort=nearest,limit=1] at @s store result score @s wither.temp.z run data get entity @s Pos[2] 1000

execute as @p at @s store result score @s wither.temp.px run data get entity @s Pos[0] 1000
execute as @p at @s store result score @s wither.temp.py run data get entity @s Pos[1] 1000
execute as @p at @s store result score @s wither.temp.pz run data get entity @s Pos[2] 1000

# Calculate direction vector (wither - player = away from player)
execute as @e[type=minecraft:wither,sort=nearest,limit=1] run scoreboard players operation @s wither.temp.x -= @p wither.temp.px
execute as @e[type=minecraft:wither,sort=nearest,limit=1] run scoreboard players operation @s wither.temp.y -= @p wither.temp.py
execute as @e[type=minecraft:wither,sort=nearest,limit=1] run scoreboard players operation @s wither.temp.z -= @p wither.temp.pz

# Normalize and scale the motion (divide by 1000 to get proper motion values, then scale for desired speed)
# Motion values: X, Y (with upward boost), Z
execute as @e[type=minecraft:wither,sort=nearest,limit=1] store result entity @s Motion[0] double 0.0003 run scoreboard players get @s wither.temp.x
execute as @e[type=minecraft:wither,sort=nearest,limit=1] store result entity @s Motion[1] double 0.0004 run scoreboard players get @s wither.temp.y
execute as @e[type=minecraft:wither,sort=nearest,limit=1] store result entity @s Motion[2] double 0.0003 run scoreboard players get @s wither.temp.z

# Add additional upward motion boost to help escape
execute as @e[type=minecraft:wither,sort=nearest,limit=1] run data modify entity @s Motion[1] set value 0.4d

# Make the wither face away from the player while moving
execute as @e[type=minecraft:wither,sort=nearest,limit=1] at @s rotated as @s run tp @s ~ ~ ~ facing entity @p eyes
execute as @e[type=minecraft:wither,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~180 ~
