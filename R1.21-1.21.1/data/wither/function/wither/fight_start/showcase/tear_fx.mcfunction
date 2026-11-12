# Macro: g, item. Debris bursting out of the ground where the block tore free
$execute positioned $(g) positioned ~ ~0.2 ~ run particle minecraft:block{block_state:"$(item)"} ~ ~ ~ 0.3 0.1 0.3 0.15 14 normal
$execute positioned $(g) positioned ~ ~0.2 ~ run particle minecraft:soul_fire_flame ~ ~ ~ 0.2 0.05 0.2 0.04 6 normal
$execute positioned $(g) run playsound minecraft:block.soul_soil.break hostile @a[distance=..48] ~ ~ ~ 1 0.6
# The block really comes out of the ground: break it (vanilla particles + sound, no drop since it's the one flying up).
# Only natural ground blocks ever match (never bedrock), and only with destruction on
$execute if data storage wither:options {toggledestruction:Enabled} positioned $(g) if block ~ ~-1 ~ $(item) run setblock ~ ~-1 ~ minecraft:air destroy
$execute if data storage wither:options {toggledestruction:Enabled} positioned $(g) unless block ~ ~-1 ~ $(item) if block ~ ~-2 ~ $(item) run setblock ~ ~-2 ~ minecraft:air destroy
$execute positioned $(g) run kill @e[type=minecraft:item,distance=..2.5]
