# Ran by advancements for summoning the Wither
advancement revoke @s only wither:wither/hit_wither

execute if entity @e[type=wither,scores={Health=..50}] run tp @e[type=wither,limit=1,sort=nearest] @e[type=player,limit=1,sort=nearest]
execute if entity @e[type=wither,scores={Health=..20}] at @s run summon tnt ~ ~ ~
