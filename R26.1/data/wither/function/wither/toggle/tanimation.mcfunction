
# Disabled -> Bedrock
execute if data storage wither:options {toggleanimation:"Disabled"} run return run function wither:wither/toggle/tanimation2

# Default -> Disabled
execute if data storage wither:options {toggleanimation:"Default"} run return run function wither:wither/toggle/tanimationoff

# Bedrock -> Default
execute if data storage wither:options {toggleanimation:"Bedrock"} run return run function wither:wither/toggle/tanimation1


