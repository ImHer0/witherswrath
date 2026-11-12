# PREVENTS MORE THAN 1 WITHER ALIVE
execute if score witherCount witherCount matches 2.. run function wither:wither/lifecycle/check

# Skeleton variant abilities (returns right away when none exist)
function wither:wither/passive/variants/tick

# Everything else only matters during a fight
execute if score witherCount witherCount matches 1.. run function wither:5tick_fight

schedule function wither:5tick 5t
