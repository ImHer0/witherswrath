scoreboard objectives add witherCount dummy
scoreboard players set witherCount witherCount 0
scoreboard objectives add checkHealth dummy
scoreboard objectives add witherCheck dummy
function wither:wither/safemode

execute unless data storage wither:options {initialized:2} run function wither:initialize_storage

