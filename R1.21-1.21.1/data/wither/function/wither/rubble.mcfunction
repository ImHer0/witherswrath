# Ran once per item dropped near the fight: terrain blocks the fight broke get 1 minute left instead of 5.
# Anything that isn't plain rubble (player loot, the nether star...) is left alone
tag @s add wDrop
execute if items entity @s contents #wither:rubble run data merge entity @s {Age:4800s}
