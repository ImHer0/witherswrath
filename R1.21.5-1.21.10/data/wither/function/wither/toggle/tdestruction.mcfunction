# Disabled -> Enabled
execute if data storage wither:options {toggledestruction:"Disabled"} run return run function wither:wither/toggle/tdestructionon

# Enabled -> Disabled
execute if data storage wither:options {toggledestruction:"Enabled"} run return run function wither:wither/toggle/tdestructionoff
