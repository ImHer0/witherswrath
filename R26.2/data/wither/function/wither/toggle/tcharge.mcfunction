# Disabled -> Enabled
execute if data storage wither:options {togglecharge:"Disabled"} run return run function wither:wither/toggle/tchargeon

# Enabled -> Disabled
execute if data storage wither:options {togglecharge:"Enabled"} run return run function wither:wither/toggle/tchargeoff
