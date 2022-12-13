# Ran by advancements for attacking the Wither
advancement revoke @s only wither:wither/hit3_wither

execute as @e[type=wither,scores={Health=..260}] at @s run scoreboard players set wCharge wcharge1 2
execute as @e[type=wither,scores={Health=..250}] at @s run function wither:wither/wither_chargepre