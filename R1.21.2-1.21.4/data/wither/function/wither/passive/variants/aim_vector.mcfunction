# Macro: speed. Uses the current position/rotation; leaves the Motion list in storage wither:aim motion
summon minecraft:marker ~ ~ ~ {Tags:["wMiniFrom"]}
$summon minecraft:marker ^ ^ ^$(speed) {Tags:["wMiniTo"]}
data modify storage wither:aim from set from entity @e[type=minecraft:marker,tag=wMiniFrom,limit=1] Pos
data modify storage wither:aim to set from entity @e[type=minecraft:marker,tag=wMiniTo,limit=1] Pos
kill @e[type=minecraft:marker,tag=wMiniFrom]
kill @e[type=minecraft:marker,tag=wMiniTo]

execute store result score #ax wither.scale run data get storage wither:aim from[0] 1000
execute store result score #ay wither.scale run data get storage wither:aim from[1] 1000
execute store result score #az wither.scale run data get storage wither:aim from[2] 1000
execute store result score #bx wither.scale run data get storage wither:aim to[0] 1000
execute store result score #by wither.scale run data get storage wither:aim to[1] 1000
execute store result score #bz wither.scale run data get storage wither:aim to[2] 1000
scoreboard players operation #bx wither.scale -= #ax wither.scale
scoreboard players operation #by wither.scale -= #ay wither.scale
scoreboard players operation #bz wither.scale -= #az wither.scale

data modify storage wither:aim motion set value [0d,0d,0d]
execute store result storage wither:aim motion[0] double 0.001 run scoreboard players get #bx wither.scale
execute store result storage wither:aim motion[1] double 0.001 run scoreboard players get #by wither.scale
execute store result storage wither:aim motion[2] double 0.001 run scoreboard players get #bz wither.scale
