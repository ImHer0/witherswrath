# Prints fighters from most to least damage, one per loop

scoreboard players set #max wither.stats -1
execute as @a[tag=wither.fighter,tag=!wither.ranked] run scoreboard players operation #max wither.stats > @s wither.dmg
execute if score #max wither.stats matches ..-1 run return 0

scoreboard players add #rank wither.stats 1
execute as @a[tag=wither.fighter,tag=!wither.ranked] if score @s wither.dmg = #max wither.stats run tag @s add wither.ranknext
execute as @a[tag=wither.ranknext,limit=1] run function wither:stats/rank_line
tag @a remove wither.ranknext

function wither:stats/rank_loop
