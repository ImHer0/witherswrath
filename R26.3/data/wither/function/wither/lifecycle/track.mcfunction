# Ran as the fight Wither every 5 ticks: one NBT read gives its health (phase checks) and position (vanished check)
scoreboard players set #lost wither.stats 0
data modify storage wither:fight e set from entity @s
execute store result score @s Health run data get storage wither:fight e.Health
execute store result storage wither:fight last.x int 1 run data get storage wither:fight e.Pos[0]
execute store result storage wither:fight last.y int 1 run data get storage wither:fight e.Pos[1]
execute store result storage wither:fight last.z int 1 run data get storage wither:fight e.Pos[2]
