execute if score witherCheck witherCheck matches 1 unless score witherCount witherCount matches 1.. run function wither:wither/fix
execute if score witherCount witherCount matches 1.. run scoreboard players set witherCheck witherCheck 1
execute unless score witherCount witherCount matches 1.. run scoreboard players set witherCheck witherCheck 0

execute unless entity @e[type=item,sort=nearest,tag=nether_star] run schedule function wither:wither_check 1t
