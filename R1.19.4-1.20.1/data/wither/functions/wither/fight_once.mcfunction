# Ran by advancements for summoning the Wither
advancement revoke @s only wither:wither/summoned_wither

# Keeps count of how many withers are alive
execute at @e[type=minecraft:player,limit=1,sort=random] as @s run scoreboard players add witherCount witherCount 1

execute unless score wfight wfight matches 1 run function wither:wither/fight_start

scoreboard players set wfight wfight 1