scoreboard objectives add witherCount dummy
scoreboard players set witherCount witherCount 0
scoreboard objectives add checkHealth dummy
function wither:wither/safemode

execute unless data storage wither:options {initialized:1} run function wither:initialize_storage

