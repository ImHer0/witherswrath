# Disabled -> Enabled
execute if data storage wither:options {togglescaling:"Disabled"} run return run function wither:wither/toggle/tscalingon

# Enabled -> Disabled
execute if data storage wither:options {togglescaling:"Enabled"} run return run function wither:wither/toggle/tscalingoff
