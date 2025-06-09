scoreboard objectives add witherCount dummy
scoreboard players set witherCount witherCount 0
scoreboard objectives add checkHealth dummy
scoreboard objectives add witherCheck dummy
function wither:wither/safemode


# prevents storage from being set if already initialized previously (saves current settings if any)
execute unless data storage wither:options {initialized:2} run function wither:initialize_storage

