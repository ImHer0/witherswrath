# Ran by advancements for attacking the Wither
advancement revoke @s only wither:wither/hit3_wither

execute as @e[type=wither,scores={Health=..260}] at @s run scoreboard players set wCharge wcharge1 2
execute as @e[type=wither,scores={Health=..250}] if data storage wither:options {togglecharge:1} at @s run function wither:wither/charge/chargepre