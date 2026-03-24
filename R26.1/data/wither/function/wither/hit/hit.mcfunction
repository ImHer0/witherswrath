# Ran by advancements for summoning the Wither
advancement revoke @s only wither:wither/hit_wither

# Execute as the nearest Wither to calculate ITS health change
execute as @e[type=wither,sort=nearest,limit=1] at @s run function wither:wither/hit/process_damage