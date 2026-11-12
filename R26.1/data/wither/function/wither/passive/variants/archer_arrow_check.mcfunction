# Ran as/at a new arrow near a Soulpiercer
tag @s add wArrowSeen
execute store success score #own wither.scale on origin if entity @s[tag=wArcherV]
execute unless score #own wither.scale matches 1 run return 0

# Copy what the extra arrows need (shooter, bow, damage, fire) and the flight vector x10000
data modify storage wither:aim arrow set value {pickup:0b,Tags:["wArrowSeen","wArrowNew"]}
data modify storage wither:aim arrow.Owner set from entity @s Owner
data modify storage wither:aim arrow.weapon set from entity @s weapon
data modify storage wither:aim arrow.damage set from entity @s damage
data modify storage wither:aim arrow.Fire set from entity @s Fire
data modify storage wither:aim mot set from entity @s Motion
execute store result score #mx wither.scale run data get storage wither:aim mot[0] 10000
execute store result score #my wither.scale run data get storage wither:aim mot[1] 10000
execute store result score #mz wither.scale run data get storage wither:aim mot[2] 10000
scoreboard players set #cos wither.scale 9848
scoreboard players set #sin wither.scale 1736
scoreboard players set #k wither.scale 10000

# +10 degrees: x' = x*cos - z*sin, z' = x*sin + z*cos
scoreboard players operation #x wither.scale = #mx wither.scale
scoreboard players operation #x wither.scale *= #cos wither.scale
scoreboard players operation #t wither.scale = #mz wither.scale
scoreboard players operation #t wither.scale *= #sin wither.scale
scoreboard players operation #x wither.scale -= #t wither.scale
scoreboard players operation #z wither.scale = #mx wither.scale
scoreboard players operation #z wither.scale *= #sin wither.scale
scoreboard players operation #t wither.scale = #mz wither.scale
scoreboard players operation #t wither.scale *= #cos wither.scale
scoreboard players operation #z wither.scale += #t wither.scale
function wither:wither/passive/variants/archer_arrow_spawn

# -10 degrees: x' = x*cos + z*sin, z' = z*cos - x*sin
scoreboard players operation #x wither.scale = #mx wither.scale
scoreboard players operation #x wither.scale *= #cos wither.scale
scoreboard players operation #t wither.scale = #mz wither.scale
scoreboard players operation #t wither.scale *= #sin wither.scale
scoreboard players operation #x wither.scale += #t wither.scale
scoreboard players operation #z wither.scale = #mz wither.scale
scoreboard players operation #z wither.scale *= #cos wither.scale
scoreboard players operation #t wither.scale = #mx wither.scale
scoreboard players operation #t wither.scale *= #sin wither.scale
scoreboard players operation #z wither.scale -= #t wither.scale
function wither:wither/passive/variants/archer_arrow_spawn
