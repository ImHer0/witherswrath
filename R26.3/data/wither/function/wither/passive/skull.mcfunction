# Sorts each new skull once; this is the only NBT read in the loop
execute as @e[type=minecraft:wither_skull,tag=!wsSeen] run function wither:wither/passive/skull_sort

# SKULL BUFF
execute as @e[type=minecraft:wither_skull,tag=wsBlack] at @s anchored eyes positioned ^ ^ ^ unless block ^ ^ ^1 air unless block ^ ^ ^1 water run function wither:wither/passive/skull_black

# DANGEROUS SKULL BUFF
execute as @e[type=minecraft:wither_skull,tag=wsBlue] at @s anchored eyes positioned ^ ^ ^ unless block ^ ^ ^-1.5 air unless block ^ ^ ^-1.5 water run function wither:wither/passive/skull_blue

# Explosions knock skulls into the sky where they fly forever: remove any that get far from the Wither
execute at @e[type=minecraft:wither,tag=theWither,limit=1] run kill @e[type=minecraft:wither_skull,distance=96..]

execute if score witherCount witherCount matches 1.. run schedule function wither:wither/passive/skull 1t
