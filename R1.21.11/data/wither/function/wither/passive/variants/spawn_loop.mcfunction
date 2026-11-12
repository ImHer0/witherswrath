# Ran as/at the Wither: spawns #spawns random skeleton variants
execute if score #spawns wither.scale matches ..0 run return 0

# Bedrock mode keeps to the vanilla Wither Skeleton
execute if data storage wither:options {toggleanimation:Bedrock} run function wither:wither/passive/variants/plain
execute unless data storage wither:options {toggleanimation:Bedrock} run function wither:wither/passive/variants/pick
scoreboard players remove #spawns wither.scale 1

function wither:wither/passive/variants/spawn_loop
