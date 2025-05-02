scoreboard objectives add witherCheck dummy

execute if score witherCheck witherCheck matches 1 unless entity @e[type=wither,limit=1,sort=nearest] run function wither:wither/fix
execute if entity @e[type=wither,limit=1,sort=nearest] run scoreboard players set @s witherCheck 1
execute unless entity @e[type=wither,limit=1,sort=nearest] run scoreboard players set @s witherCheck 0

execute unless entity @e[type=item,sort=nearest,tag=nether_star,limit=1] run schedule function wither:wither_check 3s