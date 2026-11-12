# Disabled -> Enabled
execute if data storage wither:options {togglespawns:"Disabled"} run return run function wither:wither/toggle/tspawnson

# Enabled -> Disabled
execute if data storage wither:options {togglespawns:"Enabled"} run return run function wither:wither/toggle/tspawnsoff

