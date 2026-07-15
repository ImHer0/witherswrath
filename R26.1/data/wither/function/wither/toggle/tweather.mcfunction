# Disabled -> Enabled
execute if data storage wither:options {toggleweather:"Disabled"} run return run function wither:wither/toggle/tweatheron

# Enabled -> Disabled
execute if data storage wither:options {toggleweather:"Enabled"} run return run function wither:wither/toggle/tweatheroff

