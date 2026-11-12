# Disabled -> Enabled
execute if data storage wither:options {togglehoming:"Disabled"} run return run function wither:wither/toggle/thomingon

# Enabled -> Disabled
execute if data storage wither:options {togglehoming:"Enabled"} run return run function wither:wither/toggle/thomingoff

