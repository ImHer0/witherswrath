# Disabled -> Enabled
execute if data storage wither:options {toggledash:"Disabled"} run return run function wither:wither/toggle/tdashon

# Enabled -> Disabled
execute if data storage wither:options {toggledash:"Enabled"} run return run function wither:wither/toggle/tdashoff
