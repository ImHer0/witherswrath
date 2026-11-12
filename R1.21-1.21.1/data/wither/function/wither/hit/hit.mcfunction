# Ran by advancements for summoning the Wither
advancement revoke @s only wither:wither/hit_wither

# Execute as the nearest Wither to calculate ITS health change
# Remembers who hit so the damage is credited to them in the fight report
execute if entity @s[type=player] run tag @s add wither.hitter
execute if entity @s[type=player] run tag @s add wither.fighter
execute if entity @s[type=player] run scoreboard players add @s wither.dmg 0
execute if entity @s[type=player] run scoreboard players add @s wither.deaths 0

execute as @e[type=wither,sort=nearest,limit=1] at @s run function wither:wither/hit/process_damage

tag @s remove wither.hitter