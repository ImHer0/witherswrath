# Ran every tick as the enraged Wither
# Blocks healing unless the Wither hasn't been hit for 5 seconds (100 ticks)
# wither.healCap = highest Health it's allowed to have (x100 to keep decimals)
# wither.noHit   = ticks since it last took damage

execute store result score #now wither.healCap run data get entity @s Health 100
execute unless score @s wither.healCap matches 1.. run scoreboard players operation @s wither.healCap = #now wither.healCap

# Took damage -> restart the 5s timer
execute if score #now wither.healCap < @s wither.healCap run scoreboard players set @s wither.noHit 0
scoreboard players add @s wither.noHit 1

# Not hit for 5s -> healing allowed, cap follows Health up
execute if score @s wither.noHit matches 100.. run scoreboard players operation @s wither.healCap = #now wither.healCap

# New damage lowers the cap
scoreboard players operation @s wither.healCap < #now wither.healCap

# Any healing inside the 5s window gets undone
execute if score #now wither.healCap > @s wither.healCap store result entity @s Health float 0.01 run scoreboard players get @s wither.healCap
