# Ran by advancements for attacking the Wither
advancement revoke @s only wither:wither/hit2_wither

execute as @e[type=wither,limit=1,sort=nearest] store result score @s Health run data get entity @s Health
# Once per fight, and only for the fight Wither that still has its Wither tag
execute as @e[type=minecraft:wither,tag=Wither,scores={Health=..300}] unless score #midDone wither.stats matches 1 at @s run function wither:wither/midpoint/midpoint
