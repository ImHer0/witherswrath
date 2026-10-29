# Fires every enraged ring skull at the nearest player
# (was 650 lines with 72 player NBT reads in one tick)
function wither:wither/skull/cache_players
execute as @e[type=minecraft:wither_skull,tag=deathtag] at @s run function wither:wither/skull/aim_launch

schedule function wither:wither/phase2/enraged/skulls/killskulls 2s
