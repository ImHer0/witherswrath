# Store the Target's position in storage
execute as @e[type=minecraft:wither_skull,tag=1,tag=deathtag] at @s store result score @s skullposX run data get entity @s Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=1,tag=deathtag] at @s store result score @s skullposY run data get entity @s Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=1,tag=deathtag] at @s store result score @s skullposZ run data get entity @s Pos[2] 1000

# Store the Player's position in scoreboard (add eye height to Y)
execute as @e[type=minecraft:wither_skull,tag=1,tag=deathtag] at @s store result score @s playerposX run data get entity @e[type=player,sort=nearest,limit=1] Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=1,tag=deathtag] at @s store result score @s playerposY run data get entity @e[type=player,sort=nearest,limit=1] Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=1,tag=deathtag] at @s run scoreboard players add @s playerposY 1320
execute as @e[type=minecraft:wither_skull,tag=1,tag=deathtag] at @s store result score @s playerposZ run data get entity @e[type=player,sort=nearest,limit=1] Pos[2] 1000

# X - Calculate direction and scale appropriately
execute as @e[type=minecraft:wither_skull,tag=1,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX = @s playerposX
execute as @e[type=minecraft:wither_skull,tag=1,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX -= @s skullposX

# Y - Calculate direction and scale appropriately (less aggressive Y motion)
execute as @e[type=minecraft:wither_skull,tag=1,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY = @s playerposY
execute as @e[type=minecraft:wither_skull,tag=1,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY -= @s skullposY

# Z - Calculate direction and scale appropriately
execute as @e[type=minecraft:wither_skull,tag=1,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ = @s playerposZ
execute as @e[type=minecraft:wither_skull,tag=1,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ -= @s skullposZ

# Stores the Results in storages
execute store result storage withers:launch skulllaunchmot.x double 0.0001 run scoreboard players get @e[type=wither_skull,tag=1,tag=deathtag,limit=1] skulllaunchmotX
execute store result storage withers:launch skulllaunchmot.y double 0.0001 run scoreboard players get @e[type=wither_skull,tag=1,tag=deathtag,limit=1] skulllaunchmotY
execute store result storage withers:launch skulllaunchmot.z double 0.0001 run scoreboard players get @e[type=wither_skull,tag=1,tag=deathtag,limit=1] skulllaunchmotZ


execute as @e[type=minecraft:wither_skull,tag=1,tag=deathtag] at @s run function wither:wither/phase2/enraged/skulls/launchskulls with storage withers:launch skulllaunchmot

##

execute as @e[type=minecraft:wither_skull,tag=2,tag=deathtag] at @s store result score @s skullposX run data get entity @s Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=2,tag=deathtag] at @s store result score @s skullposY run data get entity @s Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=2,tag=deathtag] at @s store result score @s skullposZ run data get entity @s Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=2,tag=deathtag] at @s store result score @s playerposX run data get entity @e[type=player,sort=nearest,limit=1] Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=2,tag=deathtag] at @s store result score @s playerposY run data get entity @e[type=player,sort=nearest,limit=1] Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=2,tag=deathtag] at @s run scoreboard players add @s playerposY 1320
execute as @e[type=minecraft:wither_skull,tag=2,tag=deathtag] at @s store result score @s playerposZ run data get entity @e[type=player,sort=nearest,limit=1] Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=2,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX = @s playerposX
execute as @e[type=minecraft:wither_skull,tag=2,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX -= @s skullposX

execute as @e[type=minecraft:wither_skull,tag=2,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY = @s playerposY
execute as @e[type=minecraft:wither_skull,tag=2,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY -= @s skullposY

execute as @e[type=minecraft:wither_skull,tag=2,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ = @s playerposZ
execute as @e[type=minecraft:wither_skull,tag=2,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ -= @s skullposZ

execute store result storage withers:launch skulllaunchmot.x double 0.0001 run scoreboard players get @e[type=wither_skull,tag=2,tag=deathtag,limit=1] skulllaunchmotX
execute store result storage withers:launch skulllaunchmot.y double 0.0001 run scoreboard players get @e[type=wither_skull,tag=2,tag=deathtag,limit=1] skulllaunchmotY
execute store result storage withers:launch skulllaunchmot.z double 0.0001 run scoreboard players get @e[type=wither_skull,tag=2,tag=deathtag,limit=1] skulllaunchmotZ


execute as @e[type=minecraft:wither_skull,tag=2,tag=deathtag] at @s run function wither:wither/phase2/enraged/skulls/launchskulls with storage withers:launch skulllaunchmot

##

execute as @e[type=minecraft:wither_skull,tag=3,tag=deathtag] at @s store result score @s skullposX run data get entity @s Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=3,tag=deathtag] at @s store result score @s skullposY run data get entity @s Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=3,tag=deathtag] at @s store result score @s skullposZ run data get entity @s Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=3,tag=deathtag] at @s store result score @s playerposX run data get entity @e[type=player,sort=nearest,limit=1] Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=3,tag=deathtag] at @s store result score @s playerposY run data get entity @e[type=player,sort=nearest,limit=1] Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=3,tag=deathtag] at @s run scoreboard players add @s playerposY 1320
execute as @e[type=minecraft:wither_skull,tag=3,tag=deathtag] at @s store result score @s playerposZ run data get entity @e[type=player,sort=nearest,limit=1] Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=3,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX = @s playerposX
execute as @e[type=minecraft:wither_skull,tag=3,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX -= @s skullposX

execute as @e[type=minecraft:wither_skull,tag=3,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY = @s playerposY
execute as @e[type=minecraft:wither_skull,tag=3,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY -= @s skullposY

execute as @e[type=minecraft:wither_skull,tag=3,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ = @s playerposZ
execute as @e[type=minecraft:wither_skull,tag=3,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ -= @s skullposZ

execute store result storage withers:launch skulllaunchmot.x double 0.0001 run scoreboard players get @e[type=wither_skull,tag=3,tag=deathtag,limit=1] skulllaunchmotX
execute store result storage withers:launch skulllaunchmot.y double 0.0001 run scoreboard players get @e[type=wither_skull,tag=3,tag=deathtag,limit=1] skulllaunchmotY
execute store result storage withers:launch skulllaunchmot.z double 0.0001 run scoreboard players get @e[type=wither_skull,tag=3,tag=deathtag,limit=1] skulllaunchmotZ


execute as @e[type=minecraft:wither_skull,tag=3,tag=deathtag] at @s run function wither:wither/phase2/enraged/skulls/launchskulls with storage withers:launch skulllaunchmot

##

execute as @e[type=minecraft:wither_skull,tag=4,tag=deathtag] at @s store result score @s skullposX run data get entity @s Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=4,tag=deathtag] at @s store result score @s skullposY run data get entity @s Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=4,tag=deathtag] at @s store result score @s skullposZ run data get entity @s Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=4,tag=deathtag] at @s store result score @s playerposX run data get entity @e[type=player,sort=nearest,limit=1] Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=4,tag=deathtag] at @s store result score @s playerposY run data get entity @e[type=player,sort=nearest,limit=1] Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=4,tag=deathtag] at @s run scoreboard players add @s playerposY 1320
execute as @e[type=minecraft:wither_skull,tag=4,tag=deathtag] at @s store result score @s playerposZ run data get entity @e[type=player,sort=nearest,limit=1] Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=4,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX = @s playerposX
execute as @e[type=minecraft:wither_skull,tag=4,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX -= @s skullposX

execute as @e[type=minecraft:wither_skull,tag=4,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY = @s playerposY
execute as @e[type=minecraft:wither_skull,tag=4,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY -= @s skullposY

execute as @e[type=minecraft:wither_skull,tag=4,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ = @s playerposZ
execute as @e[type=minecraft:wither_skull,tag=4,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ -= @s skullposZ

execute store result storage withers:launch skulllaunchmot.x double 0.0001 run scoreboard players get @e[type=wither_skull,tag=4,tag=deathtag,limit=1] skulllaunchmotX
execute store result storage withers:launch skulllaunchmot.y double 0.0001 run scoreboard players get @e[type=wither_skull,tag=4,tag=deathtag,limit=1] skulllaunchmotY
execute store result storage withers:launch skulllaunchmot.z double 0.0001 run scoreboard players get @e[type=wither_skull,tag=4,tag=deathtag,limit=1] skulllaunchmotZ


execute as @e[type=minecraft:wither_skull,tag=4,tag=deathtag] at @s run function wither:wither/phase2/enraged/skulls/launchskulls with storage withers:launch skulllaunchmot

##

execute as @e[type=minecraft:wither_skull,tag=5,tag=deathtag] at @s store result score @s skullposX run data get entity @s Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=5,tag=deathtag] at @s store result score @s skullposY run data get entity @s Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=5,tag=deathtag] at @s store result score @s skullposZ run data get entity @s Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=5,tag=deathtag] at @s store result score @s playerposX run data get entity @e[type=player,sort=nearest,limit=1] Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=5,tag=deathtag] at @s store result score @s playerposY run data get entity @e[type=player,sort=nearest,limit=1] Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=5,tag=deathtag] at @s run scoreboard players add @s playerposY 1320
execute as @e[type=minecraft:wither_skull,tag=5,tag=deathtag] at @s store result score @s playerposZ run data get entity @e[type=player,sort=nearest,limit=1] Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=5,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX = @s playerposX
execute as @e[type=minecraft:wither_skull,tag=5,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX -= @s skullposX

execute as @e[type=minecraft:wither_skull,tag=5,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY = @s playerposY
execute as @e[type=minecraft:wither_skull,tag=5,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY -= @s skullposY

execute as @e[type=minecraft:wither_skull,tag=5,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ = @s playerposZ
execute as @e[type=minecraft:wither_skull,tag=5,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ -= @s skullposZ

execute store result storage withers:launch skulllaunchmot.x double 0.0001 run scoreboard players get @e[type=wither_skull,tag=5,tag=deathtag,limit=1] skulllaunchmotX
execute store result storage withers:launch skulllaunchmot.y double 0.0001 run scoreboard players get @e[type=wither_skull,tag=5,tag=deathtag,limit=1] skulllaunchmotY
execute store result storage withers:launch skulllaunchmot.z double 0.0001 run scoreboard players get @e[type=wither_skull,tag=5,tag=deathtag,limit=1] skulllaunchmotZ


execute as @e[type=minecraft:wither_skull,tag=5,tag=deathtag] at @s run function wither:wither/phase2/enraged/skulls/launchskulls with storage withers:launch skulllaunchmot

##

execute as @e[type=minecraft:wither_skull,tag=6,tag=deathtag] at @s store result score @s skullposX run data get entity @s Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=6,tag=deathtag] at @s store result score @s skullposY run data get entity @s Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=6,tag=deathtag] at @s store result score @s skullposZ run data get entity @s Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=6,tag=deathtag] at @s store result score @s playerposX run data get entity @e[type=player,sort=nearest,limit=1] Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=6,tag=deathtag] at @s store result score @s playerposY run data get entity @e[type=player,sort=nearest,limit=1] Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=6,tag=deathtag] at @s run scoreboard players add @s playerposY 1320
execute as @e[type=minecraft:wither_skull,tag=6,tag=deathtag] at @s store result score @s playerposZ run data get entity @e[type=player,sort=nearest,limit=1] Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=6,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX = @s playerposX
execute as @e[type=minecraft:wither_skull,tag=6,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX -= @s skullposX

execute as @e[type=minecraft:wither_skull,tag=6,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY = @s playerposY
execute as @e[type=minecraft:wither_skull,tag=6,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY -= @s skullposY

execute as @e[type=minecraft:wither_skull,tag=6,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ = @s playerposZ
execute as @e[type=minecraft:wither_skull,tag=6,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ -= @s skullposZ

execute store result storage withers:launch skulllaunchmot.x double 0.0001 run scoreboard players get @e[type=wither_skull,tag=6,tag=deathtag,limit=1] skulllaunchmotX
execute store result storage withers:launch skulllaunchmot.y double 0.0001 run scoreboard players get @e[type=wither_skull,tag=6,tag=deathtag,limit=1] skulllaunchmotY
execute store result storage withers:launch skulllaunchmot.z double 0.0001 run scoreboard players get @e[type=wither_skull,tag=6,tag=deathtag,limit=1] skulllaunchmotZ


execute as @e[type=minecraft:wither_skull,tag=6,tag=deathtag] at @s run function wither:wither/phase2/enraged/skulls/launchskulls with storage withers:launch skulllaunchmot

##

execute as @e[type=minecraft:wither_skull,tag=7,tag=deathtag] at @s store result score @s skullposX run data get entity @s Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=7,tag=deathtag] at @s store result score @s skullposY run data get entity @s Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=7,tag=deathtag] at @s store result score @s skullposZ run data get entity @s Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=7,tag=deathtag] at @s store result score @s playerposX run data get entity @e[type=player,sort=nearest,limit=1] Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=7,tag=deathtag] at @s store result score @s playerposY run data get entity @e[type=player,sort=nearest,limit=1] Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=7,tag=deathtag] at @s run scoreboard players add @s playerposY 1320
execute as @e[type=minecraft:wither_skull,tag=7,tag=deathtag] at @s store result score @s playerposZ run data get entity @e[type=player,sort=nearest,limit=1] Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=7,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX = @s playerposX
execute as @e[type=minecraft:wither_skull,tag=7,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX -= @s skullposX

execute as @e[type=minecraft:wither_skull,tag=7,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY = @s playerposY
execute as @e[type=minecraft:wither_skull,tag=7,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY -= @s skullposY

execute as @e[type=minecraft:wither_skull,tag=7,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ = @s playerposZ
execute as @e[type=minecraft:wither_skull,tag=7,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ -= @s skullposZ

execute store result storage withers:launch skulllaunchmot.x double 0.0001 run scoreboard players get @e[type=wither_skull,tag=7,tag=deathtag,limit=1] skulllaunchmotX
execute store result storage withers:launch skulllaunchmot.y double 0.0001 run scoreboard players get @e[type=wither_skull,tag=7,tag=deathtag,limit=1] skulllaunchmotY
execute store result storage withers:launch skulllaunchmot.z double 0.0001 run scoreboard players get @e[type=wither_skull,tag=7,tag=deathtag,limit=1] skulllaunchmotZ


execute as @e[type=minecraft:wither_skull,tag=7,tag=deathtag] at @s run function wither:wither/phase2/enraged/skulls/launchskulls with storage withers:launch skulllaunchmot

##

execute as @e[type=minecraft:wither_skull,tag=8,tag=deathtag] at @s store result score @s skullposX run data get entity @s Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=8,tag=deathtag] at @s store result score @s skullposY run data get entity @s Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=8,tag=deathtag] at @s store result score @s skullposZ run data get entity @s Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=8,tag=deathtag] at @s store result score @s playerposX run data get entity @e[type=player,sort=nearest,limit=1] Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=8,tag=deathtag] at @s store result score @s playerposY run data get entity @e[type=player,sort=nearest,limit=1] Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=8,tag=deathtag] at @s run scoreboard players add @s playerposY 1320
execute as @e[type=minecraft:wither_skull,tag=8,tag=deathtag] at @s store result score @s playerposZ run data get entity @e[type=player,sort=nearest,limit=1] Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=8,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX = @s playerposX
execute as @e[type=minecraft:wither_skull,tag=8,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX -= @s skullposX

execute as @e[type=minecraft:wither_skull,tag=8,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY = @s playerposY
execute as @e[type=minecraft:wither_skull,tag=8,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY -= @s skullposY

execute as @e[type=minecraft:wither_skull,tag=8,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ = @s playerposZ
execute as @e[type=minecraft:wither_skull,tag=8,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ -= @s skullposZ

execute store result storage withers:launch skulllaunchmot.x double 0.0001 run scoreboard players get @e[type=wither_skull,tag=8,tag=deathtag,limit=1] skulllaunchmotX
execute store result storage withers:launch skulllaunchmot.y double 0.0001 run scoreboard players get @e[type=wither_skull,tag=8,tag=deathtag,limit=1] skulllaunchmotY
execute store result storage withers:launch skulllaunchmot.z double 0.0001 run scoreboard players get @e[type=wither_skull,tag=8,tag=deathtag,limit=1] skulllaunchmotZ


execute as @e[type=minecraft:wither_skull,tag=8,tag=deathtag] at @s run function wither:wither/phase2/enraged/skulls/launchskulls with storage withers:launch skulllaunchmot

##

execute as @e[type=minecraft:wither_skull,tag=9,tag=deathtag] at @s store result score @s skullposX run data get entity @s Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=9,tag=deathtag] at @s store result score @s skullposY run data get entity @s Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=9,tag=deathtag] at @s store result score @s skullposZ run data get entity @s Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=9,tag=deathtag] at @s store result score @s playerposX run data get entity @e[type=player,sort=nearest,limit=1] Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=9,tag=deathtag] at @s store result score @s playerposY run data get entity @e[type=player,sort=nearest,limit=1] Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=9,tag=deathtag] at @s run scoreboard players add @s playerposY 1320
execute as @e[type=minecraft:wither_skull,tag=9,tag=deathtag] at @s store result score @s playerposZ run data get entity @e[type=player,sort=nearest,limit=1] Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=9,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX = @s playerposX
execute as @e[type=minecraft:wither_skull,tag=9,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX -= @s skullposX

execute as @e[type=minecraft:wither_skull,tag=9,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY = @s playerposY
execute as @e[type=minecraft:wither_skull,tag=9,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY -= @s skullposY

execute as @e[type=minecraft:wither_skull,tag=9,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ = @s playerposZ
execute as @e[type=minecraft:wither_skull,tag=9,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ -= @s skullposZ

execute store result storage withers:launch skulllaunchmot.x double 0.0001 run scoreboard players get @e[type=wither_skull,tag=9,tag=deathtag,limit=1] skulllaunchmotX
execute store result storage withers:launch skulllaunchmot.y double 0.0001 run scoreboard players get @e[type=wither_skull,tag=9,tag=deathtag,limit=1] skulllaunchmotY
execute store result storage withers:launch skulllaunchmot.z double 0.0001 run scoreboard players get @e[type=wither_skull,tag=9,tag=deathtag,limit=1] skulllaunchmotZ


execute as @e[type=minecraft:wither_skull,tag=9,tag=deathtag] at @s run function wither:wither/phase2/enraged/skulls/launchskulls with storage withers:launch skulllaunchmot

##

execute as @e[type=minecraft:wither_skull,tag=10,tag=deathtag] at @s store result score @s skullposX run data get entity @s Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=10,tag=deathtag] at @s store result score @s skullposY run data get entity @s Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=10,tag=deathtag] at @s store result score @s skullposZ run data get entity @s Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=10,tag=deathtag] at @s store result score @s playerposX run data get entity @e[type=player,sort=nearest,limit=1] Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=10,tag=deathtag] at @s store result score @s playerposY run data get entity @e[type=player,sort=nearest,limit=1] Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=10,tag=deathtag] at @s run scoreboard players add @s playerposY 1320
execute as @e[type=minecraft:wither_skull,tag=10,tag=deathtag] at @s store result score @s playerposZ run data get entity @e[type=player,sort=nearest,limit=1] Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=10,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX = @s playerposX
execute as @e[type=minecraft:wither_skull,tag=10,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX -= @s skullposX

execute as @e[type=minecraft:wither_skull,tag=10,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY = @s playerposY
execute as @e[type=minecraft:wither_skull,tag=10,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY -= @s skullposY

execute as @e[type=minecraft:wither_skull,tag=10,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ = @s playerposZ
execute as @e[type=minecraft:wither_skull,tag=10,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ -= @s skullposZ

execute store result storage withers:launch skulllaunchmot.x double 0.0001 run scoreboard players get @e[type=wither_skull,tag=10,tag=deathtag,limit=1] skulllaunchmotX
execute store result storage withers:launch skulllaunchmot.y double 0.0001 run scoreboard players get @e[type=wither_skull,tag=10,tag=deathtag,limit=1] skulllaunchmotY
execute store result storage withers:launch skulllaunchmot.z double 0.0001 run scoreboard players get @e[type=wither_skull,tag=10,tag=deathtag,limit=1] skulllaunchmotZ


execute as @e[type=minecraft:wither_skull,tag=10,tag=deathtag] at @s run function wither:wither/phase2/enraged/skulls/launchskulls with storage withers:launch skulllaunchmot

##

execute as @e[type=minecraft:wither_skull,tag=11,tag=deathtag] at @s store result score @s skullposX run data get entity @s Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=11,tag=deathtag] at @s store result score @s skullposY run data get entity @s Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=11,tag=deathtag] at @s store result score @s skullposZ run data get entity @s Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=11,tag=deathtag] at @s store result score @s playerposX run data get entity @e[type=player,sort=nearest,limit=1] Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=11,tag=deathtag] at @s store result score @s playerposY run data get entity @e[type=player,sort=nearest,limit=1] Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=11,tag=deathtag] at @s run scoreboard players add @s playerposY 1320
execute as @e[type=minecraft:wither_skull,tag=11,tag=deathtag] at @s store result score @s playerposZ run data get entity @e[type=player,sort=nearest,limit=1] Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=11,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX = @s playerposX
execute as @e[type=minecraft:wither_skull,tag=11,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX -= @s skullposX

execute as @e[type=minecraft:wither_skull,tag=11,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY = @s playerposY
execute as @e[type=minecraft:wither_skull,tag=11,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY -= @s skullposY

execute as @e[type=minecraft:wither_skull,tag=11,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ = @s playerposZ
execute as @e[type=minecraft:wither_skull,tag=11,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ -= @s skullposZ

execute store result storage withers:launch skulllaunchmot.x double 0.0001 run scoreboard players get @e[type=wither_skull,tag=11,tag=deathtag,limit=1] skulllaunchmotX
execute store result storage withers:launch skulllaunchmot.y double 0.0001 run scoreboard players get @e[type=wither_skull,tag=11,tag=deathtag,limit=1] skulllaunchmotY
execute store result storage withers:launch skulllaunchmot.z double 0.0001 run scoreboard players get @e[type=wither_skull,tag=11,tag=deathtag,limit=1] skulllaunchmotZ


execute as @e[type=minecraft:wither_skull,tag=11,tag=deathtag] at @s run function wither:wither/phase2/enraged/skulls/launchskulls with storage withers:launch skulllaunchmot

##

execute as @e[type=minecraft:wither_skull,tag=12,tag=deathtag] at @s store result score @s skullposX run data get entity @s Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=12,tag=deathtag] at @s store result score @s skullposY run data get entity @s Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=12,tag=deathtag] at @s store result score @s skullposZ run data get entity @s Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=12,tag=deathtag] at @s store result score @s playerposX run data get entity @e[type=player,sort=nearest,limit=1] Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=12,tag=deathtag] at @s store result score @s playerposY run data get entity @e[type=player,sort=nearest,limit=1] Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=12,tag=deathtag] at @s run scoreboard players add @s playerposY 1320
execute as @e[type=minecraft:wither_skull,tag=12,tag=deathtag] at @s store result score @s playerposZ run data get entity @e[type=player,sort=nearest,limit=1] Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=12,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX = @s playerposX
execute as @e[type=minecraft:wither_skull,tag=12,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX -= @s skullposX

execute as @e[type=minecraft:wither_skull,tag=12,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY = @s playerposY
execute as @e[type=minecraft:wither_skull,tag=12,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY -= @s skullposY

execute as @e[type=minecraft:wither_skull,tag=12,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ = @s playerposZ
execute as @e[type=minecraft:wither_skull,tag=12,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ -= @s skullposZ

execute store result storage withers:launch skulllaunchmot.x double 0.0001 run scoreboard players get @e[type=wither_skull,tag=12,tag=deathtag,limit=1] skulllaunchmotX
execute store result storage withers:launch skulllaunchmot.y double 0.0001 run scoreboard players get @e[type=wither_skull,tag=12,tag=deathtag,limit=1] skulllaunchmotY
execute store result storage withers:launch skulllaunchmot.z double 0.0001 run scoreboard players get @e[type=wither_skull,tag=12,tag=deathtag,limit=1] skulllaunchmotZ


execute as @e[type=minecraft:wither_skull,tag=12,tag=deathtag] at @s run function wither:wither/phase2/enraged/skulls/launchskulls with storage withers:launch skulllaunchmot

##

execute as @e[type=minecraft:wither_skull,tag=13,tag=deathtag] at @s store result score @s skullposX run data get entity @s Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=13,tag=deathtag] at @s store result score @s skullposY run data get entity @s Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=13,tag=deathtag] at @s store result score @s skullposZ run data get entity @s Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=13,tag=deathtag] at @s store result score @s playerposX run data get entity @e[type=player,sort=nearest,limit=1] Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=13,tag=deathtag] at @s store result score @s playerposY run data get entity @e[type=player,sort=nearest,limit=1] Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=13,tag=deathtag] at @s run scoreboard players add @s playerposY 1320
execute as @e[type=minecraft:wither_skull,tag=13,tag=deathtag] at @s store result score @s playerposZ run data get entity @e[type=player,sort=nearest,limit=1] Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=13,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX = @s playerposX
execute as @e[type=minecraft:wither_skull,tag=13,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX -= @s skullposX

execute as @e[type=minecraft:wither_skull,tag=13,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY = @s playerposY
execute as @e[type=minecraft:wither_skull,tag=13,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY -= @s skullposY

execute as @e[type=minecraft:wither_skull,tag=13,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ = @s playerposZ
execute as @e[type=minecraft:wither_skull,tag=13,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ -= @s skullposZ

execute store result storage withers:launch skulllaunchmot.x double 0.0001 run scoreboard players get @e[type=wither_skull,tag=13,tag=deathtag,limit=1] skulllaunchmotX
execute store result storage withers:launch skulllaunchmot.y double 0.0001 run scoreboard players get @e[type=wither_skull,tag=13,tag=deathtag,limit=1] skulllaunchmotY
execute store result storage withers:launch skulllaunchmot.z double 0.0001 run scoreboard players get @e[type=wither_skull,tag=13,tag=deathtag,limit=1] skulllaunchmotZ


execute as @e[type=minecraft:wither_skull,tag=13,tag=deathtag] at @s run function wither:wither/phase2/enraged/skulls/launchskulls with storage withers:launch skulllaunchmot

##

execute as @e[type=minecraft:wither_skull,tag=14,tag=deathtag] at @s store result score @s skullposX run data get entity @s Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=14,tag=deathtag] at @s store result score @s skullposY run data get entity @s Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=14,tag=deathtag] at @s store result score @s skullposZ run data get entity @s Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=14,tag=deathtag] at @s store result score @s playerposX run data get entity @e[type=player,sort=nearest,limit=1] Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=14,tag=deathtag] at @s store result score @s playerposY run data get entity @e[type=player,sort=nearest,limit=1] Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=14,tag=deathtag] at @s run scoreboard players add @s playerposY 1320
execute as @e[type=minecraft:wither_skull,tag=14,tag=deathtag] at @s store result score @s playerposZ run data get entity @e[type=player,sort=nearest,limit=1] Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=14,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX = @s playerposX
execute as @e[type=minecraft:wither_skull,tag=14,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX -= @s skullposX

execute as @e[type=minecraft:wither_skull,tag=14,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY = @s playerposY
execute as @e[type=minecraft:wither_skull,tag=14,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY -= @s skullposY

execute as @e[type=minecraft:wither_skull,tag=14,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ = @s playerposZ
execute as @e[type=minecraft:wither_skull,tag=14,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ -= @s skullposZ

execute store result storage withers:launch skulllaunchmot.x double 0.0001 run scoreboard players get @e[type=wither_skull,tag=14,tag=deathtag,limit=1] skulllaunchmotX
execute store result storage withers:launch skulllaunchmot.y double 0.0001 run scoreboard players get @e[type=wither_skull,tag=14,tag=deathtag,limit=1] skulllaunchmotY
execute store result storage withers:launch skulllaunchmot.z double 0.0001 run scoreboard players get @e[type=wither_skull,tag=14,tag=deathtag,limit=1] skulllaunchmotZ


execute as @e[type=minecraft:wither_skull,tag=14,tag=deathtag] at @s run function wither:wither/phase2/enraged/skulls/launchskulls with storage withers:launch skulllaunchmot

##

execute as @e[type=minecraft:wither_skull,tag=15,tag=deathtag] at @s store result score @s skullposX run data get entity @s Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=15,tag=deathtag] at @s store result score @s skullposY run data get entity @s Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=15,tag=deathtag] at @s store result score @s skullposZ run data get entity @s Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=15,tag=deathtag] at @s store result score @s playerposX run data get entity @e[type=player,sort=nearest,limit=1] Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=15,tag=deathtag] at @s store result score @s playerposY run data get entity @e[type=player,sort=nearest,limit=1] Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=15,tag=deathtag] at @s run scoreboard players add @s playerposY 1320
execute as @e[type=minecraft:wither_skull,tag=15,tag=deathtag] at @s store result score @s playerposZ run data get entity @e[type=player,sort=nearest,limit=1] Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=15,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX = @s playerposX
execute as @e[type=minecraft:wither_skull,tag=15,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX -= @s skullposX

execute as @e[type=minecraft:wither_skull,tag=15,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY = @s playerposY
execute as @e[type=minecraft:wither_skull,tag=15,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY -= @s skullposY

execute as @e[type=minecraft:wither_skull,tag=15,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ = @s playerposZ
execute as @e[type=minecraft:wither_skull,tag=15,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ -= @s skullposZ

execute store result storage withers:launch skulllaunchmot.x double 0.0001 run scoreboard players get @e[type=wither_skull,tag=15,tag=deathtag,limit=1] skulllaunchmotX
execute store result storage withers:launch skulllaunchmot.y double 0.0001 run scoreboard players get @e[type=wither_skull,tag=15,tag=deathtag,limit=1] skulllaunchmotY
execute store result storage withers:launch skulllaunchmot.z double 0.0001 run scoreboard players get @e[type=wither_skull,tag=15,tag=deathtag,limit=1] skulllaunchmotZ


execute as @e[type=minecraft:wither_skull,tag=15,tag=deathtag] at @s run function wither:wither/phase2/enraged/skulls/launchskulls with storage withers:launch skulllaunchmot

##

execute as @e[type=minecraft:wither_skull,tag=16,tag=deathtag] at @s store result score @s skullposX run data get entity @s Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=16,tag=deathtag] at @s store result score @s skullposY run data get entity @s Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=16,tag=deathtag] at @s store result score @s skullposZ run data get entity @s Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=16,tag=deathtag] at @s store result score @s playerposX run data get entity @e[type=player,sort=nearest,limit=1] Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=16,tag=deathtag] at @s store result score @s playerposY run data get entity @e[type=player,sort=nearest,limit=1] Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=16,tag=deathtag] at @s run scoreboard players add @s playerposY 1320
execute as @e[type=minecraft:wither_skull,tag=16,tag=deathtag] at @s store result score @s playerposZ run data get entity @e[type=player,sort=nearest,limit=1] Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=16,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX = @s playerposX
execute as @e[type=minecraft:wither_skull,tag=16,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX -= @s skullposX

execute as @e[type=minecraft:wither_skull,tag=16,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY = @s playerposY
execute as @e[type=minecraft:wither_skull,tag=16,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY -= @s skullposY

execute as @e[type=minecraft:wither_skull,tag=16,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ = @s playerposZ
execute as @e[type=minecraft:wither_skull,tag=16,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ -= @s skullposZ

execute store result storage withers:launch skulllaunchmot.x double 0.0001 run scoreboard players get @e[type=wither_skull,tag=16,tag=deathtag,limit=1] skulllaunchmotX
execute store result storage withers:launch skulllaunchmot.y double 0.0001 run scoreboard players get @e[type=wither_skull,tag=16,tag=deathtag,limit=1] skulllaunchmotY
execute store result storage withers:launch skulllaunchmot.z double 0.0001 run scoreboard players get @e[type=wither_skull,tag=16,tag=deathtag,limit=1] skulllaunchmotZ


execute as @e[type=minecraft:wither_skull,tag=16,tag=deathtag] at @s run function wither:wither/phase2/enraged/skulls/launchskulls with storage withers:launch skulllaunchmot

##

execute as @e[type=minecraft:wither_skull,tag=17,tag=deathtag] at @s store result score @s skullposX run data get entity @s Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=17,tag=deathtag] at @s store result score @s skullposY run data get entity @s Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=17,tag=deathtag] at @s store result score @s skullposZ run data get entity @s Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=17,tag=deathtag] at @s store result score @s playerposX run data get entity @e[type=player,sort=nearest,limit=1] Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=17,tag=deathtag] at @s store result score @s playerposY run data get entity @e[type=player,sort=nearest,limit=1] Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=17,tag=deathtag] at @s run scoreboard players add @s playerposY 1320
execute as @e[type=minecraft:wither_skull,tag=17,tag=deathtag] at @s store result score @s playerposZ run data get entity @e[type=player,sort=nearest,limit=1] Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=17,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX = @s playerposX
execute as @e[type=minecraft:wither_skull,tag=17,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX -= @s skullposX

execute as @e[type=minecraft:wither_skull,tag=17,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY = @s playerposY
execute as @e[type=minecraft:wither_skull,tag=17,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY -= @s skullposY

execute as @e[type=minecraft:wither_skull,tag=17,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ = @s playerposZ
execute as @e[type=minecraft:wither_skull,tag=17,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ -= @s skullposZ

execute store result storage withers:launch skulllaunchmot.x double 0.0001 run scoreboard players get @e[type=wither_skull,tag=17,tag=deathtag,limit=1] skulllaunchmotX
execute store result storage withers:launch skulllaunchmot.y double 0.0001 run scoreboard players get @e[type=wither_skull,tag=17,tag=deathtag,limit=1] skulllaunchmotY
execute store result storage withers:launch skulllaunchmot.z double 0.0001 run scoreboard players get @e[type=wither_skull,tag=17,tag=deathtag,limit=1] skulllaunchmotZ


execute as @e[type=minecraft:wither_skull,tag=17,tag=deathtag] at @s run function wither:wither/phase2/enraged/skulls/launchskulls with storage withers:launch skulllaunchmot

##

execute as @e[type=minecraft:wither_skull,tag=18,tag=deathtag] at @s store result score @s skullposX run data get entity @s Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=18,tag=deathtag] at @s store result score @s skullposY run data get entity @s Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=18,tag=deathtag] at @s store result score @s skullposZ run data get entity @s Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=18,tag=deathtag] at @s store result score @s playerposX run data get entity @e[type=player,sort=nearest,limit=1] Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=18,tag=deathtag] at @s store result score @s playerposY run data get entity @e[type=player,sort=nearest,limit=1] Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=18,tag=deathtag] at @s run scoreboard players add @s playerposY 1320
execute as @e[type=minecraft:wither_skull,tag=18,tag=deathtag] at @s store result score @s playerposZ run data get entity @e[type=player,sort=nearest,limit=1] Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=18,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX = @s playerposX
execute as @e[type=minecraft:wither_skull,tag=18,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX -= @s skullposX

execute as @e[type=minecraft:wither_skull,tag=18,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY = @s playerposY
execute as @e[type=minecraft:wither_skull,tag=18,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY -= @s skullposY

execute as @e[type=minecraft:wither_skull,tag=18,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ = @s playerposZ
execute as @e[type=minecraft:wither_skull,tag=18,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ -= @s skullposZ

execute store result storage withers:launch skulllaunchmot.x double 0.0001 run scoreboard players get @e[type=wither_skull,tag=18,tag=deathtag,limit=1] skulllaunchmotX
execute store result storage withers:launch skulllaunchmot.y double 0.0001 run scoreboard players get @e[type=wither_skull,tag=18,tag=deathtag,limit=1] skulllaunchmotY
execute store result storage withers:launch skulllaunchmot.z double 0.0001 run scoreboard players get @e[type=wither_skull,tag=18,tag=deathtag,limit=1] skulllaunchmotZ


execute as @e[type=minecraft:wither_skull,tag=18,tag=deathtag] at @s run function wither:wither/phase2/enraged/skulls/launchskulls with storage withers:launch skulllaunchmot

##

execute as @e[type=minecraft:wither_skull,tag=19,tag=deathtag] at @s store result score @s skullposX run data get entity @s Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=19,tag=deathtag] at @s store result score @s skullposY run data get entity @s Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=19,tag=deathtag] at @s store result score @s skullposZ run data get entity @s Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=19,tag=deathtag] at @s store result score @s playerposX run data get entity @e[type=player,sort=nearest,limit=1] Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=19,tag=deathtag] at @s store result score @s playerposY run data get entity @e[type=player,sort=nearest,limit=1] Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=19,tag=deathtag] at @s run scoreboard players add @s playerposY 1320
execute as @e[type=minecraft:wither_skull,tag=19,tag=deathtag] at @s store result score @s playerposZ run data get entity @e[type=player,sort=nearest,limit=1] Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=19,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX = @s playerposX
execute as @e[type=minecraft:wither_skull,tag=19,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX -= @s skullposX

execute as @e[type=minecraft:wither_skull,tag=19,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY = @s playerposY
execute as @e[type=minecraft:wither_skull,tag=19,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY -= @s skullposY

execute as @e[type=minecraft:wither_skull,tag=19,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ = @s playerposZ
execute as @e[type=minecraft:wither_skull,tag=19,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ -= @s skullposZ

execute store result storage withers:launch skulllaunchmot.x double 0.0001 run scoreboard players get @e[type=wither_skull,tag=19,tag=deathtag,limit=1] skulllaunchmotX
execute store result storage withers:launch skulllaunchmot.y double 0.0001 run scoreboard players get @e[type=wither_skull,tag=19,tag=deathtag,limit=1] skulllaunchmotY
execute store result storage withers:launch skulllaunchmot.z double 0.0001 run scoreboard players get @e[type=wither_skull,tag=19,tag=deathtag,limit=1] skulllaunchmotZ


execute as @e[type=minecraft:wither_skull,tag=19,tag=deathtag] at @s run function wither:wither/phase2/enraged/skulls/launchskulls with storage withers:launch skulllaunchmot

##

execute as @e[type=minecraft:wither_skull,tag=20,tag=deathtag] at @s store result score @s skullposX run data get entity @s Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=20,tag=deathtag] at @s store result score @s skullposY run data get entity @s Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=20,tag=deathtag] at @s store result score @s skullposZ run data get entity @s Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=20,tag=deathtag] at @s store result score @s playerposX run data get entity @e[type=player,sort=nearest,limit=1] Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=20,tag=deathtag] at @s store result score @s playerposY run data get entity @e[type=player,sort=nearest,limit=1] Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=20,tag=deathtag] at @s run scoreboard players add @s playerposY 1320
execute as @e[type=minecraft:wither_skull,tag=20,tag=deathtag] at @s store result score @s playerposZ run data get entity @e[type=player,sort=nearest,limit=1] Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=20,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX = @s playerposX
execute as @e[type=minecraft:wither_skull,tag=20,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX -= @s skullposX

execute as @e[type=minecraft:wither_skull,tag=20,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY = @s playerposY
execute as @e[type=minecraft:wither_skull,tag=20,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY -= @s skullposY

execute as @e[type=minecraft:wither_skull,tag=20,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ = @s playerposZ
execute as @e[type=minecraft:wither_skull,tag=20,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ -= @s skullposZ

execute store result storage withers:launch skulllaunchmot.x double 0.0001 run scoreboard players get @e[type=wither_skull,tag=20,tag=deathtag,limit=1] skulllaunchmotX
execute store result storage withers:launch skulllaunchmot.y double 0.0001 run scoreboard players get @e[type=wither_skull,tag=20,tag=deathtag,limit=1] skulllaunchmotY
execute store result storage withers:launch skulllaunchmot.z double 0.0001 run scoreboard players get @e[type=wither_skull,tag=20,tag=deathtag,limit=1] skulllaunchmotZ


execute as @e[type=minecraft:wither_skull,tag=20,tag=deathtag] at @s run function wither:wither/phase2/enraged/skulls/launchskulls with storage withers:launch skulllaunchmot

##

execute as @e[type=minecraft:wither_skull,tag=21,tag=deathtag] at @s store result score @s skullposX run data get entity @s Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=21,tag=deathtag] at @s store result score @s skullposY run data get entity @s Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=21,tag=deathtag] at @s store result score @s skullposZ run data get entity @s Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=21,tag=deathtag] at @s store result score @s playerposX run data get entity @e[type=player,sort=nearest,limit=1] Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=21,tag=deathtag] at @s store result score @s playerposY run data get entity @e[type=player,sort=nearest,limit=1] Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=21,tag=deathtag] at @s run scoreboard players add @s playerposY 1320
execute as @e[type=minecraft:wither_skull,tag=21,tag=deathtag] at @s store result score @s playerposZ run data get entity @e[type=player,sort=nearest,limit=1] Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=21,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX = @s playerposX
execute as @e[type=minecraft:wither_skull,tag=21,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX -= @s skullposX

execute as @e[type=minecraft:wither_skull,tag=21,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY = @s playerposY
execute as @e[type=minecraft:wither_skull,tag=21,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY -= @s skullposY

execute as @e[type=minecraft:wither_skull,tag=21,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ = @s playerposZ
execute as @e[type=minecraft:wither_skull,tag=21,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ -= @s skullposZ

execute store result storage withers:launch skulllaunchmot.x double 0.0001 run scoreboard players get @e[type=wither_skull,tag=21,tag=deathtag,limit=1] skulllaunchmotX
execute store result storage withers:launch skulllaunchmot.y double 0.0001 run scoreboard players get @e[type=wither_skull,tag=21,tag=deathtag,limit=1] skulllaunchmotY
execute store result storage withers:launch skulllaunchmot.z double 0.0001 run scoreboard players get @e[type=wither_skull,tag=21,tag=deathtag,limit=1] skulllaunchmotZ


execute as @e[type=minecraft:wither_skull,tag=21,tag=deathtag] at @s run function wither:wither/phase2/enraged/skulls/launchskulls with storage withers:launch skulllaunchmot

##

execute as @e[type=minecraft:wither_skull,tag=22,tag=deathtag] at @s store result score @s skullposX run data get entity @s Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=22,tag=deathtag] at @s store result score @s skullposY run data get entity @s Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=22,tag=deathtag] at @s store result score @s skullposZ run data get entity @s Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=22,tag=deathtag] at @s store result score @s playerposX run data get entity @e[type=player,sort=nearest,limit=1] Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=22,tag=deathtag] at @s store result score @s playerposY run data get entity @e[type=player,sort=nearest,limit=1] Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=22,tag=deathtag] at @s run scoreboard players add @s playerposY 1320
execute as @e[type=minecraft:wither_skull,tag=22,tag=deathtag] at @s store result score @s playerposZ run data get entity @e[type=player,sort=nearest,limit=1] Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=22,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX = @s playerposX
execute as @e[type=minecraft:wither_skull,tag=22,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX -= @s skullposX

execute as @e[type=minecraft:wither_skull,tag=22,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY = @s playerposY
execute as @e[type=minecraft:wither_skull,tag=22,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY -= @s skullposY

execute as @e[type=minecraft:wither_skull,tag=22,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ = @s playerposZ
execute as @e[type=minecraft:wither_skull,tag=22,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ -= @s skullposZ

execute store result storage withers:launch skulllaunchmot.x double 0.0001 run scoreboard players get @e[type=wither_skull,tag=22,tag=deathtag,limit=1] skulllaunchmotX
execute store result storage withers:launch skulllaunchmot.y double 0.0001 run scoreboard players get @e[type=wither_skull,tag=22,tag=deathtag,limit=1] skulllaunchmotY
execute store result storage withers:launch skulllaunchmot.z double 0.0001 run scoreboard players get @e[type=wither_skull,tag=22,tag=deathtag,limit=1] skulllaunchmotZ


execute as @e[type=minecraft:wither_skull,tag=22,tag=deathtag] at @s run function wither:wither/phase2/enraged/skulls/launchskulls with storage withers:launch skulllaunchmot

##

execute as @e[type=minecraft:wither_skull,tag=23,tag=deathtag] at @s store result score @s skullposX run data get entity @s Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=23,tag=deathtag] at @s store result score @s skullposY run data get entity @s Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=23,tag=deathtag] at @s store result score @s skullposZ run data get entity @s Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=23,tag=deathtag] at @s store result score @s playerposX run data get entity @e[type=player,sort=nearest,limit=1] Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=23,tag=deathtag] at @s store result score @s playerposY run data get entity @e[type=player,sort=nearest,limit=1] Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=23,tag=deathtag] at @s run scoreboard players add @s playerposY 1320
execute as @e[type=minecraft:wither_skull,tag=23,tag=deathtag] at @s store result score @s playerposZ run data get entity @e[type=player,sort=nearest,limit=1] Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=23,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX = @s playerposX
execute as @e[type=minecraft:wither_skull,tag=23,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX -= @s skullposX

execute as @e[type=minecraft:wither_skull,tag=23,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY = @s playerposY
execute as @e[type=minecraft:wither_skull,tag=23,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY -= @s skullposY

execute as @e[type=minecraft:wither_skull,tag=23,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ = @s playerposZ
execute as @e[type=minecraft:wither_skull,tag=23,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ -= @s skullposZ

execute store result storage withers:launch skulllaunchmot.x double 0.0001 run scoreboard players get @e[type=wither_skull,tag=23,tag=deathtag,limit=1] skulllaunchmotX
execute store result storage withers:launch skulllaunchmot.y double 0.0001 run scoreboard players get @e[type=wither_skull,tag=23,tag=deathtag,limit=1] skulllaunchmotY
execute store result storage withers:launch skulllaunchmot.z double 0.0001 run scoreboard players get @e[type=wither_skull,tag=23,tag=deathtag,limit=1] skulllaunchmotZ


execute as @e[type=minecraft:wither_skull,tag=23,tag=deathtag] at @s run function wither:wither/phase2/enraged/skulls/launchskulls with storage withers:launch skulllaunchmot

##

execute as @e[type=minecraft:wither_skull,tag=24,tag=deathtag] at @s store result score @s skullposX run data get entity @s Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=24,tag=deathtag] at @s store result score @s skullposY run data get entity @s Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=24,tag=deathtag] at @s store result score @s skullposZ run data get entity @s Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=24,tag=deathtag] at @s store result score @s playerposX run data get entity @e[type=player,sort=nearest,limit=1] Pos[0] 1000
execute as @e[type=minecraft:wither_skull,tag=24,tag=deathtag] at @s store result score @s playerposY run data get entity @e[type=player,sort=nearest,limit=1] Pos[1] 1000
execute as @e[type=minecraft:wither_skull,tag=24,tag=deathtag] at @s run scoreboard players add @s playerposY 1320
execute as @e[type=minecraft:wither_skull,tag=24,tag=deathtag] at @s store result score @s playerposZ run data get entity @e[type=player,sort=nearest,limit=1] Pos[2] 1000

execute as @e[type=minecraft:wither_skull,tag=24,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX = @s playerposX
execute as @e[type=minecraft:wither_skull,tag=24,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotX -= @s skullposX

execute as @e[type=minecraft:wither_skull,tag=24,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY = @s playerposY
execute as @e[type=minecraft:wither_skull,tag=24,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotY -= @s skullposY

execute as @e[type=minecraft:wither_skull,tag=24,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ = @s playerposZ
execute as @e[type=minecraft:wither_skull,tag=24,tag=deathtag] at @s run scoreboard players operation @s skulllaunchmotZ -= @s skullposZ

execute store result storage withers:launch skulllaunchmot.x double 0.0001 run scoreboard players get @e[type=wither_skull,tag=24,tag=deathtag,limit=1] skulllaunchmotX
execute store result storage withers:launch skulllaunchmot.y double 0.0001 run scoreboard players get @e[type=wither_skull,tag=24,tag=deathtag,limit=1] skulllaunchmotY
execute store result storage withers:launch skulllaunchmot.z double 0.0001 run scoreboard players get @e[type=wither_skull,tag=24,tag=deathtag,limit=1] skulllaunchmotZ


execute as @e[type=minecraft:wither_skull,tag=24,tag=deathtag] at @s run function wither:wither/phase2/enraged/skulls/launchskulls with storage withers:launch skulllaunchmot

schedule function wither:wither/phase2/enraged/skulls/killskulls 2s
