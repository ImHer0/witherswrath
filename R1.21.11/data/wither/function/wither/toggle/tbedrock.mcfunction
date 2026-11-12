# Bedrock -> Default
execute if data storage wither:options {toggleanimation:Bedrock} run return run function wither:wither/toggle/tbedrockoff

# Anything else -> Bedrock
data modify storage wither:options toggleanimation set value Bedrock
data modify storage wither:options toggleanimation_string set value '"#13e800"'
function wither:dialog/advanced
