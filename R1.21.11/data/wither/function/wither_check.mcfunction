execute if score witherCheck witherCheck matches 1 unless score witherCount witherCount matches 1.. run function wither:wither/fix
execute if score witherCount witherCount matches 1.. run scoreboard players set witherCheck witherCheck 1
execute unless score witherCount witherCount matches 1.. run scoreboard players set witherCheck witherCheck 0
# Only keeps looping during a fight (it used to run every tick forever)
execute if score witherCount witherCount matches 1.. unless entity @e[type=minecraft:item,tag=nether_star,limit=1] run schedule function wither:wither_check 1t
