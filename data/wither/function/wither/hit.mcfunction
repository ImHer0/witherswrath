# Ran by advancements for summoning the Wither
advancement revoke @s only wither:wither/hit_wither

execute as @e[type=wither,scores={Health=..20}] if data storage wither:options {toggledestruction:1} at @s run summon tnt ~ ~ ~
