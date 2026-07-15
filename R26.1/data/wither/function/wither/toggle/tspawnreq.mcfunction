# Disabled -> Enabled
execute if data storage wither:options {spawnreq:"Disabled"} run return run function wither:wither/toggle/tspawnreqon

# Enabled -> Disabled
execute if data storage wither:options {spawnreq:"Enabled"} run return run function wither:wither/toggle/tspawnreqoff