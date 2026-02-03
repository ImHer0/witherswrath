execute if score witherCheck witherCheck matches 1 unless entity @e[type=wither,limit=1,sort=nearest] run function wither:wither/fix
execute if entity @e[type=wither] run scoreboard players set witherCheck witherCheck 1
execute unless entity @e[type=wither] run scoreboard players set witherCheck witherCheck 0

execute unless entity @e[type=item,sort=nearest,tag=nether_star] run schedule function wither:wither_check 1t