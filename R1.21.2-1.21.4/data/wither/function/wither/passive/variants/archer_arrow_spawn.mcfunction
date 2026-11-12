# Spawns one extra arrow with motion (#x, #my, #z), all x10000 (#x/#z also x10000 from the rotation)
data modify storage wither:aim arrow.Motion set value [0d,0d,0d]
execute store result storage wither:aim arrow.Motion[0] double 0.00000001 run scoreboard players get #x wither.scale
execute store result storage wither:aim arrow.Motion[1] double 0.0001 run scoreboard players get #my wither.scale
execute store result storage wither:aim arrow.Motion[2] double 0.00000001 run scoreboard players get #z wither.scale
summon minecraft:arrow ~ ~ ~ {Tags:["wArrowSeen","wArrowNew"]}
data modify entity @e[type=minecraft:arrow,tag=wArrowNew,limit=1] {} merge from storage wither:aim arrow
tag @e[type=minecraft:arrow,tag=wArrowNew] remove wArrowNew
