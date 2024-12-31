# Ran by advancements for attacking the Wither
advancement revoke @s only wither:wither/hit2_wither

execute as @e[type=wither,limit=1,sort=nearest] store result score @s Health run data get entity @s Health
execute as @e[type=wither,scores={Health=..300}] at @s run function wither:wither/midpoint/midpoint
