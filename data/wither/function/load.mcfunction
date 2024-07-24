scoreboard objectives add witherCount dummy
scoreboard players set witherCount witherCount 0
scoreboard objectives add checkHealth dummy
execute unless score @s wTime matches 2 run scoreboard players set @s wTime 2

execute unless data storage wither:options {initialized:1} run function wither:initialize_storage

