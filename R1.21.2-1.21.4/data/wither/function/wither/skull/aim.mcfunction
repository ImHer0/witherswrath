# Ran as/at a wither skull: sends it towards the nearest player
# Needs wither:wither/skull/cache_players to have run first
execute unless score @p[gamemode=!spectator] playerposX = @p[gamemode=!spectator] playerposX run return 0

data modify storage wither:aim pos set from entity @s Pos
execute store result score @s skullposX run data get storage wither:aim pos[0] 1000
execute store result score @s skullposY run data get storage wither:aim pos[1] 1000
execute store result score @s skullposZ run data get storage wither:aim pos[2] 1000

scoreboard players operation @s skulllaunchmotX = @p[gamemode=!spectator] playerposX
scoreboard players operation @s skulllaunchmotX -= @s skullposX
scoreboard players operation @s skulllaunchmotY = @p[gamemode=!spectator] playerposY
scoreboard players operation @s skulllaunchmotY -= @s skullposY
scoreboard players operation @s skulllaunchmotZ = @p[gamemode=!spectator] playerposZ
scoreboard players operation @s skulllaunchmotZ -= @s skullposZ

data modify storage wither:aim motion set value [0d,0d,0d]
execute store result storage wither:aim motion[0] double 0.0001 run scoreboard players get @s skulllaunchmotX
execute store result storage wither:aim motion[1] double 0.0001 run scoreboard players get @s skulllaunchmotY
execute store result storage wither:aim motion[2] double 0.0001 run scoreboard players get @s skulllaunchmotZ
data modify entity @s Motion set from storage wither:aim motion
